<?php
    include_once __DIR__ . '/../../admin/config/db.php';
    $row_select = [];
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql_select = "SELECT * FROM SanPham WHERE IDSanPham = $id";
        $query_select = mysqli_query($con, $sql_select);
        $row_select = mysqli_fetch_assoc($query_select);

        if(isset($_POST['sbm'])){

            $IDSanPham = $_POST['IDSanPham'];
            if($_FILES['HinhAnh']['name']==''){
                $HinhAnh = $_FILES['HinhAnh']['name'];
            }else{
                $HinhAnh = $_FILES['HinhAnh']['name'];
                $HinhAnh_tmp = $_FILES['HinhAnh']['tmp_name'];
                move_uploaded_file($HinhAnh_tmp, 'img/'.$HinhAnh);
            };
            
            $TenSanPham = $_POST['TenSanPham'];
            $GiaSanPham = $_POST['GiaSanPham'];
            $MoTaSanPham = $_POST['MoTaSanPham'];
            $IDDanhMuc = $_POST['IDDanhMuc'];
            $IDThuongHieu = $_POST['IDThuongHieu'];
            $IDbaiViet = $_POST['IDBaiViet'];

            $sql = "UPDATE SanPham SET IDSanPham='$IDSanPham', HinhAnh='$HinhAnh', TenSanPham='$TenSanPham',
             GiaSanPham='$GiaSanPham', MoTaSanPham='$MoTaSanPham', IDDanhMuc='$IDDanhMuc' ,IDThuongHieu='$IDThuongHieu', IDBaiViet='$IDBaiViet'
              WHERE IDSanPham=$id";
            $query = mysqli_query($con, $sql);
            header('location: danhsach.php');
            
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa sản phẩm</title>
</head>
<style>


    h1 {
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="file"],
    textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }



    h1 {
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="file"],
    textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }

 form {   max-width: 100%;  
         margin: 0 auto;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
       
        
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 16px;
    }

    input[type="text"],
    input[type="file"],
    textarea {
        width: 100%;
        padding: 17px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 10%;
        padding: 10px;
        border: none;
        border-radius: 3px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

</style>
<body>
    <h1>Sửa sản phẩm</h1>
    <form method="POST" enctype="multipart/form-data">
        <label for="">IDSanPham:</label>
        <input type="text" name="IDSanPham" class="form-control" require value="<?php echo $row_select['IDSanPham']; ?>"><br>

        <label for="">Ảnh sản phẩm:</label>
        <input type="file" id="HinhAnh" name="HinhAnh"><br>

        <label for="">Tên sản phẩm:</label>
        <input type="text" name="TenSanPham" class="form-control" require value="<?php echo $row_select['TenSanPham']; ?>"><br>

        <label for="">Giá sản phẩm:</label>
        <input type="text" name="GiaSanPham" class="form-control" require value="<?php echo $row_select['GiaSanPham']; ?>"><br>

        <label for="">Mô tả sản phẩm:</label>
        <input type="text" name="MoTaSanPham" class="form-control"  require value="<?php echo $row_select['MoTaSanPham'];?>"></input><br>

        <label for="">IDDanhMuc:</label>
        <input type="text" name="IDDanhMuc" class="form-control" require value="<?php echo $row_select['IDDanhMuc']; ?>"><br>

        <label for="">IDThuonghieu:</label>
        <input type="text" name="IDThuongHieu" class="form-control" require value="<?php echo $row_select['IDThuongHieu']; ?>"><br>

        <label for="">IDBaiViet:</label>
        <input type="text" name="IDbaiViet" class="form-control" require value="<?php echo $row_select['IDBaiViet']; ?>"><br>

        <input type="submit" name="sbm" value="Lưu">    
    </form>
</body>
</html>
