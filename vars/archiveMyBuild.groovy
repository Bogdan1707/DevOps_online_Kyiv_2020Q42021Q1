def call(){
    sh 'sudo zip target/master-demo-app-${OWNER}-${BUILD_NUMBER}.zip target/*.jar'
    archiveArtifacts artifacts: 'target/*.zip', fingerprint: true
    echo 'Archived successful'
}