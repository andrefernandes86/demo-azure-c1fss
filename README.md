# demo-azure-c1fss
 
-------------
Requirements:
-------------
__C1_Requirements: Deploy the C1FSS following the documentation available on: https://cloudone.trendmicro.com/docs/file-storage-security/gs-deploy-all-in-one-stack-azure/

__Azure_Requirements: Create 3 StorageAccounts (BaseDirectory, MaliciousFiles, NormalFiles) and integrate with C1FSS (including Post-Scan Actions, moving the malicious files to the MaliciousFiles StorageAccount, and the normal files to the NormalFiles StorageAccount

__Client_Requirements: Create a docker container with Azure-CLI, WGET, CURL and TOUCH installed and configured

------------
Demo
------------
Using the Docker Container..

1_ Execute the script "c1fss-azure.sh" and follow the instructions;

2_ Use the options 1 to prepare the demo environment. This command will check if the StorageAccounts are accessible and ready for the tests;

3_ Use the option 3 to simulate a malicious file being uploaded to the BaseDirectory StorageAccount;

4_ Check (maybe n times) the Post-Scan Actions result, using the option 5. It should demonstrate the malicious files being moved from BaseDirectory to the MaliciousFiles StorageAccount;

5_ Use the option 4 to simulate a normal file being uploaded to the BaseDirectory StorageAccount;

6_ Check (maybe n times) the Post-Scan Actions result, using the option 5. It should demonstrate the malicious files being moved from BaseDirectory to the NormalFiles StorageAccount;

7_ Use the option 7 to Exit and cleanup all the changes done during the tests.
