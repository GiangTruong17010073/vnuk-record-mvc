<%@ tag language="java" description='My name field' pageEncoding="UTF-8"%>
<%@ attribute name="name" required="true" %>
<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" %>

<div>
	<label for="${id}">${label}: </label>
	<input name="${name}" id="${id}" value="${value}">
</div>
