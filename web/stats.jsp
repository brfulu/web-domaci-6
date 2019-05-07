<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <title>Stats</title>
</head>
<body>
<h2>Review Stats:</h2>
<c:if test="${empty requestScope.ratings}">
    Nema nijedan unos!
</c:if>

<ul>
    <c:forEach var="entry" items="${requestScope.ratings}">
        <li>
            <c:out value="${entry.key}"/>:
            <fmt:formatNumber type="number" maxFractionDigits="2" value="${entry.value}"/>
        </li>
    </c:forEach>
</ul>

<hr>

<h3>
    <a href="review-form.jsp">Enter new review</a>
</h3>

<jsp:useBean id="today" class="java.util.Date" scope="page" />
<fmt:formatDate type="date" value="${today}"/>
</body>
</html>
