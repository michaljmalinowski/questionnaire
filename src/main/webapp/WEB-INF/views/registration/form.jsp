<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Zarejestruj się</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<h1>Zarejestruj nowe konto</h1>
<section class="section">
    <div class="container">
        <form:form method="post" action="/register" modelAttribute="registrationData">
            <div class="control">
                <form:label path="username" class="label">Nazwa użytkownika: <form:input
                        path="username"
                        required="required" class="input"/>
                </form:label><form:errors path="username"/>
            </div>
            <div class="control">
                <form:label path="email" class="label">Adres e-mail: <form:input path="email"
                                                                                 type="email"
                                                                                 required="required"
                                                                                 class="input"/>
                </form:label><form:errors path="email"/>
            </div>
            <div class="control">
                <form:label path="password" class="label">Hasło: <form:password path="password"
                                                                                required="required"
                                                                                class="input"/>
                </form:label><form:errors path="password"/>
            </div>
            <div class="control">
                <form:button type="submit"
                             class="button is-primary">Zarejestruj</form:button><form:button
                    type="reset" class="button is-secondary">Wyczyść</form:button>
            </div>
        </form:form>
    </div>
</section>
</body>
</html>