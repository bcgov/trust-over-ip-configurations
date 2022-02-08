
package bc;

class baseConfig {
  // Wait timeout in minutes
  public static final int WAIT_TIMEOUT = 20

  // Deployment Environment TAGs
  public static final String[] DEPLOYMENT_ENVIRONMENT_TAGS = ['dev', 'test', 'prod']

  // The name of the project namespace(s).
  public static final String  NAME_SPACE = 'e79518'

  // Instance Prefix
  public static final String  PREFIX = 'vc-authn-'

  // Instance Suffix
  public static final String  SUFFIX = ''

  // Apps - Listed in the order they should be tagged
  public static final String[] APPS = ['tails-server', 'vc-authn-database', 'vc-authn-agent', 'vc-authn-controller', 'vc-authn-controller-rev', 'backup', 'issuer-kit-agent', 'issuer-kit-wallet']
}