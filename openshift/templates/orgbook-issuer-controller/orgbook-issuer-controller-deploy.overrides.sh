_includeFile=$(type -p overrides.inc)
if [ ! -z ${_includeFile} ]; then
  . ${_includeFile}
else
  _red='\033[0;31m'; _yellow='\033[1;33m'; _nc='\033[0m'; echo -e \\n"${_red}overrides.inc could not be found on the path.${_nc}\n${_yellow}Please ensure the openshift-developer-tools are installed on and registered on your path.${_nc}\n${_yellow}https://github.com/BCDevOps/openshift-developer-tools${_nc}"; exit 1;
fi

OUTPUT_FORMAT=json

# Generate application config map
# - To include all of the files in the application instance's profile directory.
# Injected by genDepls.sh
# - CONFIG_MAP_NAME
# - SUFFIX
# - DEPLOYMENT_ENV_NAME

# Combine the profile's default config files with its environment specific config files before generating the config map ...
profileRoot=$( dirname "$0" )/config/${PROFILE}
profileTmp=$( dirname "$0" )/config/${PROFILE}/tmp
mkdir -p ${profileTmp}
cp -f ${profileRoot}/* ${profileTmp} 2>/dev/null

# Generate the config map ...
CONFIG_SOURCE_PATH=${profileTmp}
CONFIG_OUTPUT_FILE=${CONFIG_MAP_NAME}-configmap_DeploymentConfig.json
printStatusMsg "Generating ConfigMap; ${CONFIG_MAP_NAME} ..."
generateConfigMap "${CONFIG_MAP_NAME}${SUFFIX}" "${CONFIG_SOURCE_PATH}" "${OUTPUT_FORMAT}" "${CONFIG_OUTPUT_FILE}"

# Remove temporary configuration directory and files ....
rm -rf ${profileTmp}

unset SPECIALDEPLOYPARMS

# ======================================================
# Special Deployment Parameters needed for Deployment
# ------------------------------------------------------
# The results need to be encoded as OpenShift template
# parameters for use with oc process.
# ======================================================

if createOperation; then
  readParameter "CR_AGENT_ADMIN_URL - Please provide the URL for the credential registry admin api.\nThe default is an empty string:" CR_AGENT_ADMIN_URL "" "false"
  readParameter "CR_ADMIN_API_KEY - Please provide the key for the credential registry admin api.\nThe default is an empty string:" CR_ADMIN_API_KEY "" "false"
else
  # Secrets are removed from the configurations during update operations ...
  printStatusMsg "Update operation detected ...\nSkipping the prompts for the CR_AGENT_ADMIN_URL, and CR_ADMIN_API_KEY secrets ...\n"
  # Prompted
  writeParameter "CR_AGENT_ADMIN_URL" "generation_skipped" "false"
  writeParameter "CR_ADMIN_API_KEY" "generation_skipped" "false"
fi

SPECIALDEPLOYPARMS="--param-file=${_overrideParamFile}"
echo ${SPECIALDEPLOYPARMS}