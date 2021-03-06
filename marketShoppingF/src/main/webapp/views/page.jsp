<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- for ajax request to activate and deactivate products -->
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">


<title>DAILY MARKET - ${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Theme CSS -->
<link href="${css}/template-theme-minty.css" rel="stylesheet">

<!-- Bootstrap DataTable jQuery -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="se-pre-con"></div><!-- for loading gif -->

	<div class="wrapper"> <!-- to avoid footer prblm wrap the whole body in class called wrapper -->

<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>


		<!-- Page Content -->

		<div class="content">  <!-- to avoid footer prblm wrap the page content in class called content -->
		
		<!-- loading home page -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>
			
			<!-- loads when user clicks About us -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>
			
			<!-- loads when user clicks Contact us -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<!-- loads when user clicks product page -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
			
			<!-- loads when user clicks show product icon in all products page -->
			<c:if test="${userClickShowProduct == true }">
				<%@include file="singleProduct.jsp"%>
			</c:if>
			
			<!-- loads when user clicks manage product page -->
			<c:if test="${userClickManageProducts == true}">
				<%@include file="manageProducts.jsp"%>
			</c:if>

			<!-- loads when user clicks manage product page -->
			<c:if test="${userClickShowCart == true}">
				<%@include file="cart.jsp"%>
			</c:if>
						

		</div>
		
		
		<!-- /.container -->

		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>
		<!-- /.container -->

		<!-- should be in the same order -->
		
		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<!-- jQuery validation -->
		<script src="${js}/jquery.validate.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- datatables -->
		<script src="${js}/jquery.dataTables.js"></script>
		
		<!-- datatables bootstrap js -->
		<script src="${js}/dataTables.bootstrap.js"></script>

		<!-- bootbox js -->
		<script src="${js}/bootbox.min.js"></script>
			
		<!-- Self coded JavaScript File -->
		<script src="${js}/myapp.js"></script>
		<!-- used for active menu -->

	</div>

</body>

</html>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		






















