#$env:GIT_REDIRECT_STDERR = '2>&1'
echo git config --global user.email "prab@totaltestltd.co.uk"
echo git config --global user.name "Prab"
echo git clone https://prab:$($env:git_creds)@totaltestltd.visualstudio.com/SampleProject/_git/SampleProject C:\projects\atata -q
echo git remote remove origin
echo git remote add origin https://prab:$($env:git_creds)@totaltestltd.visualstudio.com/SampleProject/_git/SampleProject
echo cd C:\projects\atata
echo git branch -q
echo git checkout -b testg -q
echo git push -q --set-upstream origin testg


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