<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include  file="/WEB-INF/views/template/header.jsp" %>

	<div class="container-wrapper">
		<div class="container">

			<div class="page-header">
				<h1>Description du produit</h1>
				<p class="lead">Caract&eacute;ristique du produit</p>
			</div>
			
		</div>
		
		
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="<c:url value="/resources/images/${produit.idProduit}.png"/>" alt="photo" style="width:100%; height: 300px" />
				</div>
				<div class="col-md-5">
					<h3>${produit.nomProduit}</h3>
					<p>${produit.descriptionProduit}</p>
					<p>
						<strong>Marque</strong> : ${produit.marqueProduit}
					</p>
					<p>
						<strong>Cat&eacute;gorie</strong> : ${produit.categorieProduit}
					</p>
					<p>
						<strong>Stock</strong> : ${produit.stockProduit}
					</p>
					<h4>${produit.prixProduit} EUR</h4>	
				</div>
			</div>
		
	
	
<%@include  file="/WEB-INF/views/template/footer.jsp" %>		
			