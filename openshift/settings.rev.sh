# Description: vc-authn-tmp controller/agent - required until revocation is sorted out
export SKIP_PIPELINE_PROCESSING=1
export include_templates="controller-rev-build controller-rev-deploy agent-rev-deploy"
export ignore_templates=""