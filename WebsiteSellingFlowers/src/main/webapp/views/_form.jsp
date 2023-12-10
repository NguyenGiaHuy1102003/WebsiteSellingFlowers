<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form action="index" modelAttribute="list" enctype="multipart/form-data">
	<form:input  path="id" placeholder=" Mã sản phẩm"/>
	<br> <br>
	<form:input path="name" placeholder=" Tên sản phẩm"/>
	<br> <br>
	<form:input path="price" placeholder="Giá"/>
	<br> <br>
	<div class="form-group">
                <label for="photo">Hình ảnh</label>
                <input type="file" class="form-control" name="image" accept="image/png, image/jpeg, image/jpg"/>
            </div>
	<br> <br>
	<hr>
	<button formaction="/admin/views">ADMIN</button>
	<button formaction="/admin/create">Create</button>
	<button formaction="/admin/update">Update</button>
	<a href="/admin/delete/${list.id}">Delete</a>
	<a href="/admin/index">Reset</a>
	
</form:form>
