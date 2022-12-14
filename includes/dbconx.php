<?php

$servername = "localhost";
$username = "sgaitken"; //add your own username
$password = "kFwy/ZM57ByfvQXQ"; //add your own password
$dbase = "photography"; //dbase name

//mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); // for error reporting
try {
  $conn = new mysqli($servername, $username, $password, $dbase);

} catch(Exception $e) {
  error_log($e->getMessage());
  exit('Error connecting to the database'); //Should be a message a typical user could understand
}



?>