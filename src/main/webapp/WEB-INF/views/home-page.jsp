<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj projekcie questionnaire</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<section class="section">
    <div class="container">
        <h1 class="title">
            <sec:authorize access="hasRole('ADMIN')">

            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                Witaj, ${username} w projekcie questionnaire!
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
                Witaj w projekcie questionnaire!
            </sec:authorize>
        </h1>
    </div>
</section>
</body>
</html>