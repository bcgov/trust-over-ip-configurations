void call(String imageName, String appName, String appPrefix, String appSuffix, String namespace, String envTag) {
  openshift.withCluster() {
    openshift.withProject() {

      echo "Tagging ${imageName} for deployment to ${envTag} ..."

      // Don't tag with BUILD_ID so the pruner can do it's job; it won't delete tagged images.
      // Tag the images for deployment based on the image's hash
      def IMAGE_HASH = getImageTagHash(openshift, "${imageName}")
      echo "IMAGE_HASH: ${IMAGE_HASH}"
      openshift.tag("${imageName}@${IMAGE_HASH}", "${imageName}:${envTag}")
    }

    echo "Watching rollout of ${appPrefix}${appName}${appSuffix} in ${namespace}-${envTag} ..."
    openshift.withProject("${namespace}-${envTag}") {
        def dc = openshift.selector('dc', "${appPrefix}${appName}${appSuffix}")
        // Wait for the deployment to complete.
        // This will wait until the desired replicas are all available
        dc.rollout().status()
    }

    echo "Deployment Complete."
  }
}