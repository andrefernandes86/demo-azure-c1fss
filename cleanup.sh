clear
echo '------------------------------------------------------------------------------'
echo ' Listing the content of the StorageAccounts '$StorageAccountNameB' and '$StorageAccountNameC
echo '------------------------------------------------------------------------------'
echo ' STORAGE ACCOUNT: ' $StorageAccountNameA
echo ' CONTAINER: '$ContainerNameA
az storage blob list \
    --account-name $StorageAccountNameA \
    --container-name $ContainerNameA \
    --output table \
    --auth-mode key
echo ' '
echo '------------------------------------------------------------------------------'
echo ' STORAGE ACCOUNT: ' $StorageAccountNameB
echo ' CONTAINER: '$ContainerNameB
az storage blob list \
    --account-name $StorageAccountNameB \
    --container-name $ContainerNameB \
    --output table \
    --auth-mode key
echo ' '
echo '------------------------------------------------------------------------------'
echo ' STORAGE ACCOUNT: ' $StorageAccountNameC
echo ' CONTAINER: '$ContainerNameC
az storage blob list \
    --account-name $StorageAccountNameC \
    --container-name $ContainerNameC \
    --output table \
    --auth-mode key
echo ' '
echo '------------------------------------------------------------------------------'
sleep 5
clear
echo ' --------------------------------------- '
echo '        Removing the old data...         '
az storage blob delete -c files -n document.txt --account-name $StorageAccountNameB
az storage blob delete -c files -n eicar.com --account-name $StorageAccountNameC
echo ' --------------------------------------- '
sleep 5
clear
echo '------------------------------------------------------------------------------'
echo ' Listing the content of the StorageAccounts '$StorageAccountNameB' and '$StorageAccountNameC
echo '------------------------------------------------------------------------------'
echo ' STORAGE ACCOUNT: ' $StorageAccountNameA
echo ' CONTAINER: '$ContainerNameA
az storage blob list \
    --account-name $StorageAccountNameA \
    --container-name $ContainerNameA \
    --output table \
    --auth-mode key
echo ' '
echo '------------------------------------------------------------------------------'
echo ' STORAGE ACCOUNT: ' $StorageAccountNameB
echo ' CONTAINER: '$ContainerNameB
az storage blob list \
    --account-name $StorageAccountNameB \
    --container-name $ContainerNameB \
    --output table \
    --auth-mode key
echo ' '
echo '------------------------------------------------------------------------------'
echo ' STORAGE ACCOUNT: ' $StorageAccountNameC
echo ' CONTAINER: '$ContainerNameC
az storage blob list \
    --account-name $StorageAccountNameC \
    --container-name $ContainerNameC \
    --output table \
    --auth-mode key
echo ' '
echo '------------------------------------------------------------------------------'
