<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="section">
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <!--
            <a class="navbar-item" href="https://bulma.io">
                <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
            </a>-->
        </div>
        <div class="navbar-menu is-active">
            <div class="navbar-start">
                <a href="/" class="navbar-item">
                    Main
                </a>
            </div>
            <sec:authorize access="hasRole('ADMIN')">
                <a href="/admin" class="navbar-item">Editor Management</a>
            </sec:authorize>
            <sec:authorize access="hasAnyRole({'EDITOR','ADMIN'})">
                <a href="/worker" class="navbar-item">Questionnaire Management</a>
            </sec:authorize>
            <sec:authorize access="hasRole('RESPONDENT')">
                <a href="/respondent/questionnaire" class="navbar-item">Questionnaire Management</a>
                <a href="/respondent/data" class="navbar-item">My data</a>
            </sec:authorize>

            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                        <sec:authorize access="isAuthenticated()">
                            <a href="" class="button is-warning">Change password</a>
                            <a href="/logout" class="button is-danger">
                                Log out
                            </a>
                        </sec:authorize>
                        <sec:authorize access="!isAuthenticated()">
                            <a href="/register" class="button is-primary">
                                <strong>Sign up</strong>
                            </a>
                            <a href="/login" class="button is-light">
                                Log in
                            </a>
                        </sec:authorize>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</section>