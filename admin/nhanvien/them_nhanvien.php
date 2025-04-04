<?php

include_once __DIR__ . '/../../admin/config/db.php';


    if(isset($_POST['sbm'])){

        $IDNhanVien = $_POST['IDNhanVien'];
        $UserName = $_POST['UserName'];
        $Pass = $_POST['Pass'];
        $HoTen = $_POST['HoTen'];
        $Email = $_POST['Email'];
        $SDT = $_POST['SDT'];
        $NgaySinh = $_POST['NgaySinh'];
        $DiaChi = $_POST['DiaChi'];

        $sql = "INSERT INTO NhanVien(IDNhanVien, UserName, Pass, HoTen, Email, SDT, NgaySinh, DiaChi) 
        VALUES ('$IDNhanVien ','$UserName','$Pass','$HoTen', '$Email', '$SDT', '$NgaySinh', '$DiaChi')";
        $query = mysqli_query($con, $sql);
        header('location: nhanvien.php');
    }




?>

<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Thêm nhân viên</h2>
        </div>
        <div class="card-body">
            <form method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="">IDNhanVien</label>
                    <input type="text" id="IDNhanVien" name="IDNhanVien" class="form-control" required>
                </div>
                
                <div class="form-group">
                    <label for="">UserName</label>
                    <input type="text" id="UserName" name="UserName" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Pass</label>
                    <input type="text" id="Pass" name="Pass" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Họ và tên</label>
                    <input type="text" id="HoTen" name="HoTen" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="text" id="Email" name="Email" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="">SDT</label>
                    <input type="number" id="SDT" name="SDT" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">NgaySinh</label>
                    <input type="date" id="NgaySinh" name="NgaySinh" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="">DiaChi</label>
                    <input type="text" id="DiaChi" name="DiaChi" class="form-control" required>
                </div>

                <button name="sbm" class="btn btn-success" type="submit">Thêm</button>
            </form>
          
           
              
        </div>
    </div>
</div>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm nhân viên</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

.card {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-top: 20px;
}

.card-header {
    background-color: #f0f0f0;
    padding: 10px 20px;
    border-bottom: 1px solid #ddd;
}

h2 {
    margin: 0;
    font-size: 24px;
}

.card-body {
    padding: 20px;
}

label {
    font-weight: bold;
}

input[type="text"],
input[type="number"],
select {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="file"] {
    margin-top: 5px;
    margin-bottom: 15px;
}

button {
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    background-color: #4caf50;
    color: white;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}
@media only screen and (max-width: 600px) {
    /* Điều chỉnh kích thước cho các thiết bị nhỏ hơn hoặc bằng 600px */
    input[type="text"],
    input[type="number"],
    select {
        width: 100%;
    }
}
.form-group {
    margin-bottom: 20px;
}

    </style>
</head>
<body>
    <script>
        
    
    </script>
</body>
</html>