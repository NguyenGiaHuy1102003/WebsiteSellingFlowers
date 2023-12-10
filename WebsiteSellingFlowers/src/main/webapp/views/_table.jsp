<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table border="1" style="width:100%">
<style>
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    a.button {
        background-color: #007BFF;
        color: white;
        padding: 8px 16px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        border-radius: 5px;
    }

    a.button:hover {
        background-color: #0056b3;
    }
</style>

<tr>
	<th>Mã sản phẩm</th> 
	<th>Tên sản phẩm</th>
	<th>Giá</th>
	<th>Hình ảnh</th>
</tr>
<c:forEach var="item" items="${items}">
	<tr>
		<td>${item.id}</td>
		<td>${item.name}</td>
		<td>${item.price}VNĐ</td>
		<td align="center">
		<img src="/uploads/${item.photo }" width="100" height="100"/></td>
		
		<td>
			<a href="/admin/edit/${item.id}">Chỉnh sửa</a>
		</td>
	</tr>
</c:forEach>
</table>