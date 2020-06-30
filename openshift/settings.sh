# Description: The "main" build configuration and vc-authn-oidc deployment profile
export PROJECT_NAMESPACE="nnfbch"
export GIT_URI="https://github.com/bcgov/a2a-trust-over-ip-configurations.git"
export GIT_REF="master"

export skip_git_overrides="agent-build.json controller-build.json database-build.json backup-build.json api-build.json db-build.json wallet-build.json issuer-web-base-build.json issuer-web-build.json tails-server-build.json visual-verifier-build.json"

export ignore_templates="issuer-agent-deploy issuer-api-deploy issuer-db-deploy issuer-web-deploy issuer-wallet-deploy tails-server-deploy visual-verifier-deploy"