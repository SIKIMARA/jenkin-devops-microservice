
// Jenkinsfile (Declarative Pipeline)
pipeline  {
	//agent any	// agent any means run this pipeline on any available agent
	agent{
		docker{
			image 'maven:3.6.3'
		}
	}
	stages{
		stage('Build') {
			steps {
				sh "mvn --version"
				echo "Build"
			}
		}
		stage('Test') {
			steps {
				echo "Test"
			}
		}
		stage('Integration Test') {
			steps {
				echo "Integration Test"
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
