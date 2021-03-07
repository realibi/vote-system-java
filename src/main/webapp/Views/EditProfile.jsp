<%@ page import="models.User" %>
<%@ page import="controllers.UsersController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/Views/Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>Edit profile</h1>

<input type="text" id="#fullName" value='<c:out value="${currentUserFullName}">'>


<%@include file="/Views/Footer.jsp"%>