// Pipeline Configuration Properties
// Import this file into the pipeline using 'load'.
class config extends bc.baseConfig {
  // Build configuration
  public static final String  APP_NAME = "backup"
  public static final String[] BUILDS = ["${this.APP_NAME}"]

  // Override defaults
  public static final String  PREFIX = ''
  public static final String  SUFFIX = ''

}

return new config();