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
//while we get an exisiting and matching row from the sql statement write the HTML tags to present each image and href

if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
	
  echo '<div class="imgGallery"><div class=\'myContent\'><p><img src='.'"'.$row['profilePic'].'"><p><strong>'.'<a href=\'https://www.google.co.uk/?gfe_rd=cr&ei=kcKOVpLrFvLH8geo6JuYCA&gws_rd=ssl#q='.trim($row['artist']).'\''.'/>'.trim($row['artist']).'</a>'.'</strong></p>  
  <p><em>Famous for</em>: '.$row['work'].'</p></div><p class=\'lifePara\'>'.$row['life'].'</p></div>';
  
  
/*    echo '<a href=\'https://www.google.co.uk/?gfe_rd=cr&ei=kcKOVpLrFvLH8geo6JuYCA&gws_rd=ssl#q='.$row['name'].'\''.'/>'.$row['name'].'</a>';  
*/  } 
}
             
$conn->close();
?>
</div>
 
</body>
</html>
