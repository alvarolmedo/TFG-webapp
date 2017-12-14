job('deploy-webapp') {
    scm {
        github('alvarolmedo/TFG-webapp', 'master')
    }
    steps {
        shell("./deploy.sh")
    }
    //Call to smoke job
}