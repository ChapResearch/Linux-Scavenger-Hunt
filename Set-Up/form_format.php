<?php
function displayForm()
{
  // use this echo to actually output all your HTML
  readfile("form_format.html");
}

function displayValues()
{
  // write HTML to display all the values inputted into your form!
}

if ($_GET["[FormName]"]){
  displayValues();
} else {
  displayForm();
}
?>
