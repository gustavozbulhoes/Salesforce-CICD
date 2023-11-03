# SFDX Hardis project

This repository contains the source code for a custom CI/CD process for Salesforce using Github Actions combining:
 - [Pablo Gonzales ideias](https://www.pablogonzalez.io/)
 - [sfdx-hardis](https://sfdx-hardis.cloudity.com/)

## How does it works:

- When a PR is created from a feature branch to main branch the [pr-validation.yml](https://github.com/gustavozbulhoes/sfdxHardis/blob/main/.github/workflows/pr-validation.yml) workflow runs and validates the selected tests from the PR Body. If "all tests" is used, the quick deploy Id is saved in the PR Status result comment.
![plot](./publicPictures/sfdx-hardis-QuickDeploy.png)
- When the PR is merged the [pr-deploy.yml](https://github.com/gustavozbulhoes/sfdxHardis/blob/main/.github/workflows/pr-deploy.yml) workflow runs deploying it to production by executing the Quick Deploy (if available) or the common deploy (if quick deploy is not available).
IMG here
- The pr-validation and pre-deploy workflow logics are very similar, both use Node.js to read the tests to run from PR body based on [this article](https://www.pablogonzalez.io/.my-first-salesforce-cli-plugin-part-2-reading-files-from-an-sfdx-project-directory/). After that, the validation or deploy is done using [sfdx-hardis](https://sfdx-hardis.cloudity.com/) plugin because the Quick Deploy feature.