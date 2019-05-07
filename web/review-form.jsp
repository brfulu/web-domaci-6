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

<h2>Leave a review</h2>
<form action="review" method="post">
    <label for="first-name">First Name:</label>
    <input type="text" id="first-name" name="first-name" required>
    <br><br>

    <label for="last-name">Last Name:</label>
    <input type="text" id="last-name" name="last-name" required>
    <br><br>

    <label for="rating">Rating:</label>
    <input type="number" id="rating" name="rating" required>
    <br><br>

    <button type="submit">Submit</button>
</form>
</body>
</html>
