node {
    
stage 'checkout'
        checkout scm
stage 'test'
        parallel (
            phase1: { bat "echo p1; sleep 20s; echo phase1" },
            phase2: { bat "echo p2; sleep 40s; echo phase2" }
        )
 stage name: 'validate' ,concurrency:1
    bat "terraform validate -check-variables=true -no-color"
    
stage name: 'plan', concurrency: 1
        bat "terraform plan --out plan"
}

