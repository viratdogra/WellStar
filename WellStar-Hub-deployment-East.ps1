#Change the name of the Resource group below, and in the parameters file.
$Locate = "East US 2"
$RGNameProd = "RG-NetworkHUB-Prod"
$HubFile = "C:\Users\virat\Desktop\Mednax templates\Wellstar-HubTemplate-East.json"
$HubParameterFile = "C:\Users\virat\Desktop\Mednax templates\Wellstar-East-Hub-Parameters.json"

New-AzResourceGroup -Name $RGNameProd -Location $Locate -Tag @{"Business Service"= "Infrastructure"; "Business Unit"="IT"; "Compliance" = "N/A"; "Cost Center" = "N/A"; Environment="PROD"; Owner ="Network Team"}
New-AzResourceGroupDeployment -ResourceGroupName $RGNameProd -TemplateParameterFile $HubParameterFile -TemplateFile $HubFile -Debug