<?php
    include_once __DIR__ . '/../../admin/config/db.php';
    
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql_select = "SELECT * FROM KhuyenMai WHERE IDKhuyenMai = $id";
        $query_select = mysqli_query($con, $sql_select);
        $row_select = mysqli_fetch_assoc($query_select);

        if(isset($_POST['sbm'])){

            $IDKhuyenMai = $_POST['IDKhuyenMai'];
            $IDSanPham = $_POST['IDSanPham'];
            $NgayBatDau = $_POST['NgayBatDau'];
            $NgayKetThuc = $_POST['NgayKetThuc'];


            $sql = "UPDATE KhuyenMai SET IDKhuyenMai='$IDKhuyenMai', IDSanPham='$IDSanPham', NgayBatDau='$NgayBatDau',
             NgayKetThuc='$NgayKetThuc' WHERE IDKhuyenMai=$id";
            header('location: khuyenmai.php');
            
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa khuyến mãi</title>
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
    <h1>Sửa khuyến mãi</h1>
    <form method="POST" enctype="multipart/form-data">
        <!-- Hiển thị thông tin sản phẩm hiện tại -->
        <label for="">IDKhuyenMai:</label>
        <input type="text" name="IDKhuyenMai" class="form-control" require value="<?php echo $row_select['IDKhuyenMai']; ?>"><br>

        <label for="">IDSanPham:</label>
        <input type="text" name="IDSanPham" class="form-control" require value="<?php echo $row_select['IDSanPham']; ?>"><br>

        <label for="">Ngày bắt đầu:</label>
        <input type="text" name="NgayBatDau" class="form-control" require value="<?php echo $row_select['NgayBatDau']; ?>"><br>

        <label for="">Ngày kết thúc:</label>
        <input type="text" name="NgayKetThuc" class="form-control"  require value="<?php echo $row_select['NgayKetThuc'];?>"></input><br>

   
        <input type="submit" name="sbm" value="Lưu">    
    </form>
</body>
</html>
