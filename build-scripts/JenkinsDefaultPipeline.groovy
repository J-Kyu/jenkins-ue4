def _BUILD_PATH = "D:\\jenkins_build_scripts\\jenkins-ue4-JWin64\\build-scripts"

pipeline {
    agent any

    stages {
        stage('Perfroce Sync') {
            steps(){
                echo 'Perforce Sync'
                p4sync( 
					credential: 'vr_build',
					format: 'jenkins-${NODE_NAME}-${JOB_NAME}-${EXECUTOR_NUMBER}',
					populate: syncOnly(
					    have: true,
					    quiet: true
					    ),
					source: streamSource('//VRBase/Amolang_Dev'
					) 
				)
            }

        }
        stage("Step1: Start Build"){
            steps(){
                dir("${_BUILD_PATH}"){
                    bat "Step1_StartBuild.bat"
                }
            }
        }
        stage("Step2: Compile Scripts"){
            steps(){
                dir("${_BUILD_PATH}"){
                    bat "Step2_CompileScripts.bat"
                }
            }
        }
        stage("Step3: BuildFiles"){
            steps(){
                dir("${_BUILD_PATH}"){
                    bat "Step3_BuildFiles.bat"
                }
            }
        }
        stage("Step4: Cook Project"){
            steps(){
                dir("${_BUILD_PATH}"){
                    bat "Step4_CookProject.bat"
                }
            }
        }
        stage("Step5: Archive"){
            steps(){
                dir("${_BUILD_PATH}"){
                    bat "Step5_Archive.bat"
                }
               
            }
        }
    }
    post{
        always{
            archiveArtifacts artifacts: 'VR_Multiplay\\Build\\WindowClient.tar', fingerprint: true
        }
    }
}
