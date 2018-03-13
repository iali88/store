<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<%@include file="/WEB-INF/views/template/header.jsp" %>
	
		<!-- Carousel
	    ================================================== -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide accueil-image"
						src="<c:url value="resources/images/grid1.jpg" />" 
						alt="slide 1">
					<div class="container">
						<div class="carousel-caption">
							<h2>Bienvenue dans notre boutique en ligne</h2>
							<p>
								
							</p>
							<p>
								<a class="btn btn-lg btn-primary" href="<c:url value="/produits"/>" role="button">Consulter nos produits</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide"
						src=""
						alt="">
					<div class="container">
						<div class="carousel-caption">
							<h1>Disponible sur tous vos &eacute;crans</h1>
							
						</div>
					</div>
				</div>
				
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- /.carousel -->
	
	
		<!-- Marketing messaging and featurettes
	    ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->
	
		<div class="container marketing">
		
		<div style="text-align: center;">
			<img src="<c:url value="resources/images/services.png" />" >
		</div>
	
			
	<%@include  file="/WEB-INF/views/template/footer.jsp" %>	