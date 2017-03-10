<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="org.springframework.security.core.AuthenticationException"%>
<%@ page import="org.springframework.security.oauth2.common.exceptions.UnapprovedClientAuthenticationException"%>
<%@ page import="org.springframework.security.web.WebAttributes"%>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="o" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:message code="approve.title" var="title"/>
<o:header title="${title}"/>
<o:topbar pageName="Approve" />
<div class="container main">

	<div class="well" style="text-align: center">
		<h1><c:choose>
				<c:when test="${empty client.clientName}">
					<em><c:out value="${client.clientId}" /></em>
				</c:when>
				<c:otherwise>
					<em><c:out value="${client.clientName}" /></em>
				</c:otherwise>
			</c:choose>
			<spring:message code="device.has-been-approved" />
		</h1>

		<div><spring:message code="device.approved" /></div>

	</div>
</div>
<o:footer/>
