/* Include all your custom JS code in here, it will be available to the app instance */

function updateStatus() {
    var descriptionField = "Member Status";
    var codeField = "Member Status Code";
    var survey = this.survey;
    var mappings = {
      PRAC: "Practising",
      RET: "Retired",
      OTHER: "Other"
    };
  
    survey.setValue(descriptionField, mappings[survey.getValue(codeField)]);
  }
  
  /* An array containing custom functions that will be automatically registered with
   * SurveyJS so that they can be used in triggers.
   */
  surveyFunctions = [updateStatus];
  