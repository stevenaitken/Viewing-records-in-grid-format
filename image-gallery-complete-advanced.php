<!DOCTYPE HTML>
<html>
<head>
<link href="css/styles.css" rel="stylesheet">

<meta charset="UTF-8">
    <meta name="description" content="A short description of the web page purpose/ intent">
    <meta name="author" content="Author's name 2021">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/master.css" rel="stylesheet" type="text/css">
    <title>Image Gallery</title>
</head>

<body>
<header>:: Image gallery stacked vertically ::</header>

<div id="container">

<?php

require('includes/errors.php');
require('includes/dbconx.php');

$sql =  "SELECT profilePic, work, life, artist FROM customers";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
//while we get an exisitng and matching row from the sql statement write the HTML tags to present each image
	
  echo '<div class="imgGallery"><p><img src='.'"'.$row['profilePic'].'"></p><p><strong>'.$row['artist'].'</strong></p>  
  <p><em>Famous for</em>: '.$row['work'].'</p><p>'.$row['life'].'</div>';
     
  } 
  }

  $conn->close();
?>
</div>

</body>
</html>