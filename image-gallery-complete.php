<!DOCTYPE HTML>
<html>
<head>
<link href="css/styles.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
    <meta name="description" content="A short description of the web page purpose/ intent">
    <meta name="author" content="Author's name 2021">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/master.css" rel="stylesheet" type="text/css">
    <title>Image Gallery</title>
</head>

<body>

<div id="container">

<?php
require('includes/errors.php');
require('includes/dbconx.php');

$sql =  "SELECT profilePic, work, life, artist FROM customers";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
	
  echo '<div class="imgGallery"><div class="fixedheight"><p>'.$row['artist'].'</p>  
  <p><em>Famous for</em>: '.$row['work'].'</p><p>'.$row['life'].'</p></div>  
  <img src='.'"'.$row['profilePic'].'"></div>';
     
  } 
}

      
$conn->close();
?>
</div>

</body>
</html>