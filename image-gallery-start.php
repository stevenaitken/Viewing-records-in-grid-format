<!DOCTYPE HTML>
<html lang="en">
<head>
<?php include'modules/head.php'; include'includes/dbconx.php'; include'includes/errors.php';?>

</head>

<body>

<div class="container">
<table><tr><th>Name</th><th>Famous For</th><th>Life</th><th>Profile Picture</th></tr>


<?php include('includes/view-records.php');


?>
</table>


</div>
</body>
</html>