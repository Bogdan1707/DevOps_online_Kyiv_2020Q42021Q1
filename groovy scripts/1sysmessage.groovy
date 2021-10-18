import jenkins.model.Jenkins

def systemMessage = "Hello, Here is system message from Bohdan and Jenkins"

Jenkins jenkins = Jenkins.getInstance()
jenkins.setSystemMessage(systemMessage)
jenkins.save()