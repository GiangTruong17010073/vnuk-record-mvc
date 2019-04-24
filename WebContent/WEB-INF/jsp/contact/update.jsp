<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/index.css">
		<link rel="stylesheet"  type="text/css" href="css/jquery-ui.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery-ui.js"></script>
		<link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		
        <meta charset="UTF-8">
        <title>Updating contacts</title>
    </head>

    <body>
    
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<%@ taglib tagdir="/WEB-INF/tags" prefix="vnuk" %>
		<c:import url="header.jsp" />
        <h1>Update contacts</h1>

        <form action="updateContact" method="POST">
        	
        	<input type= "hidden" name="id" value="${myContact.id }"/>           
            <vnuk:myInput name="name" id="name" label="Name" value="${myContact.name}" />
            <vnuk:myInput name="address" id="address" label="Address" value="${myContact.address}" />
            <vnuk:myInput name="email" id="email" label="E-mail" value="${myContact.email}" />
            <fmt:formatDate var="date" value='${contact.dateOfBirth.time}' pattern='dd/MM/yy' />
            <vnuk:myDateField name="date_of_birth" id="date-of-birth" label="Date of birth" value="${date}" />
            
            <c:choose>
            	<c:when test="${ param.back == 'list' }">
            		<a href="mvc?action=contact.Index" class="btn btn-xs btn-light">
            			Back to the list of contacts
            		</a>
            	</c:when>
            	
            	<c:when test="${ param.back == 'detail' }">
            		<a href="mvc?action=contact.Show&id=${ myContact.id }" class="btn btn-xs btn-light">
            			Back to the detail of ${ myContact.name }
            		</a>
            	</c:when>
            </c:choose>
                        
            <input class="btn btn-success" type="submit" value="Update" />
        </form>

        <c:import url="footer.jsp" />
		
</html>