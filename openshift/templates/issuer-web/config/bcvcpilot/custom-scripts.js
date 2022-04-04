/* Include all your custom JS code in here, it will be available to the app instance */
function format_digit(num) {
  retval = ""
  if (num.toString().length === 1) {
    retval = "0"
  }
  retval += num.toString()
  return retval
}

function setCurrentISODate(params) {
  if (params.length < 1) {
    throw new Error(
      "setCurrentISODate is missing one or more required parameters"
    );
  }
  var dateField = params[0];
  var survey = this.survey;

  var date = new Date();
  var formatted_date = `${date.getFullYear()}${format_digit(date.getMonth()+1)}${format_digit(date.getDate())}`
  survey.setValue(dateField, formatted_date);
}

/* An array containing custom functions that will be automatically registered with
* SurveyJS so that they can be used in triggers.
*/
surveyFunctions = [setCurrentISODate];
