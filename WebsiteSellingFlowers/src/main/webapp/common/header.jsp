<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/css.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
  <section class="myheader">
    <div class="container">
      <div class="row py-4">
          <div class="logohoa col-md-4"><a href="/product/views	"><img src="https://hoayeuthuong.com/images/logo-hoa-yeu-thuong.png" alt=""></a></div>
          <div class="col-md-3">         
              <input class="form-control" type="search" placeholder="Tìm sản phẩm" aria-label="Search">              
          </div>
          <div class="col-md-2"> <button class="btn btn-outline-success" type="submit">Tìm kiếm</button>  </div>
          <div  class="col text-center"><a href="/shopping-cart/views"><i class="fa-solid fa-bag-shopping fa-2xl" style="color: #951d1d;"></i>
          </a>
          <br>
          	Giỏ hàng
          	
          </div>
          <div class="col text-center"><a href=""><i class="fa-regular fa-user fa-2xl" style="color: #0d8e0b;"></i><br> Tài khoản</div>
          </a>
      </div>            
  </div>

  <div class="container stk-menu header-main-scrolled">
    <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-10">
        <nav id="menu" class="navbar navbar-expand-lg">
          <ul class="navbar-nav">
            <li class="nav-item dropdown">
              <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                HOA SINH NHẬT
              </a>
              <ul class="dropdown-menu">
                <div class="dropdown-inner">
                  <ul class="list-unstyled">
                    <li><a href="/hoa-sinh-nhat-sang-trong" class="nav-link">Hoa Sinh Nhật Sang Trọng</a></li>
                    <li><a href="/hoa-sinh-nhat-gia-re" class="nav-link">Hoa Sinh Nhật Giá Rẻ</a></li>
                    <li><a href="/hoa-tang-sinh-nhat-nguoi-yeu" class="nav-link">Hoa Tặng Sinh Nhật Người Yêu</a></li>
                    <li><a href="/hoa-tang-sinh-nhat-me" class="nav-link">Hoa Tặng Sinh Nhật Mẹ</a></li>
                    <li><a href="/hoa-tang-sinh-nhat-ban" class="nav-link">Hoa Tặng Sinh Nhật Bạn</a></li>
                    <li><a href="/lang-hoa-dep-tang-sinh-nhat" class="nav-link">Lẵng Hoa Tặng Sinh Nhật</a></li>
                    <li><a href="/hoa-hong-tang-sinh-nhat" class="nav-link">Hoa Hồng Tặng Sinh Nhật</a></li>
                    <li><a href="/gio-hoa-sinh-nhat" class="nav-link">Giỏ hoa sinh nhật</a></li>
                  </ul>
                </div>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                HOA KHAI TRƯƠNG
              </a>
              <ul class="dropdown-menu">
                <div class="dropdown-inner">
                  <ul class="list-unstyled">
                    <li><a href="/lang-hoa-khai-truong-de-ban" class="nav-link">Hoa Khai Trương Để Bàn</a></li>
                    <li><a href="/ke-hoa-khai-truong" class="nav-link">Kệ Hoa Khai Trương</a></li>
                    <li><a href="/ke-hoa-khai-truong-hien-dai" class="nav-link">Kệ Hoa Khai Trương Hiện Đại</a></li>
                    <li><a href="/hoa-khai-truong-gia-re" class="nav-link">Hoa Khai Trương Giá Rẻ</a></li>
                    <li><a href="/lang-hoa-2-tang-mung-khai-truong" class="nav-link">Lẵng hoa 2 tầng mừng khai
                        trương</a></li>
                  </ul>
                </div>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                CHỦ ĐỀ
              </a>
              <ul class="dropdown-menu">
                <div class="dropdown-inner">
                  <ul class="list-unstyled">
                    <li><a href="/hoa-chuc-mung" class="nav-link">Hoa Chúc Mừng</a></li>
                    <li><a href="/hoa-cuoi-cam-tay" class="nav-link">Hoa Cưới Cầm Tay</a></li>
                    <li><a href="/hoa-tang-le" class="nav-link">Hoa tang lễ - Hoa Chia Buồn</a></li>
                    <li><a href="/hoa-tinh-yeu" class="nav-link">Hoa tình yêu</a></li>
                    <li><a href="/hoa-valentine" class="nav-link">Hoa Valentine</a></li>
                    <li><a href="/hoa-ky-niem-ngay-cuoi" class="nav-link">Hoa Kỷ Niệm Ngày Cưới</a></li>
                    <li><a href="/ngay-cua-me" class="nav-link">Ngày của mẹ</a></li>
                    <li><a href="/hoa-chuc-mung-8-3" class="nav-link">Hoa Chúc Mừng 8-3</a></li>
                    <li><a href="/hoa-chuc-mung-20-10" class="nav-link">Hoa Chúc Mừng 20-10</a></li>
                    <li><a href="/hoa-chuc-mung-ngay-nha-giao-viet-nam-20-11" class="nav-link">Ngày nhà giáo VN</a></li>
                    <li><a href="/le-giang-sinh" class="nav-link">Giáng sinh</a></li>
                    <li><a href="/tet-am-lich" class="nav-link">Tết âm lịch</a></li>
                    <li><a href="/hoa-tang-tot-nghiep" class="nav-link">Hoa Tốt Nghiệp</a></li>
                    <li><a href="/hoa-dinh-ky" class="nav-link">Hoa Định Kỳ</a></li>
                  </ul>
                </div>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                THIẾT KẾ
              </a>
              <ul class="dropdown-menu">
                <div class="dropdown-inner">
                  <ul class="list-unstyled">
                    <li><a href="/bo-hoa" class="nav-link">Bó hoa</a></li>
                    <li><a href="/lang-hoa" class="nav-link">Lẵng hoa</a></li>
                    <li><a href="/gio-hoa-dep" class="nav-link">Giỏ Hoa</a></li>
                    <li><a href="/ke-hoa-khai-truong" class="nav-link">Kệ hoa</a></li>
                    <li><a href="/binh-hoa" class="nav-link">Bình hoa</a></li>
                    <li><a href="/hop-hoa" class="nav-link">Hộp hoa</a></li>
                  </ul>
                </div>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                HOA TƯƠI
              </a>
              <ul class="dropdown-menu">
                <div class="dropdown-inner">
                  <ul class="list-unstyled">
                    <li><a href="/hoa-hong" class="nav-link">Hoa hồng</a></li>
                    <li><a href="/hoa-baby" class="nav-link">Hoa Baby</a></li>
                    <li><a href="/hoa-huong-duong" class="nav-link">Hoa hướng dương</a></li>
                    <li><a href="/hoa-lan-ho-diep" class="nav-link">Hoa Lan Hồ Điệp</a></li>
                    <li><a href="/hoa-tulip" class="nav-link">Hoa tulip</a></li>
                    <li><a href="/hoa-cuc-tana" class="nav-link">Hoa cúc Tana</a></li>
                    <li><a href="/hoa-thach-thao" class="nav-link">Hoa thạch thảo</a></li>
                    <li><a href="/hoa-mau-don" class="nav-link">Hoa mẫu đơn</a></li>
                    <li><a href="/cuc-mau-don" class="nav-link">Cúc mẫu đơn</a></li>
                    <li><a href="/hoa-cam-tu-cau" class="nav-link">Hoa cẩm tú cầu</a></li>
                    <li><a href="/hoa-ly" class="nav-link">Hoa ly</a></li>
                    <li><a href="/hoa-sen" class="nav-link">Hoa sen</a></li>
                    <li><a href="/hoa-dong-tien" class="nav-link">Hoa đồng tiền</a></li>
                    <li><a href="/hoa-cam-chuong" class="nav-link">Hoa cẩm chướng</a></li>
                    <li><a href="/hoa-cuc-hoa-mi" class="nav-link">Hoa cúc họa mi</a></li>
                  </ul>
                </div>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                HOA CƯỚI
              </a>
              <ul class="dropdown-menu">

              </ul>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                QUÀ TẶNG
              </a>
              <ul class="dropdown-menu">
                <div class="dropdown-inner">
                  <ul class="list-unstyled">
                    <li><a href="/gau-bong" class="nav-link">Gấu bông</a></li>
                    <li><a href="/so-co-la" class="nav-link">Socola</a></li>
                    <li><a href="/banh-kem" class="nav-link">Bánh kem</a></li>
                    <li><a href="/gio-trai-cay" class="nav-link">Giỏ trái cây</a></li>
                    <li><a href="/gio-qua-tang" class="nav-link">Giỏ quà tặng</a></li>
                    <li><a href="/qua-luu-niem" class="nav-link">Quà Lưu Niệm</a></li>
                  </ul>
                </div>
              </ul>
            </li>
        </nav>
        </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="col-md-1"></div>
  </div>
  <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-8 dathoa"><p>ĐẶT HOA ONLINE - GIAO MIỄN PHÍ TP HCM &amp; HÀ NỘI - GỌI NGAY 1900 633 045 HOẶC 0865 160 360</p></div>
    <div class="col-md-1"></div>
  
  </div>
</section>
  <script
						src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
						integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
						crossorigin="anonymous"></script>
					<script
						src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
						integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
						crossorigin="anonymous"></script>

</body>
</html>