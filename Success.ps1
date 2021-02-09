$env:GIT_REDIRECT_STDERR = '2>&1'

git config --global user.email $($env:APPVEYOR_REPO_COMMIT_AUTHOR_EMAIL)
git config --global user.name $($env:APPVEYOR_REPO_COMMIT_AUTHOR)

#git clone https://dev:$($env:git_creds)@totaltestltd.visualstudio.com/SampleProject/_git/SampleProject C:\projects\atata
git clone --branch=testi https://dev:$($env:git_creds)@dev.azure.com/totaltestltd/SampleProject/_git/SampleProject C:\projects\atata

git remote remove origin
#git remote add origin https://totaltestltd@totaltestltd.visualstudio.com/SampleProject/_git/SampleProject
git remote add origin https://totaltestltd@dev.azure.com/totaltestltd/SampleProject/_git/SampleProject

cd C:\projects\atata

git branch
git checkout -b testo
git push -u origin testo

if ($LASTEXITCODE -ne 0)  { 
       Write-Host -ForegroundColor Yellow 'LASTEXITCODE=' $LASTEXITCODE;
       exit $LASTEXITCODE 
  }

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