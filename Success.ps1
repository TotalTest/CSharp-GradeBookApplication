$env:ErrorActionPreference = "Stop"
$env:GIT_REDIRECT_STDERR = '2>&1'
git config --global user.email "prab@totaltestltd.co.uk"
git config --global user.name "Prab"
#git clone https://prab:$($env:git_creds)@totaltestltd.visualstudio.com/SampleProject/_git/SampleProject C:\projects\atata
git clone https://totaltestltd@dev.azure.com/totaltestltd/SampleProject/_git/SampleProject C:\projects\atata
git remote remove origin
git remote add origin https://prab:$($env:git_creds)@totaltestltd.visualstudio.com/SampleProject/_git/SampleProject
cd C:\projects\atata
git branch
git checkout -b testh
git push -u origin testh
#git push --set-upstream origin testg

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