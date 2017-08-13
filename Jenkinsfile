node {
    
git credentialsId: 'Susritha_Github', url: 'https://github.com/SusrithaMunukutla/terraform.git'
withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'aws_access_key'), string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'aws_secret_key'), string(credentialsId: 'nexus_nuget_api_key', variable: 'api_key')]) {
stage 'test'
        parallel (
            phase1: { bat "echo p1; sleep 20s; echo phase1" },
            phase2: { bat "echo p2; sleep 40s; echo phase2" }
        )
stage name: 'plan', concurrency: 1
        bat "terraform plan --out plan"
}
