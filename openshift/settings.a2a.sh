# Description: Credential issuer profile
export PROJECT_NAMESPACE="a99fd4"
export SKIP_PIPELINE_PROCESSING=1
# this assumes that the agent, api, admin and web builds are available from Essential Serives Delivery
export include_templates="issuer-agent-deploy issuer-api-deploy issuer-web-deploy issuer-admin-deploy"
export ignore_templates=""