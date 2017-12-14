job('smoke-webapp') {
    scm {
        github('alvarolmedo/TFG-webapp', 'master')
    }
    steps {
        shell("./smoke.sh")
    }
}