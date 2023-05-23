# Code
Repo for <blah> scripts and code. Please take note of the guidelines and make use of it accordingly.  

## coding Guidelines
We need guidelines for us to have a uniform way of coding.

* Recommended scripting language is Powershell.
* Use versioning in a script. State your name and date with each change.
* Visual Studio Code is the editor of choice. It's built-in to Github.
* Every script needs a Readme with information about the prurpose of the script and how to use it 
* If additional modules are nescesary please state so in the readme
* Write powershell commands in full for readability. For example state "get-childitem" and not "gci"
* Keep scripts readable. Avoid long oneliners. Use identation correctly. Use Brace style.
* Commment scripts, but not too much. Again, keep it readable.
* All variable information need to be declared on top of the script. However, named parameters are the prefered method of stating them.
* Name variables in scripts that would make sense for someone else. For example use $users for accounts, not $u
* Name cmdlets/Functions to standards. Use only approved verbs and singular nouns. For example state "get-clientuser", not "Gather-accounts"
* Do not use accounts for scheduled scripts in Azure/M365. Use registered application with API rights
* Use certificates for authenticating to a registered application. Not secrets.

## Posting Guidelines
Store client specific scripts under the client name. General scripts are stored in the <blah> folder. Create a folder for each set of scripts with a name that would make sense for everyone else. 
If you post a script you are responsible for maintaining it. Environments are not static. If you adapt anyone elses script, please be considerate and inform the creator.

Keep it clean. 