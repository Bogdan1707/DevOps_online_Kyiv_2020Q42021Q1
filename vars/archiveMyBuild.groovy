def call(){
    sh 'sudo zip target/master-demo-app-${OWNER}-${BUILD_NUMBER}.zip'
    archiveArtifacts artifacts: 'target/*.zip', fingerprint: true
    echo 'Archived successful'
}