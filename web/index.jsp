<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>
    <c:out value="${requestScope.message}"/>
</h2>
<h3>
    <a href="review-form.jsp">Enter new review</a>
</h3>
<h3>
    <a href="review">See stats</a>
</h3>
</body>
</html>
