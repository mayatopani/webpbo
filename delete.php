<?php
include_once("config.php");
 
$id = $_GET['id'];
 
$result = mysqli_query($mysqli, "DELETE FROM products WHERE ROWID=$id");
 
header("Location:index.php");
?>