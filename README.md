<h2>Continuous Deployment (CD) Pipeline Report</h2>



Components of the Solution:

GitHub Actions: GitHub Actions is a powerful workflow automation tool provided by GitHub. It allows you to define custom workflows for your repositories. In this solution, GitHub Actions is used to automate the deployment process. It triggers the workflow when code is pushed to the repository, runs tests using Pytest, and if the tests pass, executes commands to update the code on the server.

Bash Scripts: Bash scripting is utilized to create a deployment script that is executed by GitHub Actions. The script contains commands to pull the latest code from the repository, restart the application, and verify its status. It helps automate the deployment process and ensures that the latest version of the code is deployed.

Digital Ocean: Digital Ocean is a cloud infrastructure provider that offers virtual private servers (VPS). In this solution, a VPS running a Flask application is used as the deployment target. The server can be provisioned and accessed using Digital Ocean's platform. It provides the environment where the code is deployed and executed.

<hr>

Problems Encountered and Solutions:

SSH Authentication: One challenge was setting up SSH authentication between GitHub Actions and the VPS. The solution involved generating an SSH key pair, adding the public key as a deploy key on the GitHub repository, and securely storing the private key as an encrypted secret in GitHub Actions.

Testing Setup: Configuring the testing environment and running tests within the GitHub Actions workflow required some initial setup. Pytest was used as the testing framework, and the workflow was configured to install the necessary dependencies and execute the tests.

Deployment Script: Developing the deployment script involved considering the specific commands required to update the code and restart the Flask application. The script was tested locally to ensure its correctness and then incorporated into the GitHub Actions workflow. The script's output and the application's status were verified to ensure a successful deployment.



Note about the Process:

Implementing a continuous deployment pipeline using GitHub Actions provided a streamlined approach to automating code deployments. It enabled frequent updates to the deployed application, ensuring the latest features and bug fixes reached the end-users quickly. The combination of version control with Git, automated testing with GitHub Actions, and the deployment capabilities of Digital Ocean created a robust and efficient workflow.

By utilizing SSH keys, secrets management, and scripting, the deployment process was made more secure and automated. However, it's important to note that in production scenarios, it is recommended to follow best practices and limit the access of continuous deployment pipelines to the server.

Overall, this assignment highlighted the importance of continuous deployment and how it can be achieved using popular tools and services. It provided hands-on experience in setting up a continuous deployment pipeline and integrating various components to create a seamless deployment workflow.
