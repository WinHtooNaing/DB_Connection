<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title> Learing JakatarEE</title>
</head>
<body>
<%@ page import="model.* , java.util.*" %>
<div class="container">
<section class="recent-posts">
	<div class="section-title">
		<h2><span>All Stories</span></h2>
	</div>
	<hr>
	<br><br><br>
<div class="card-columns listrecent">
<%
	List<ProductModel> products = (List<ProductModel>) session.getAttribute("products");

for(ProductModel product: products){
%>
	<!-- begin post -->
		<div class="card">
			<a href="#">
				<img class="img-fluid" src="/assets/images/<%= product.getImage() %>" alt="" style="height:250px;width:100%;object-fit:cover;">
			</a>
			<div class="card-block">
				<h2 class="card-title"><a href="#"><%= product.getTitle() %></a></h2>
				<h4 class="card-text"><%= product.getContent() %></h4>
			</div>
		</div><br><br>
	<!-- end post -->
<%
}
%>
</div>
</section>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>