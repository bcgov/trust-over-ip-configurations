
package bc;

class baseConfig {
  // Wait timeout in minutes
  public static final int WAIT_TIMEOUT = 10

  // Deployment Environment TAGs
  public static final String[] DEPLOYMENT_ENVIRONMENT_TAGS = ['dev', 'test', 'prod']

  // The name of the project namespace(s).
  public static final String  NAME_SPACE = 'nnfbch'

  // Instance Prefix
  public static final String  PREFIX = 'vc-authn-'

  // Instance Suffix
  public static final String  SUFFIX = ''

  // Apps - Listed in the order they should be tagged
  public static final String[] APPS = ['vc-authn-database', 'vc-authn-agent', 'vc-authn-controller', 'backup', 'issuer-agent', 'issuer-api', 'issuer-db', 'issuer-wallet', 'issuer-web']
}