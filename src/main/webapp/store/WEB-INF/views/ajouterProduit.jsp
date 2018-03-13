<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

	<div class="container-wrapper">
		<div class="container">

			<div class="page-header">
				<h1>Ajouter un produit</h1>
				<p class="lead">Veuillez saisir les caract&eacute;ristiques de votre produit.</p>
			</div>
			
			
		
			<form:form action="${pageContext.request.contextPath}/admin/inventaireProduit/ajouterProduit" method="post" commandName="produit" enctype="multipart/form-data">
				
				<div class="form-group">
					<label for="name">Nom</label> <form:errors path="nomProduit" cssStyle="color: #ff0000;"/>
					<form:input path="nomProduit" id="name" class="form-control" />
				</div>
			
				<div class="form-group">
					<label for="categorie">Cat&eacute;gorie</label> <br/>
					<label class="checkbox-inline no-padding"> <form:radiobutton path="categorieProduit" id="categorie" value="instrument"/> Instrument </label>
					<label class="checkbox-inline no-padding"> <form:radiobutton path="categorieProduit" id="categorie" value="jeux"/> Jeux </label>
					<label class="checkbox-inline no-padding"> <form:radiobutton path="categorieProduit" id="categorie" value="objet"/> Objet </label>
				</div>
			
				<div class="form-group">
					<label for="description">Description</label>
					<form:textarea path="descriptionProduit" id="description" class="form-control" rows="5" />
				</div>
				
				<div class="form-group">
					<label for="prix">Prix</label> <form:errors path="prixProduit" cssStyle="color: #ff0000;"></form:errors>
					<form:input path="prixProduit" id="prix" class="form-control" />
				</div>
				
				<div class="form-group">
					<label for="etat">&Eacute;tat</label> <br/>
					<label class="checkbox-inline no-padding"> <form:radiobutton path="etatProduit" id="etat" value="neuf"/> Neuf </label>
					<label class="checkbox-inline no-padding"> <form:radiobutton path="etatProduit" id="etat" value="occasion"/> Occasion </label>	
				</div>
				
				<div class="form-group">
					<label for="stock">Stock</label> <form:errors path="stockProduit" cssStyle="color: #ff0000;"></form:errors>
					<form:input path="stockProduit" id="stock" class="form-control" />
				</div>
				
				<div class="form-group">
					<label for="marque">Marque</label>
					<form:input path="marqueProduit" id="marque" class="form-control" />
				</div>
				
				<div class="form-group">
					<label class="control-label" for="img">Image produit</label>
					<form:input path="imageProduit" id="img" type="file" class="form:input-large" />
				</div>
				
				
				<br/><br/>
				
				<input type="submit" value="valider" class="btn btn-defaut">
				<a href="<c:url value="/admin/inventaireProduit" />" class="btn btn-defaut">Annuler</a>
				
			</form:form>
		
		
<%@include  file="/WEB-INF/views/template/footer.jsp" %>		
			