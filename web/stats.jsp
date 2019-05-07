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
<ul>
    <c:forEach var="entry" items="${requestScope.ratings}">
        <li>
            <c:out value="${entry.key}"/>: <c:out value="${entry.value}"/>
        </li>
    </c:forEach>
</ul>
<br>
<h3><a href="review-form.html">Enter new review</a></h3>
</body>
</html>
