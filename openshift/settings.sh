# Description: The "main" build configuration and vc-authn-oidc deployment profile - Digital Trust Services Trust Over IP Environment
export PROJECT_NAMESPACE="e79518"
export GIT_URI="https://github.com/bcgov/trust-over-ip-configurations.git"
export GIT_REF="main"

export skip_git_overrides="agent-build.yaml controller-build.yaml database-build.yaml backup-build.yaml api-build.yaml db-build.yaml issuer-agent-build.yaml wallet-build.yaml issuer-web-base-build.yaml issuer-web-build.yaml tails-server-build.yaml visual-verifier-build.yaml delivery-service-inbound-build.yaml delivery-service-outbound-build.yaml orgbook-issuer-agent-build.yaml orgbook-issuer-controller-build.yaml"

export ignore_templates="issuer-agent-deploy issuer-api-deploy issuer-db-deploy issuer-admin-deploy issuer-web-deploy issuer-wallet-deploy tails-server-deploy visual-verifier-deploy"