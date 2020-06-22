node {
    checkout scm
    docker.image('selenium/standalone-chrome:3.141.59-20200525').withRun('-d -p 4444:4444 -p 59000:59000 -v /dev/shm:/dev/shm --name selenium') { c ->
        docker.image('ruby').inside("--link ${c.id}:selenium") {
            
            sh 'bundle install'
            
            try{
                sh 'bundle exec cucumber -p ci'
            } finally {
                cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'reports', sortingMethod: 'ALPHABETICAL'
            }
                                  
        }
    }
}