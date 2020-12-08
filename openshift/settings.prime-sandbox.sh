# Description: Prime Health sandbox profile for pipeline/development
export SKIP_PIPELINE_PROCESSING=1
export include_templates="issuer-agent-deploy"
export ignore_templates=""

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# Override the DEV, TEST deployment environment
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
export TEST="dev"
export PROD="dev"