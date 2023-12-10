<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HT Flower</title>
<link rel="shortcut icon" type="image/png" href="/img/logoblue.png" />
<link rel="stylesheet" href="/css/css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<style>
.me-2 {
	margin-right: 0rem !important;
}
</style>
<body>
	<!-- HEADER -->
	<section class="header"><%@ include file="/common/header.jsp" %></section>
	<!-- BANNER -->
	<section class="header"><%@ include file="/common/banner.jsp" %></section>
	<!-- BODY -->
	<section class="mybody"></section>
	<hr class="mt-0">
	<div class="container">

		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExample" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExample" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="text-center mt-5">
		<h4>ĐANG GIẢM GIÁ</h4>
	</div>
	</div>

	<!-- Code ở đây !!! -->
	<div class="row icon_flower">
		<c:forEach items="${items}" var="item">
			<div class="col-md-3 text-center mt-3">
				
				<!-- photo -->
				<ul class="items">
				<!-- id -->
				<h6 class="text-center">Sản phẩm ${item.id }</h6>
				<a href="/shopping-cart/addProduct/${item.id }"> <img class="imghoa" src="/img/${item.photo }"
					height="270px" width="270px" alt="">
				</a>
				<!-- name -->
				<h5 class="text-center">${item.name }</h5>
				<!-- price -->
				<div class="price text-center">
					<span class="price-new">${item.price }VNĐ</span>
				</div>
				</a>
				<!-- list id -->
				<div class="buynow-button text-center mt-2">
					<a href="/shopping-cart/add/${item.id }" style = " text-decoration: none">THÊM GIỎ HÀNG</a>
				</div>
				<div class="mt-3"></div>
				</ul>		
				
			</div>
			<br>
		</c:forEach>
		<br>
	</div>
	<!-- QC -->
	<section class="QC"><%@ include file="/common/qc.jsp" %></section>
	<div class="row icon_flower">
		<c:forEach items="${items}" var="item">
			<div class="col-md-3 text-center mt-3">
				
				<!-- photo -->
				<ul class="items">
				<!-- id -->
				<h6 class="text-center">Sản phẩm ${item.id }</h6>
				<a href="/shopping-cart/detailProducts"> <img class="imghoa" src="/img/${item.photo }"
					height="270px" width="270px" alt="">
				</a>
				<!-- name -->
				<h5 class="text-center">${item.name }</h5>
				<!-- price -->
				<div class="price text-center">
					<span class="price-new">${item.price }VNĐ</span>
				</div>
				</a>
				<!-- list id -->
				<div class="buynow-button text-center mt-2">
					<a href="/shopping-cart/add/${item.id }" style = " text-decoration: none">THÊM GIỎ HÀNG</a>
				</div>
				<div class="mt-3"></div>
				</ul>		
				
			</div>
			<br>
		</c:forEach>
		<br>
	</div>
	<div class="mt-5"></div>
	<div class="row">
		
		
		<br>
	</div>
	<hr>
	<!-- FOOTER -->
	<section class="footer"><%@ include file="/common/footer.jsp"%></section>


	<script
						src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
						integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
						crossorigin="anonymous"></script>
					<script
						src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
						integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
						crossorigin="anonymous"></script>
</body>
<style>

</style>
</html>