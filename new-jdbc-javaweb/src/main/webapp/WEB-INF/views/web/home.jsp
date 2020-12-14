<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HuanDv | Product</title>
<!-- load Dojo -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

</head>
<body>
	<header>

		<nav class="navbar" style="background-color: aqua;">

			<%
				if (session.getAttribute("user") != null) {
			%>
			<div>
				<div>
					<a class="navbar-brand" href="#"><h4><%=session.getAttribute("user")%></h4></a>
				</div>
				<div>
					<a class="navbar-brand" href='<c:url value="/logout" />'>logout</a>
				</div>
			</div>
			<%
				} else {
			%>
			<a class="navbar-brand" href='<c:url value="/login" />'><strong>Login</strong></a>

			<%
				}
			%>

		</nav>

	</header>

	<div class="container">

	<button class="btn btn-primary"  onclick="window.location.href='/new-jdbc-javaweb/createProduct'">Create product</button>
		<div class="panel panel-default">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Name</th>
						<th scope="col">Image</th>
						<th scope="col">Price</th>
					</tr>
				</thead>
				<tbody>
		    
				<c:forEach items="${listProduct }" var="item">
					<tr>
						<th scope="row"></th>
						<td>${item.name_product }</td>
						<td><img style="width: 40px;" src="${item.image }" alt="${item.name_product }"></td>
						<td><fmt:formatNumber value="${item.price}" minFractionDigits="0"/></td>
						<td><a href='<c:url value="/delete/${item.id_product }" />' onclick="return confirm('ban co muon xoa??')" >xóa</a></td>
						<td><a href='<c:url value="/edit/${item.id_product }" />'>edit</a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>

</body>
</html>