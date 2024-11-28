<?php
include_once("config.php");
$db = new Database();
$id = $_GET['id'];
 
$sql = "DELETE FROM products WHERE ROWID=$id";
$result = $db->query($sql);
header("Location:index.php");
?>