<?php
$mysqli = new mysqli("localhost:3308","root","","banhangdienmay1");

if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}

// echo "Initial character set is: " . $mysqli -> character_set_name();

// // Change character set to utf8
// $mysqli -> set_charset("utf8");

// echo "Current character set is: " . $mysqli -> character_set_name();

// $mysqli -> close();
?>