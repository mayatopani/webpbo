<?php
include_once("../config.php");

switch ($_GET['action'])
{
    case 'ambiloption':
        $query = mysqli_query($mysqli, "SELECT KD_KATEGORI,NM_KATEGORI FROM categories"); 
        echo "<option>Pilih Kode</option>\n"; 
        while($op = mysqli_fetch_array($query)){ 
            echo "<option value=".$op['KD_KATEGORI'].">".$op['NM_KATEGORI']."</option>\n"; 
        } 
    break;

    case 'ambildata':
        $kode   = $_POST['kode'];
        $data   = mysqli_query($mysqli, "SELECT * FROM categories WHERE KD_KATEGORI = '$kode'"); 
        $row    = mysqli_fetch_array($data); 
    
        echo $row['KD_KATEGORI']."|".$row['NM_KATEGORI']."|".$row['FLAG_AKTIF'];
    break;

    case 'save':
        $kode           = $_POST['kode2'];
        $nm_kategori    = $_POST['nm_kategori'];
        $fg_aktif       = $_POST['fg_aktif'];

        if ($fg_aktif	!= "Y"){
			$fg_aktif = "N" ;
		}

        $query = mysqli_query($mysqli, "INSERT INTO categories(KD_KATEGORI,NM_KATEGORI,FLAG_AKTIF) VALUES('$kode','$nm_kategori','$fg_aktif')");

        if ($query){
            echo "sukses";
        }else{
            echo "error";
        }
    break;

    case 'edit':
        $kode           = $_POST['kode2'];
        $nm_kategori    = $_POST['nm_kategori'];
        $fg_aktif       = $_POST['fg_aktif'];
    
        if ($fg_aktif	!= "Y"){
            $fg_aktif = "N" ;
        }

        $query = mysqli_query($mysqli, "UPDATE categories SET NM_KATEGORI='$nm_kategori', FLAG_AKTIF='$fg_aktif' WHERE KD_KATEGORI = '$kode'");
        if ($query){
            echo "sukses";
        }else{
            echo "error";
        }
    break;

    case 'delete':
        $kode  = $_POST['kode'];

        $query = mysqli_query($mysqli, "DELETE FROM categories WHERE KD_KATEGORI = '$kode'");
        if ($query){
            echo "sukses";
        }else{
            echo "error";
        }
    break;
}
?>