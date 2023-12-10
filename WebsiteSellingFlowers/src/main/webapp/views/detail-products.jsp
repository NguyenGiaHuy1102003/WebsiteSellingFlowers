<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping cart information</title>

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
	<!-- HEADER -->
	<section class="header"><%@ include file="/common/header.jsp" %></section>

	<!-- CHI TIET -->	
	
	<section class="chitiet">	
		<div class="container huhu">	
			<div class="row mt-5">
				<!-- image -->
				<div class="row-md-2 "><img src="" width="300px" height="360px" alt=""><div class="col"></div></div>
				<div class="row-md-1">
					<div class="col"></div>
				</div>
				<div class="row-md-12 ">
					<div class="col-md-12">
					
					<div class="namehoa">
						<h2> <!-- name --><!--id-->Khuyến mãi - ${item.name } - 14772</h2>
						<!-- price -->
						<div class="single-price"><span class="old-price">500.000 VNĐ</span>
						<span class="price">450.000 VNĐ</span></div>
						<p class="vat">Giá đã bao gồm 8% VAT - Sản phẩm hỗ trợ giao miễn phí khu vực gần (<a href="/CalcShippingCost.aspx?lang=vn" target="_blank">Chi tiết</a>)</p>
						<div class="pd_summary"></div>
						<h4>Sản phẩm bao gồm:</h4><ul class="material">
						<li>Cẩm chướng đơn viền tím : 25</li><li>Hoa baby : 0.5</li>
						</ul><p>
						<i>Sản phẩm thực nhận có thể khác với hình đại diện trên website</i> <br>
						<i>(đặc điểm thủ công và tính chất tự nhiên của hàng nông nghiệp)</i></p>
						<p class="express-noti">Hoa giao nhanh 60 phút Hồ Chí Minh</p>
						<div class="area_order">
						<!-- add -->
						<a href="" class="btn btn-danger" >Thêm vào giỏ hàng</a>
						</div>
						<div class="offer">
							<h4>ƯU ĐÃI ĐẶC BIỆT</h4>
							<ul class="benefit">
							<li>Tặng banner hoặc thiệp (trị giá 20.000đ - 50.000đ) miễn phí</li>
							<li>Miễn phí giao khu vực nội thành (<a href="https://hoayeuthuong.com/CalcShippingCost.aspx?lang=vn" target="_blank"><strong>chi tiết</strong>)</a></li>
							<li>Giao gấp trong vòng 2 giờ</li>
							<li>Cam kết 100% hoàn lại tiền nếu Bạn không hài lòng</li>
							<li>Cam kết hoa tươi trên 3 ngày</li>
							</ul>
							</div>
						</div>
						
					</div>
				</div>
			</div>
				
			
		</div>
		
	</section>

	<!-- FOOTER -->
	<section class="footer"><%@ include file="/common/footer.jsp"%></section>
	<style>
	.namehoa h2 {
    font-weight: 600;
    color: #bd2026;
    font-size: 25px;
    margin-bottom: 10px;
}
.offer {
    border: 1px solid #ebebeb;
    padding: 10px 12px;
    position: relative;
    margin-top: 20px;
    color: #288ad6;
    font-size: 14px;
}
.offer h4 {
    font-size: 18px;
    margin: 0;
    font-weight: 600;
    display: inline-block;
    position: absolute;
    left: 49px;
    top: -14px;
    color: #288ad6;
    padding: 0 14px;
    background-color: #fff;
    text-transform: uppercase;
}

.single-price .old-price {
    font-size: 16px;
    font-weight: 400;
    color: #83868c;
    margin: 0 14px 0 0;
    text-decoration: line-through;
}
.single-price .price {
    font-size: 20px;
    font-weight: 600;
    color: #bd2026;
}

</style>
</body>
</html>