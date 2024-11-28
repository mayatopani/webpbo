<?php

include_once("config.php");
$db = new Database();

if(isset($_POST['update']))
{	
	$id         	= $_POST['id'];
	$name       	= $_POST['name'];
    $kode      	 	= $_POST['kode'];
    $price      	= $_POST['price'];
    $qty        	= $_POST['qty'];
    $category   	= $_POST['category'];

	$addImage    	= $_POST['addImage'];
	$image       	= $_FILES['fileImage']['tmp_name'];
	$fileName  	 	= $_FILES['fileImage']['name'];
	$uniquecode  	= rand(1,99);
	$targetFilePath = $uniquecode.$fileName;
	$filePath 		= 'images/'.$targetFilePath;

	if (!$image==""){
        $imageNew	= $targetFilePath;
        $delImage 	= 'images/'.$addImage;
        @unlink ("$delImage");
        copy ($image,$filePath);
    }else{
        $imageNew = $addImage;
    }
	
	$sql = "UPDATE products SET KD_KATEGORI = '$category', NM_BARANG = '$name', HARGA = '$price', JUMLAH = '$qty', IMAGE = '$imageNew' WHERE ROWID = $id";
	$result = $db->query($sql);
	header("Location: index.php");
}
?>

<?php
$id = $_GET['id'];

$sql = "SELECT * FROM products WHERE ROWID = $id";
$result = $db->query($sql);
while($data_barang = mysqli_fetch_array($result))
{
	$name       = $data_barang['NM_BARANG'];
	$kode       = $data_barang['KD_BARANG'];
	$price      = $data_barang['HARGA'];
    $qty        = $data_barang['JUMLAH'];
	$image      = $data_barang['IMAGE'];
	$imageUrl	= 'images/'.$image;
	$category   = $data_barang['KD_KATEGORI'];
}
?>
<!DOCTYPE html>
<html>
<head>	
	<title>Edit Products Data</title>
</head>
 
<body>
	<a href="index.php">Home</a>
	<br/><br/>
	
	<form action="edit.php" method="post" name="form_edit" enctype="multipart/form-data">
		<table border="0">
            <tr> 
				<td>Category</td>
				<td>
					<select name="category" id="category">
					  <?php
						include_once("config.php");

						$q_category = "SELECT * FROM categories";
						$result_1 = $db->query($q_category);
						while($data_category = mysqli_fetch_array($result_1)) {
							
							if ($category == $data_category['KD_KATEGORI']) {
								$select="selected";
							}else{
								$select="";
							}
							echo "<option value=".$data_category['KD_KATEGORI']." $select>".$data_category['NM_KATEGORI']."</option>";
						}
					  ?>      
					 </select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><img src='<?php echo $imageUrl;?>' title='Edit' width="100"></td>
			</tr>
			<tr>
				<td>Images</td>
				<td>
					<input type="file" name="fileImage" id="fileImage" size="30" maxlength="30">
					<input name="addImage" type="hidden" id="addImage" value=<?php echo $image; ?>></td>
				</td>
			</tr>
			<tr> 
				<td>Product Name</td>
				<td><input type="text" name="name" value=<?php echo $name; ?> required></td>
			</tr>
            <tr> 
				<td>Product Code</td>
				<td><input readonly type="text" name="kode" value=<?php echo $kode;?> required></td>
			</tr>
			<tr> 
				<td>Price</td>
				<td><input type="text" name="price" value=<?php echo $price;?> required></td>
			</tr>
            <tr> 
				<td>Qty</td>
				<td><input type="text" name="qty" value=<?php echo $qty;?> required></td>
			</tr>
			<tr>
				<td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
				<td><input type="submit" name="update" value="Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>