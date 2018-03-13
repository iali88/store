<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class = "login-container" id="login">

            <h2>Identifiez-vous!</h2>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                
                <c:if test="${not empty erreur}">
                    <div class="erreur" style="color: #ff0000;">${erreur}</div>
                </c:if>
                
                <div class="form-group">
                    <label for="utilisateur">Utilisateur : </label>
                    <input type="text" id="utilisateur" name="utilisateur" class="form-control" />
                </div>
                
                <div class="form-group">
                    <label for="mdp">Mot de passe :</label>
                    <input type="password" id="mdp" name="mdp" class="form-control" />
                </div>

				<div style = "text-align: center;">
                	<input type="submit" value="Valider" class="btn btn-success">
				</div>
				
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            
            </form>

        </div>
        
<%@include  file="/WEB-INF/views/template/footer.jsp" %>		

		

			