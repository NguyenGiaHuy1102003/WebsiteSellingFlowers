<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<style>
.haha {
	height: 235px;
	max-width: 300px;
	margin: 10px;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.hihi {
	width: 700px;
	margin: 10px;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

#header-cart button {
	background: #ed6b87;
	color: #fff;
	border: none;
}

.fa-solid, .fas {
	font-family: "Font Awesome 6 Free";
	font-weight: 900;
}

.btn {
	font-size: 1.4rem !important;
}

.each-row {
	width: 100%;
	float: left;
	padding-bottom: 7px;
	font-size: 14px;
}
</style>
<body>
	
	<div class="container">
		<div class="row">
			<div class="col hihi">
				<div class="row text-center each-row">
					<div class="col-md-1">
						<strong>Mã sp</strong>
					</div>
					<div class="col-md-2">
						<strong>Ảnh</strong>
					</div>
					<div class="col-md-2">
						<strong>Tên sp</strong>
					</div>
					<div class="col-md-2">
						<strong>Giá</strong>
					</div>
					<div class="col-md-2">
						<strong>Số lượng</strong>
					</div>
					<div class="col-md-2">
						<strong>Tiền</strong>
					</div>
					<div class="col-md-1">
						<strong></strong>
					</div>
				</div>
				<br> <br>
				<hr>
				<br>
				<c:forEach var="item" items="${CART_ITEMS}">
					<form action="/shopping-cart/update" method="post">
						<div class="row text-center each-row">
							<input type="hidden" name="id" value="${item.productId}" />
							<!-- id -->
							<div class="col-md-1">${item.productId }</div>
							<!-- photo -->
							<div class="col-md-2">
								<img
									src="/img/${item.image }"
									width="50px" height="50px" alt="">
							</div>
							<!-- name -->
							<div class="col-md-2">${item.name }</div>
							<!-- price -->
							<div class="col-md-2">${item.price} VNĐ</div>
							<!-- qty -->
							<div class="col-md-2">
								<input name="qty" value="${item.qty}"
									onblur="this.form.submit()" type="number" value="1" min="1"
									max="99" step="1" id="qty" style="width: 50px;">
							</div>
							<!-- amount -->
							<div class="col-md-2">${item.price*item.qty} VNĐ</div>
							<!-- remove -->
							<div class="col-md-1">
								<a class="close remove-item"
									style="color: #000000; text-decoration: none;"
									href="/shopping-cart/remove/${item.productId }"> <i
									class="fas fa-times" style="font-weight: 800;"></i></a>
							</div>

						</div>
						<br> <br> <br> <br>
						<hr>
						<br> <br>
				</c:forEach>
				</form>

				<hr style="border: none; height: 1px; background-color: #dadada;">
				<a class="btn btn-danger btn-sm" href="/shopping-cart/clear">Xóa tất cả sản phẩm</a> <br> <br>
				<a class="btn btn-success btn-sm" href="/product/views">Về trang chủ</a>								
			</div>

			<div class="col-md-8 haha">
				<div class="row each-row">
					<div class="col">Tạm tính:</div>
					<div class="col-md-6">${TOTAL} VNĐ</div>
				</div>
				<div class="row each-row">
					<div class="col">Phụ phí:</div>
					<div class="col-md-6">--</div>
				</div>
				<div class="row each-row">
					<div class="col">Giảm giá:</div>
					<div class="col-md-6">--</div>
				</div>
				<div class="row each-row">
					<div class="col">Hóa đơn VAT:</div>
					<div class="col-md-6">${TOTAL} VNĐ</div>
				</div>
				<br> <br> <br> <br> <br> <br> <br>
				<hr>
				<div class="row each-row">
					<div class="col">
						<strong>Tổng cộng:</strong>
					</div>
					<div class="col-md-6">${TOTAL} VNĐ</div>
				</div>
				<div class="row each-row mt-2">
					<button type="button" class="btn btn-danger">Đặt hàng</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>





