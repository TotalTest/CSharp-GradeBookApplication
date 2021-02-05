$MyPat = '7zoj7msfjzews5kkjrwd3gu65i4ldvqmnr3d34tfrtvpvhqo7xqq'
$B64Pat = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes(":$MyPat"))
git -c http.extraHeader="Authorization: Basic $B64Pat" clone https://totaltestltd@dev.azure.com/totaltestltd/Total%20Test/_git/AtataPoc
git branch

#$urlvsts = "https://dev.azure.com/totaltestltd/Total%20Test/_apis/build/builds?api-version=6.1-preview.6"
#$token = "7zoj7msfjzews5kkjrwd3gu65i4ldvqmnr3d34tfrtvpvhqo7xqq"
#$encodedPat = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes( ":$token"))
##$body = '{ 
##        "definition": {
##            "id": "7"
##        },
##        "sourceBranch": "main",
##        "reason": "individualCI",
##        "templateParameters": {
##            "AnotherParameter": "new"
##        }
##}'
#
#$body = '{ "definition": { "id": "7" }, "sourceBranch": "main", "reason": "individualCI", "templateParameters": { "AnotherParameter": "new" } }'
#
#Invoke-WebRequest $urlvsts -Method Post -Headers @{Authorization = "Basic $encodedPat"} -Body $body -ContentType "application/json" -UseBasicParsing