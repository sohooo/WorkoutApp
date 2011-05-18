// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {

  $(".exercise_form").hide();

  /* If Javascript is enabled, show Sparkline chart. */
  // $(".workout_activity").show();

  /** This code runs when everything has been loaded on the page */
  /* Inline sparklines take their values from the contents of the tag */
  $('.inlinesparkline').sparkline('html', {
    type: "bar",
    height: "10px",
    barWidth: 6,
    barColor: "rgba(214,225,199,1)",
  }); 

});
