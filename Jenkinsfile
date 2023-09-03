
// Jenkinsfile (Declarative Pipeline)
pipeline  {
	agent any	// agent any means run this pipeline on any available agent
	// agent{
	// 	docker{
	// 		image 'maven:3.6.3'
	// 	}
	// }
    environment {
        dockerhome = tool 'myDocker'
        mavenhome = tool 'myMaven'
        PATH = "$dockerhome/bin:$mavenhome/bin:$PATH"
    }
	stages{
		stage('Checkout') {
			steps {
                sh 'docker version'
                sh 'mvn --version'
				echo "$PATH"
                echo "BUILD_NUMBER - $env.BUILD_NUMBER"
                echo "BUILD_ID - $env.BUILD_ID"
                echo "BUILD_URL - $env.BUILD_URL"
                echo "JOB_NAME - $env.JOB_NAME"
                echo "BUILD_TAG - $env.BUILD_TAG"
				echo "Build"
			}
		}
		stage('Compile') {
			steps {
				sh "mvn clean compile"
			}
		}
        stage('Test'){
            steps{
                sh "mvn test"
            }
        }
        stage("Integration Test"){
            steps{
                sh "mvn failsafe:integration-test failsafe:verify"
            }
        }
        stage("Package"){
            steps{
                sh "mvn package -DskipTests=true"
            }
        }
        stage("Build Docker Image"){
            steps{
               script{
                   dockerImage = docker.build("bougarrani/${env.JOB_NAME}:${env.BUILD_NUMBER}")
               }
            }
        }
        stage("Push Docker Image"){
            steps{
                script{
                    docker.withRegistry('', 'dockerhub') {
                        dockerImage.push()
                        dockerImage.push("latest")
                    }
                }
            }
        }
		

	}
	post{
		always{
			echo "Post"
		}
		success{
			echo "Success"
		}
		failure{
			echo "Failure"
		}
		// changed, fixed, regression, aborted, success, unstable, failure, or any
	}
	
}

