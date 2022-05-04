# demo-azure-c1fss
 
-------------
Requirements:
-------------
__Azure_Requirements: Create 3 StorageAccounts (BaseDirectory, MaliciousFiles, NormalFiles) and integrate with C1FSS (including Post-Scan Actions, moving the malicious files to the :MaliciousFiles: StorageAccount, and the normal files to the :NormalFiles: StorageAccount

__C1_Requirements: Deploy the C1FSS following the documentation available on: https://cloudone.trendmicro.com/docs/file-storage-security/gs-deploy-all-in-one-stack-azure/. Integrate with the Azure infrastructure created as part of this demo (BaseDirectory, MaliciousFiles and NormalFiles StorageAccount).

__Client_Requirements: Create a docker container using the Dockerfile available on this repo.

------------
Demo
------------
Using the Docker Container..

1_ Clone this Repositoty "git clone .."

2_ Build a new docker image using the Dockerfile as a reference "docker build -t c1fss-azure ."

3_ Run the new container and follow the activation steps "docker run -it c1fss-azure bash"

3.1_ After getting access to the container, authenticate in your Azure Account (link and auth code available on the docker container).

4_ After you authenticate in your Azure Account, the Docker container will prompt you with some options that can be used to demonstrate different scenarios

5_ These are the options available:

5.1 - 1_ Preparing the demo environment.. (This option will check the prompt you to confirm the StorageAccount Names you've created for this demo and will check if these directories are ready (no files). If the script finds any file, they will be deleted)

5.2 - 2_ Checking the demo environment.. (This option can be used to check the status of all StorageAccounts. It will list any file available on each StorageAccount)

5.3 - 3_ Uploading a malicious file (eicar.com) to a Azure Blob Storage (As the name says, this option will simulate a malicious file being uploaded to the BaseDirectory StorageAccount. It's expected that this file will be moved to the MaliciousFile StorageAccount after a few seconds. You can use the option "5" to check the results and if/when the malicious file is moved to the MaliciousFile StorageAccount)

5.4 - 4_ Uploading a normal file (document.txt) to a Azure Blob Storage (As the name says, this option will simulate a normal file being uploaded to the BaseDirectory StorageAccount. It's expected that this file will be moved to the NormalFile StorageAccount after a few seconds. You can use the option "5" to check the results and if/when the normal file is moved to the NormalFile StorageAccount)

5.5 - 5_ Checking the results (Post-Scan Action) (This option can be used to check the status of all StorageAccounts. It will list any file available on each StorageAccount)

5.6 - 6_ Exit from menu (This option will cleanup the demo environment, making the environment ready for the next demo).

