## UpdatePriceTier.json 

Deploy this template at the Subscription level to switch to Standard Price model.

#### Deploy with Az PowerShell

` New-AzDeployment -TemplateFile .\UpdatePriceTier.json -Location westus `

#### Deploy with Az CLI
` az deployment create --template-file UpdatePriceTier.json --location westus ` 
