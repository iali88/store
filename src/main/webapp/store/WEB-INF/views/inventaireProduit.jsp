<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include  file="/WEB-INF/views/template/header.jsp" %>

	<div class="container-wrapper">
		<div class="container">

			<div class="page-header">
				<h1>Inventaire produits</h1>
				<p class="lead">Vous pouvez g&eacute;rer vos produits sur cette page.</p>
			</div>
			
			
			<table class="table table-striped table-hover">
				<thead>
					<tr class="bg-succes">
						<th>Photo</th>
						<th>Nom</th>
						<th>Cat&eacute;gorie</th>
						<th>&Eacute;tat</th>
						<th>Prix</th>
						<th>Action</th>
					</tr>
				</thead>

				<c:forEach items="${listeProduits}" var="produit">
					<tr>
						<td><img src="<c:url value="/resources/images/${produit.idProduit}.png"/>" alt="photo" style="width:100%" /></td>
						<td>${produit.nomProduit}</td>
						<td>${produit.categorieProduit}</td>
						<td>${produit.etatProduit}</td>
						<td>${produit.prixProduit} EUR</td>
						<td>
							<a href="<spring:url value="/produits/detailsProduit/${produit.idProduit}"/>" ><span class="glyphicon glyphicon-chevron-right"></span></a>
							
							<a href="<spring:url value="/admin/inventaireProduit/modifierProduit/${produit.idProduit}"/>" ><span class="glyphicon glyphicon-pencil"></span> </a>
							
							<a href="<spring:url value="/admin/inventaireProduit/supprimerProduit/${produit.idProduit}"/>" ><span class="glyphicon glyphicon-remove"></span></a>
						
						</td>
					
					</tr>
			
				</c:forEach>
			
			</table>
			
			
			<a href="<spring:url value="/admin/inventaireProduit/ajouterProduit"/>" class="btn btn-primary">Ajouter un produit</a>
	
<%@include  file="/WEB-INF/views/template/footer.jsp" %>		
			