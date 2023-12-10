<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Main content -->
			<section class="content">
				<div class="card">
					<div class="card-header">
						<h2 class="card-title">Favorites Statistic</h2>
					</div>
					<div class="card-body">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>Id</th>
									<th>Title</th>
									<th>Link</th>
									<th>Total Like</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${videos}" var="item">
								<tr>
									<td>${item.title}</td>
									<td> <a href="video?action=watch&id=${item.href}"> ${item.href}</a></td>
									<td>${item.totalLike}</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<!-- /.card-body -->
				<!-- /.card -->
			</section>
			
			<!-- /.content -->
</body>
</html>