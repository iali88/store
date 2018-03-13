<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%@include  file="/WEB-INF/views/template/header.jsp" %>

	<div class="container-wrapper">
		<div class="container">

			<div class="page-header">
				<h1>Espace admin</h1>
				<p class="lead">Votre compte</p>
			</div>
			
			<c:if test="${pageContext.request.userPrincipal.name != null}"></c:if>
				<h2>
					Bienvenue : ${pageContext.request.userPrincipal.name} |  <a href="<c:url value="/j_spring_security_logout" />">Se d&eacute;connecter</a>
				</h2>
			
			<h3>
				<a href="<c:url value="/admin/inventaireProduit" />" >Inventaire de vos produits</a>
			</h3>
			
			<p>Ajouter, modifier, supprimer vos produits.</p>
			
	
<%@include  file="/WEB-INF/views/template/footer.jsp" %>		
			