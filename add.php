<!DOCTYPE html>
<html>
<head>
	<title>Add Products</title>
</head>
 
<body>
	<a href="index.php">Go to Home</a>
	<br/><br/>
 
	<form action="add.php" method="post" name="form_add" enctype="multipart/form-data">
		<table width="55%" border="0">
            <tr> 
				<td>Category</td>
				<td>
					<select class="form-control" name="category" id="category">
						<option value=""> Pilih Category</option>
						<?php
							include_once("config.php");
							$db = new Database();
							$sql ="SELECT * FROM categories ORDER BY ROWID DESC";
							$result = $db->query($sql);

							while($row = mysqli_fetch_array($result)) {
									echo "<option value='" . $row['KD_KATEGORI'] . "'>" . $row['NM_KATEGORI'] . "</option>";
							}
						?>
					</select>
				</td>
			</tr>
			<tr> 
				<td>Images</td>
				<td><input type="file" name="fileImage" id="fileImage"></td>  				
			</tr>
			<tr> 
				<td>Product Name</td>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr> 
				<td>Product Code</td>
				<td><input type="text" name="kode" required></td>
			</tr>
			<tr> 
				<td>Price</td>
				<td><input type="text" name="price" required></td>
			</tr>
			<tr> 
				<td>Qty</td>
				<td><input type="text" name="qty" required></td>
			</tr>
			<tr> 
				<td></td>
				<td><input type="submit" name="Submit" value="Add"></td>
			</tr>
		</table>
	</form>
	
	<?php
	$targetDir 		= "images/";

							
	if(isset($_POST['Submit'])) {
		$name       	= $_POST['name'];
		$kode       	= $_POST['kode'];
		$price      	= $_POST['price'];
        $qty        	= $_POST['qty'];
		$category   	= $_POST['category'];
		$fileName 		= basename($_FILES["fileImage"]["name"]);
		$targetFilePath = $targetDir . $fileName;
		$fileType 		= pathinfo($targetFilePath,PATHINFO_EXTENSION);	

		include_once("config.php");
		move_uploaded_file($_FILES["fileImage"]["tmp_name"], $targetFilePath);
		$sql = "INSERT INTO products(KD_KATEGORI,KD_BARANG,NM_BARANG,HARGA,JUMLAH,IMAGE,FLAG_AKTIF) VALUES('$category','$kode','$name','$price','$qty','$fileName','Y')";
		 $result = $db->query($sql);
		//header("Location: index.php");
	}
	?>
</body>
</html>