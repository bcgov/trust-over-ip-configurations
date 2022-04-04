# Description: IDIM Issuer Profile - Using ephemeral queue
export SKIP_PIPELINE_PROCESSING=1

# Switched away from persistent queue implementation until it is more stable
# export include_templates="issuer-agent-pq-deploy issuer-wallet-deploy delivery-service-inbound-deploy delivery-service-outbound-deploy"

export include_templates="issuer-agent-deploy issuer-wallet-deploy"
export ignore_templates=""