# Repos Updater

Update a single file accross multiple GitHub repos

_Use cases_: CI config files, PR templates, any file that a list of repos have in common

## Usage

**1**. Make sure [your PAT token](https://github.com/settings/tokens/new) has full `repo` scoped access to the repos you want to update

**2**. Create a `update.config` file, like `updater.config.example`:
   - `TOKEN`: GitHub Personal Access Token, for checking repos existence
   - `AUTHOR`: GitHub author username
   - `NEW_FILE_PATH`: New file name with path, relative to this `./`
   - `FILE_PATH`: File name with path, relative to updated project `./`
   - `BRANCH`: GitHub branch name to create with file update
   - `COMMIT_MESSAGE`: GitHub commit message text
   - `REPOS`: Repositories to update, separated by comma
  
Example:

```
TOKEN="blablabla123"
AUTHOR="g1stavo"
NEW_FILE_PATH="README.md"
FILE_PATH="README.md"
BRANCH="chore/update-readme"
COMMIT_MESSAGE="chore: update README.md"
REPOS="cool-repo,another-cool-repo"
```
   
**3**. Run the script

```shell
chmod +x run.sh && ./run.sh
```