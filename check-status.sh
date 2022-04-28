clear
echo '-----------------------------------------'
echo ' Cloud One File Storage Security (Azure) '
echo '-----------------------------------------'
echo ' '
echo ' - Indicate the StorageAccountName used in your demo. '
read StorageAccountNameA 
echo ' ' 
echo ' - Indicate the ContainerName used to upload files '
read ContainerNameA
echo ' ' 
echo ' '
echo ' - Indicate the StorageAccountName used to send the malicious files detected by C1FSS. '
read StorageAccountNameB
echo ' ' 
echo ' - Indicate the ContainerName used to upload files '
read ContainerNameB
echo ' ' 
echo ' '
echo ' - Indicate the StorageAccountName used to send the safe files. '
read StorageAccountNameC
echo ' ' 
echo ' - Indicate the ContainerName used to upload files '
read ContainerNameC
echo ' ' 
echo ' '
echo ' STORAGE ACCOUNT: ' $StorageAccountA
echo ' CONTAINER: ' $ContainerNameA 
az storage blob list \
    --account-name $StorageAccountNameA \
    --container-name $ContainerNameA \
    --output table \
    --auth-mode key
echo ' '
echo ' '
echo '-----------------------------------------'
echo ' '
echo ' STORAGE ACCOUNT: ' $StorageAccountB
echo ' CONTAINER: ' $ContainerNameB
az storage blob list \
    --account-name $StorageAccountNameB \
    --container-name $ContainerNameB \
    --output table \
    --auth-mode key
echo ' '
echo ' '
echo '-----------------------------------------'
echo ' '
echo ' STORAGE ACCOUNT: ' $StorageAccountC
echo ' CONTAINER: ' $ContainerNameC
az storage blob list \
    --account-name $StorageAccountNameC \
    --container-name $ContainerNameC \
    --output table \
    --auth-mode key
echo ' '
echo ' '
echo '-----------------------------------------'
