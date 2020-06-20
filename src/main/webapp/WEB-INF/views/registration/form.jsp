<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<section class="section">
    <div class="container">
        <form:form method="post" action="/register" modelAttribute="registrationData">
            <div class="control">
                <form:label path="username" class="label">Username: <form:input
                        path="username"
                        required="required" class="input"/>
                </form:label><form:errors path="username"/>
            </div>
            <div class="control">
                <form:label path="email" class="label">e-mail: <form:input path="email"
                                                                           type="email"
                                                                           required="required"
                                                                           class="input"/>
                </form:label><form:errors path="email"/>
            </div>
            <div class="control">
                <form:label path="password" class="label">Password: <form:password path="password"
                                                                                   required="required"
                                                                                   class="input"/>
                </form:label><form:errors path="password"/>
            </div>
            <div class="control">
                <form:label path="yearOfBirth" class="label">Year of birth: <form:input path="yearOfBirth"
                                                                                        required="required"
                                                                                        class="input"/>
                </form:label><form:errors path="yearOfBirth"/>
            </div>
            <div class="control">
                <form:label path="village" class="label">You live in village: <form:input path="village"
                                                                                          required="required"
                                                                                          class="input"/>
                </form:label><form:errors path="village"/>
            </div>
            <div class="control">
                <form:label path="gender" class="label">Your gender is: <form:input path="gender"
                                                                                    required="required"
                                                                                    class="input"/>
                </form:label><form:errors path="gender"/>
            </div>
            <div class="control">
                <form:label path="workStatus" class="label">Workstatus: <form:input path="workStatus"
                                                                                    required="required"
                                                                                    class="input"/>
                </form:label><form:errors path="workStatus"/>
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