import hudson.model.*;
import jenkins.model.*;
import hudson.tools.*;
import hudson.util.Secret;

// Check if enabled
def env = System.getenv()
if (!env['ADOP_SMTP_ENABLED'].toBoolean()) {
    println "--> SMTP configuration is disabled."
    return
}

// Variables
def SystemAdminMailAddress = env['bfedorov@gmail.com']
def SMTPUser = env['bohdan']
def SMTPPassword = env['123321']
def SMTPPort = env['256']
def SMTPHost = env['smtp.bohdan.com']

// Constants
def instance = Jenkins.getInstance()
def mailServer = instance.getDescriptor("hudson.tasks.Mailer")
def jenkinsLocationConfiguration = JenkinsLocationConfiguration.get()
def extmailServer = instance.getDescriptor("hudson.plugins.emailext.ExtendedEmailPublisher")

Thread.start {
    sleep 10000

        //Jenkins Location
        println "--> Configuring JenkinsLocation"
        jenkinsLocationConfiguration.setAdminAddress(SystemAdminMailAddress)
        jenkinsLocationConfiguration.save()

        //E-mail Server
        mailServer.setSmtpAuth(SMTPUser, SMTPPassword)
        mailServer.setSmtpHost(SMTPHost)
        mailServer.setSmtpPort(SMTPPort)
        mailServer.setCharset("UTF-8")

        //Extended-Email
        extmailServer.smtpAuthUsername=SMTPUser
        extmailServer.smtpAuthPassword=Secret.fromString(SMTPPassword)
        extmailServer.smtpHost=SMTPHost
        extmailServer.smtpPort=SMTPPort
        extmailServer.charset="UTF-8"
        extmailServer.defaultSubject="\$PROJECT_NAME - Build # \$BUILD_NUMBER - \$BUILD_STATUS!"
        extmailServer.defaultBody="\$PROJECT_NAME - Build # \$BUILD_NUMBER - \$BUILD_STATUS:\n\nCheck console output at \$BUILD_URL to view the results."

    // Save the state
    instance.save()
} 