[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Lifecycle:Stable](https://img.shields.io/badge/Lifecycle-Stable-97ca00)](https://github.com/bcgov/repomountie/blob/master/doc/lifecycle-badges.md)

# Trust Over IP Configurations

This repository contains the [openshift-developer-tools](https://github.com/BCDevOps/openshift-developer-tools/tree/master/bin) compatible OpenShift configurations to customize the builds and deployments of [vc-authn-oidc](https://github.com/bcgov/vc-authn-oidc) for use with the Trust Over IP project.

For information on how to use these configurations with the `openshift-developer-tools scripts` please refer to the documentation; [README.md](https://github.com/BCDevOps/openshift-developer-tools/blob/master/bin/README.md).  

|Name|Purpose|Configuration|Dev|Test|Prod|Notes|  
|---|---|---|---|---|---|---|
|Access to Audio||[Agent](openshift/templates/issuer-agent/issuer-agent-deploy.a2a.param)<br/> [Issuer-Admin](openshift/templates/issuer-admin/issuer-admin-deploy.a2a.param)<br/> [API](openshift/templates/issuer-api/issuer-api-deploy.a2a.param)<br/> [Issuer-Web](openshift/templates/issuer-web/issuer-web-deploy.a2a.param)|Agent: https://a2a-agent-dev.apps.silver.devops.gov.bc.ca/<br/> Agent-Admin: https://a2a-agent-admin-dev.apps.silver.devops.gov.bc.ca/<br/> Issuer-Web: https://a2a-issuer-dev.apps.silver.devops.gov.bc.ca/<br/> Issuer-Admin: https://a2a-issuer-dev.apps.silver.devops.gov.bc.ca/|Agent: https://a2a-agent-test.apps.silver.devops.gov.bc.ca/<br/> Agent-Admin: https://a2a-agent-admin-test.apps.silver.devops.gov.bc.ca/<br/> Issuer-Web: https://a2a-issuer-test.apps.silver.devops.gov.bc.ca/<br/> Issuer-Admin: https://a2a-issuer-test.apps.silver.devops.gov.bc.ca/|||
|Access to Audio Non Rev||[Issuer-Web](openshift/templates/issuer-web/issuer-web-deploy.a2a-nonrev.param)|Issuer-Admin: https://a2a-nonrev-issuer-dev.apps.silver.devops.gov.bc.ca/|Issuer-Admin: https://a2a-nonrev-issuer-dev.apps.silver.devops.gov.bc.ca/|||
|IDIM-SIT||[Agent](openshift/templates/issuer-agent/issuer-agent-deploy.idim-sit.param)<br/> [Wallet](openshift/templates/issuer-wallet/issuer-wallet-deploy.idim-sit.param)|Agent-Admin: https://idim-sit-agent-admin-dev.apps.silver.devops.gov.bc.ca/<br/> Agent: https://idim-sit-agent-dev.apps.silver.devops.gov.bc.ca/||||
|IDIM||[Agent](openshift/templates/issuer-agent/issuer-agent-deploy.idim.param)<br/> [Wallet](openshift/templates/issuer-wallet/issuer-wallet-deploy.idim.param)|Agent-Admin: https://idim-agent-admin-dev.apps.silver.devops.gov.bc.ca/<br/> Agent: https://idim-agent-dev.apps.silver.devops.gov.bc.ca/||||
|Law Society BC||[Agent](openshift/templates/issuer-agent/issuer-agent-deploy.lsbc.param)<br/> [Wallet](openshift/templates/issuer-wallet/issuer-wallet-deploy.lsbc.param)|Agent-Admin: https://lsbc-agent-admin-dev.apps.silver.devops.gov.bc.ca/<br/> Agent: https://lsbc-agent-dev.apps.silver.devops.gov.bc.ca/|Agent-Admin: https://lsbc-agent-admin-test.apps.silver.devops.gov.bc.ca/<br/> Agent: https://lsbc-agent-test.apps.silver.devops.gov.bc.ca/|Agent-Admin: https://lsbc-agent-admin.apps.silver.devops.gov.bc.ca/<br/> Agent: https://lsbc-agent.apps.silver.devops.gov.bc.ca/||
|BCVCPilot||[Issuer-Admin](openshift/templates/issuer-admin/issuer-admin-deploy.bcvcpilot.param)<br/> [Issuer-Web](openshift/templates/issuer-web/issuer-web-deploy.bcvcpilot.param)<br/> [API](openshift/templates/issuer-api/issuer-api-deploy.bcvcpilot.param)<br/> [DB](openshift/templates/issuer-db/issuer-db-deploy.bcvcpilot.param)<br/> [Agent](openshift/templates/issuer-agent/issuer-agent-deploy.bcvcpilot.param)|Issuer-Admin: https://bcvcpilot-issuer-admin-dev.apps.silver.devops.gov.bc.ca/<br/> Issuer-Web: https://bcvcpilot-issuer-dev.apps.silver.devops.gov.bc.ca/<br/> Agent: https://bcvcpilot-agent-dev.apps.silver.devops.gov.bc.ca/<br/> Agent-Admin: https://bcvcpilot-agent-admin-dev.apps.silver.devops.gov.bc.ca/|Issuer-Admin: https://bcvcpilot-issuer-admin-test.apps.silver.devops.gov.bc.ca/<br/> Issuer-Web: https://bcvcpilot-issuer-test.apps.silver.devops.gov.bc.ca/<br/> Agent: https://bcvcpilot-agent-test.apps.silver.devops.gov.bc.ca/<br/> Agent-Admin: https://bcvcpilot-agent-admin-test.apps.silver.devops.gov.bc.ca/|Issuer-Admin: https://bcvcpilot-issuer-admin.vonx.io/<br/> Issuer-Web: https://bcvcpilot-issuer.vonx.io/<br/> Agent: https://bcvcpilot-agent.vonx.io/<br/> Agent-Admin: https://bcvcpilot-agent-admin.vonx.io||



## Getting Help or Reporting an Issue

To report bugs/issues/feature requests, please file an [issue](../../issues).

## How to Contribute

If you would like to contribute, please see our [CONTRIBUTING](./CONTRIBUTING.md) guidelines.

Please note that this project is released with a [Contributor Code of Conduct](./CODE_OF_CONDUCT.md). 
By participating in this project you agree to abide by its terms.