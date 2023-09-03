
// Jenkinsfile (Declarative Pipeline)
pipeline  {
	agent any	// agent any means run this pipeline on any available agent
	// agent{
	// 	docker{
	// 		image 'maven:3.6.3'
	// 	}
	// }
	stages{
		stage('Build') {
			steps {
				echo "$PATH"
                echo "BUILD_NUMBER - $env.BUILD_NUMBER"
                echo "BUILD_ID - $env.BUILD_ID"
                echo "BUILD_URL - $env.BUILD_URL"
                echo "JOB_NAME - $env.JOB_NAME"
                echo "BUILD_TAG - $env.BUILD_TAG"
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

