<!DOCTYPE HTML>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
<style>
body{font-family: 'Open Sans', sans-serif;}
.grid-container{display: grid; grid-column-gap: 50px;grid-row-gap: 50px; grid-template-columns: 1fr 1fr 1fr 1fr;width:80%;margin: 0 auto;font-size: 90%;}
.imgGallery{background-color:#999;text-align: center;padding: 10px 10px 0px 10px;}
.artistWork{height:3vh;margin-bottom: 40px;}
.artistLife{background-color: #444;padding:0;margin:0;}
.profilePic{margin-top: 2vh;}
img{border-radius: 10px;}
</style>

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

<div class="grid-container">

<?php

require('includes/errors.php');
require('includes/dbconx.php');

$sql =  "SELECT profilePic, work, life, artist FROM customers";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
//while we get an exisitng and matching row from the sql statement write the HTML tags to present each image
	
echo '<div class="imgGallery">';
echo '<p><strong>'.$row['artist'].'</strong></p>';
echo '<p class="artistWork"><em>Famous for</em>: '.$row['work'].'</p>';
echo '<p class="profilePic"><img src='.'"'.$row['profilePic'].'"></p>'; 
echo '<p class="artistLife">'.$row['life'].'</p>'; 
echo '</div>';
   
  } 
  }

  $conn->close();
?>
</div>

</body>
</html>