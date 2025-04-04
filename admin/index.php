<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>San Pham</title>
</head>
<body>
    <?php
        if(isset($_GET['page_layout'])){
            switch($_GET['page_layout']){
                case 'danhsach':
                    require_once 'Sanpham/danhsach.php';
                    break;
                case 'them':
                    require_once 'Sanpham/them.php';
                    break;
                case 'sua':
                    require_once '/SanPham/sua.php';
                    break;
                case 'xoa':
                    require_once 'Sanpham/xoa.php';
                    break;
                    // case 'admin':
                    //     require_once 'taikhoanadmin/admin.php';
                    //     break;
                case 'Khachhang':
                    require_once 'taikhoankhachhang/Users.php';
                    break;
                case 'thuonghieu':
                    require_once 'thuonghieu/thuonghieu.php';
                    break;
                case 'donhang':
                    require_once 'donhang/donhang.php';
                    break;
                case 'chitietdonhang':
                    require_once 'chitietdonhang/chitietdonhang.php';
                    break;
                case 'giohang':
                    require_once 'giohang/giohang.php';
                    break;
               
                default:
                require_once 'Sanpham/danhsach.php';
                    break;
            }
        }
    ?>
</body>
</html>