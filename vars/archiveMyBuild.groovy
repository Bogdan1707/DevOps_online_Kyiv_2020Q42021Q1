def call(){
    sh 'sudo zip target/main-demo-app-${OWNER}-${BUILD_NUMBER}.zip target/*.jar'
    archiveArtifacts artifacts: 'target/*.zip', fingerprint: true
    echo 'Archived successful'
}