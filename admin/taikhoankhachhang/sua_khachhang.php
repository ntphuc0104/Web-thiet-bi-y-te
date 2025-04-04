<?php
    include_once __DIR__ . '/../../admin/config/db.php';
    
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql_select = "SELECT * FROM KhachHang WHERE IDKhachHang = $id";
        $query_select = mysqli_query($con, $sql_select);
        $row_select = mysqli_fetch_assoc($query_select);

        if(isset($_POST['sbm'])){

            $IDKhachHang = $_POST['IDKhachHang']; 
            $UserName = $_POST['UserName'];
            $Pass = $_POST['Pass'];
            $HoTen = $_POST['HoTen'];
            $Email = $_POST['Email'];
            $SDT = $_POST['SDT'];
            $NgaySinh = $_POST['NgaySinh'];
            $DiaChi = $_POST['DiaChi'];

            $sql = "UPDATE KhachHang SET IDKhachHang='$IDKhachHang', UserName='$UserName', Pass='$Pass',
             HoTen='$HoTen', Email='$Email', SDT='$SDT' ,NgaySinh='$NgaySinh', DiaChi='$DiaChi'
              WHERE IDKhachHang=$id";
            $query = mysqli_query($con, $sql);
            header('location: Users.php');
            
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa khách hàng</title>
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
    <h1>Sửa khách hàng</h1>
    <form method="POST" enctype="multipart/form-data">
        <!-- Hiển thị thông tin sản phẩm hiện tại -->
        <label for="">IDKhachHang:</label>
        <input type="text" name="IDKhachHang" class="form-control" require value="<?php echo $row_select['IDKhachHang']; ?>"><br>

        <label for="">UserName:</label>
        <input type="text" name="UserName" class="form-control" require value="<?php echo $row_select['UserName']; ?>"><br>

        <label for="">Pass:</label>
        <input type="text" name="Pass" class="form-control" require value="<?php echo $row_select['Pass']; ?>"><br>

        <label for="">HoTen:</label>
        <input type="text" name="HoTen" class="form-control" require value="<?php echo $row_select['HoTen']; ?>"><br>

        <label for="">Email:</label>
        <input type="text" name="Email" class="form-control"  require value="<?php echo $row_select['Email'];?>"></input><br>

        <label for="">SDT:</label>
        <input type="number" name="SDT" class="form-control" require value="<?php echo $row_select['SDT']; ?>"><br>

        <label for="">NgaySinh:</label>
        <input type="date" name="NgaySinh" class="form-control" require value="<?php echo $row_select['NgaySinh']; ?>"><br>

        <label for="">DiaChi:</label>
        <input type="text" name="DiaChi" class="form-control" require value="<?php echo $row_select['DiaChi']; ?>"><br>

        <input type="submit" name="sbm" value="Lưu">    
    </form>
</body>
</html>
