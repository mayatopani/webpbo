<?php
include_once("config.php");
 
$result = mysqli_query($mysqli, "   
        SELECT 
            A.KD_BARANG, 
            A.KD_KATEGORI, 
            B.NM_KATEGORI, 
            A.NM_BARANG, 
            A.HARGA, 
            A.IMAGE, 
            A.JUMLAH, 
            A.FLAG_AKTIF, 
            A.ROWID
        FROM products A 
        JOIN categories B ON 
            A.KD_KATEGORI = B.KD_KATEGORI
        ORDER BY 
            A.ROWID 
        DESC
    ");
?>
 <!DOCTYPE html>
<html>
<head>    
    <title>Product</title>
</head>
 
<body>
<a href="add.php">Add New Product</a><br/><br/>
 
    <table border='1' width='100%' >
    <tr>
        <th>No</th> 
        <th>Category</th> 
        <th>Product Name</th> 
        <th>Product Code</th> 
        <th>Price</th> 
        <th>Qty</th> 
        <th>Image</th> 
        <th>Action</th>
    </tr>
    <?php  
        $no = 1;
        while($data_barang = mysqli_fetch_array($result)) {        
            echo "<tr  width='100' height='125'>";
            echo "<td align='center'>".$no++."</td>";
            echo "<td>".$data_barang['NM_KATEGORI']."</td>";
            echo "<td>".$data_barang['NM_BARANG']."</td>";
            echo "<td align='center'>".$data_barang['KD_BARANG']."</td>";
            echo "<td align='right'>".$data_barang['HARGA']."</td>";
            echo "<td align='center'>".$data_barang['JUMLAH']."</td>";    
            echo "<td align='center'><img src='images/".$data_barang['IMAGE']."' width='100'></td>";
            echo "<td align='center'>
                <a href='edit.php?id=$data_barang[ROWID]'>Edit</a> | <a href='delete.php?id=$data_barang[ROWID]'>Delete</a>
            </td></tr>";       
        }
    ?>
    </table>
</body>
</html>