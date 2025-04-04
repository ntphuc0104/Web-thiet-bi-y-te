-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2024 lúc 10:17 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_tbyt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `IDAdmin` int(11) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Pass` varchar(255) DEFAULT NULL,
  `HoTen` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`IDAdmin`, `UserName`, `Pass`, `HoTen`, `Email`, `SDT`, `NgaySinh`, `DiaChi`) VALUES
(1, 'admin1', 'password1', 'Admin One', 'admin1@example.com', 123456789, '1990-01-01', '123 Admin St');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `IDBaiViet` int(11) NOT NULL,
  `IDSanPham` int(11) DEFAULT NULL,
  `IDNhanVien` int(11) DEFAULT NULL,
  `TenBaiViet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`IDBaiViet`, `IDSanPham`, `IDNhanVien`, `TenBaiViet`) VALUES
(1, 1, 1, 'Bai Viet 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `IDChiTietDonhang` int(11) NOT NULL,
  `IDSanPham` int(11) DEFAULT NULL,
  `IDDonHang` int(11) DEFAULT NULL,
  `GiaSanPham` double DEFAULT NULL,
  `TongTien` double DEFAULT NULL,
  `NgayDat` date DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`IDChiTietDonhang`, `IDSanPham`, `IDDonHang`, `GiaSanPham`, `TongTien`, `NgayDat`, `SoLuong`) VALUES
(1, 1, 1, 100, 100, '2024-05-04', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `IDChiTietSanPham` int(11) NOT NULL,
  `IDSanPham` int(11) DEFAULT NULL,
  `GiaSanPham` double DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `TongTien` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`IDChiTietSanPham`, `IDSanPham`, `GiaSanPham`, `SoLuong`, `TongTien`) VALUES
(1, 1, 100, 6, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `IDDanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(255) DEFAULT NULL,
  `MoTa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`IDDanhMuc`, `TenDanhMuc`, `MoTa`) VALUES
(1, 'Danh mục 1', 'Mô tả danh mục 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `IDDonHang` int(11) NOT NULL,
  `IDKhachHang` int(11) DEFAULT NULL,
  `IDNhanVien` int(11) DEFAULT NULL,
  `NgayDat` date DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `TongTien` double DEFAULT NULL,
  `TenSanPham` varchar(255) DEFAULT NULL,
  `TinhTrang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`IDDonHang`, `IDKhachHang`, `IDNhanVien`, `NgayDat`, `DiaChi`, `TongTien`, `TenSanPham`, `TinhTrang`) VALUES
(1, 1, 1, '2024-05-04', '123 Order St', 100, 'San Pham 1', 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `IDGioHang` int(11) NOT NULL,
  `IDSanPham` int(11) DEFAULT NULL,
  `IDKhachHang` int(11) DEFAULT NULL,
  `IDDonHang` int(11) DEFAULT NULL,
  `TenSanPham` varchar(255) DEFAULT NULL,
  `GiaSanPham` double DEFAULT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`IDGioHang`, `IDSanPham`, `IDKhachHang`, `IDDonHang`, `TenSanPham`, `GiaSanPham`, `HinhAnh`) VALUES
(1, 1, 1, 1, 'San Pham 1', 100, 'xe_lan.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `IDKhachHang` int(11) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Pass` varchar(255) DEFAULT NULL,
  `HoTen` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`IDKhachHang`, `UserName`, `Pass`, `HoTen`, `Email`, `SDT`, `NgaySinh`, `DiaChi`) VALUES
(1, 'customer1', 'password1', 'Customer One', 'customer1@example.com', 987654321, '1995-05-05', '456 Customer St');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `IDKhuyenMai` int(11) NOT NULL,
  `IDSanPham` int(11) DEFAULT NULL,
  `GiaSanPham` double DEFAULT NULL,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`IDKhuyenMai`, `IDSanPham`, `GiaSanPham`, `NgayBatDau`, `NgayKetThuc`) VALUES
(1, 1, 90, '2024-05-01', '2024-05-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `IDNhanVien` int(11) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Pass` varchar(255) DEFAULT NULL,
  `HoTen` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`IDNhanVien`, `UserName`, `Pass`, `HoTen`, `Email`, `SDT`, `NgaySinh`, `DiaChi`) VALUES
(1, 'staff1', 'password1', 'Staff One', 'staff1@example.com', 555555555, '1980-12-12', '789 Staff St');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `IDSanPham` int(11) NOT NULL,
  `IDDanhMuc` int(11) DEFAULT NULL,
  `IDThuongHieu` int(11) DEFAULT NULL,
  `IDBaiViet` int(11) DEFAULT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `MoTaSanPham` varchar(255) DEFAULT NULL,
  `TenSanPham` varchar(255) DEFAULT NULL,
  `GiaSanPham` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`IDSanPham`, `IDDanhMuc`, `IDThuongHieu`, `IDBaiViet`, `HinhAnh`, `MoTaSanPham`, `TenSanPham`, `GiaSanPham`) VALUES
(1, 1, 1, 0, 'Khau_trang_2.jpg', 'Mô tả sản phẩm 1', 'Sản phẩm 1', 100),
(2, 1, 1, 0, 'May_do_duong_huyet_2.jpg', 'Sản phẩm tốt', 'tuong', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `IDThuongHieu` int(11) NOT NULL,
  `IDSanpham` int(11) DEFAULT NULL,
  `TenThuongHieu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`IDThuongHieu`, `IDSanpham`, `TenThuongHieu`) VALUES
(1, 1, 'Thương hiệu 1'),
(2, 1, 'kkk');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthaidonhang`
--

CREATE TABLE `trangthaidonhang` (
  `IDTrangThaiDonHang` int(11) NOT NULL,
  `IDDonHang` int(11) DEFAULT NULL,
  `TenTrangThai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthaidonhang`
--

INSERT INTO `trangthaidonhang` (`IDTrangThaiDonHang`, `IDDonHang`, `TenTrangThai`) VALUES
(1, 1, 'Đã đặt hàng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IDAdmin`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`IDBaiViet`),
  ADD KEY `BaiViet_NhanVien` (`IDNhanVien`),
  ADD KEY `BaiViet_SanPham` (`IDSanPham`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`IDChiTietDonhang`),
  ADD KEY `ChiTietDonHang_DonHang` (`IDDonHang`),
  ADD KEY `ChiTietDonhang_SanPham` (`IDSanPham`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`IDChiTietSanPham`),
  ADD KEY `ChiTietSanPham_SanPham` (`IDSanPham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`IDDanhMuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`IDDonHang`),
  ADD KEY `Donhang_NhanVien` (`IDNhanVien`),
  ADD KEY `Donhang_KhachHang` (`IDKhachHang`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`IDGioHang`),
  ADD KEY `GioHang_SanPham` (`IDSanPham`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`IDKhachHang`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`IDKhuyenMai`),
  ADD KEY `KhuyenMai_SanPham` (`IDSanPham`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`IDNhanVien`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`IDSanPham`),
  ADD KEY `SanPham_DanhMuc` (`IDDanhMuc`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`IDThuongHieu`),
  ADD KEY `ThuongHieu_SanPham` (`IDSanpham`);

--
-- Chỉ mục cho bảng `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  ADD PRIMARY KEY (`IDTrangThaiDonHang`),
  ADD KEY `TrangThaiDonHang_DonHang` (`IDDonHang`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `BaiViet_NhanVien` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`IDNhanVien`),
  ADD CONSTRAINT `BaiViet_SanPham` FOREIGN KEY (`IDSanPham`) REFERENCES `sanpham` (`IDSanPham`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `ChiTietDonHang_DonHang` FOREIGN KEY (`IDDonHang`) REFERENCES `donhang` (`IDDonHang`),
  ADD CONSTRAINT `ChiTietDonhang_SanPham` FOREIGN KEY (`IDSanPham`) REFERENCES `sanpham` (`IDSanPham`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `ChiTietSanPham_SanPham` FOREIGN KEY (`IDSanPham`) REFERENCES `sanpham` (`IDSanPham`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `Donhang_KhachHang` FOREIGN KEY (`IDKhachHang`) REFERENCES `khachhang` (`IDKhachHang`),
  ADD CONSTRAINT `Donhang_NhanVien` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`IDNhanVien`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `GioHang_SanPham` FOREIGN KEY (`IDSanPham`) REFERENCES `sanpham` (`IDSanPham`);

--
-- Các ràng buộc cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `KhuyenMai_SanPham` FOREIGN KEY (`IDSanPham`) REFERENCES `sanpham` (`IDSanPham`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `SanPham_DanhMuc` FOREIGN KEY (`IDDanhMuc`) REFERENCES `danhmuc` (`IDDanhMuc`);

--
-- Các ràng buộc cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD CONSTRAINT `ThuongHieu_SanPham` FOREIGN KEY (`IDSanpham`) REFERENCES `sanpham` (`IDSanPham`);

--
-- Các ràng buộc cho bảng `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  ADD CONSTRAINT `TrangThaiDonHang_DonHang` FOREIGN KEY (`IDDonHang`) REFERENCES `donhang` (`IDDonHang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
