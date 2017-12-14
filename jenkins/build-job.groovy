job('build-webapp') {
    scm {
        github('alvarolmedo/TFG-webapp', 'master')
    }
    steps {
        shell("./build.sh")
    }
    //Call to deploy job
}