# Salesforce CI/CD Project:

This repository contains the source code for a custom Salesforce CI/CD process example using Github Actions combining:
 - [Pablo Gonzales ideias](https://www.pablogonzalez.io/)
 - [sfdx-hardis](https://sfdx-hardis.cloudity.com/)

## Workflow Overview:

- When a PR is created from a feature branch to the main branch the [pr-validation.yml](https://github.com/gustavozbulhoes/sfdxHardis/blob/main/.github/workflows/pr-validation.yml) workflow runs. It analyzes the feature branch running the [Salesforce Code Analyzer](https://developer.salesforce.com/docs/platform/salesforce-code-analyzer/overview) and simulates the Salesforce deployment (check deploy) running the tests specified in the PR body. The quick deploy Id is saved in the PR Status result comment (see screenshot) and the alerts are available under actions result.
![plot](./publicPictures/sfdx-hardis-QuickDeploy.png)
- When the PR is merged the [pr-deploy.yml](https://github.com/gustavozbulhoes/sfdxHardis/blob/main/.github/workflows/pr-deploy.yml) workflow runs deploying it to production by executing the Quick Deploy (if available) or the standard deploy respecting selected tests (if quick deploy is not available).
- The pr-validation and pr-deploy workflow logics are similar, both use Node.js to read the tests to run from PR body based on [this article](https://www.salesforceben.com/build-your-own-ci-cd-pipeline-in-salesforce-using-github-actions/). After that, the validation or deploy is executed using [sfdx-hardis](https://sfdx-hardis.cloudity.com/) plugin (Quick Deploy feature).
- Destructives are simulated and deployed as an exclusive async destructive package and the destructive deploy Id is available in the action history (see result details in Salesforce>Setup>Deployment Status).
