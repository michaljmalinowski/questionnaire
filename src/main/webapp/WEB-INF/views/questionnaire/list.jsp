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
<table>
    <thead>
    <tr>
        <th>Lp</th>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Obszar</th>
        <th>Zakres wiekowy</th>
        <th>Płcie</th>
        <th>Status pracownika</th>
        <th>Akcje</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>Test ${q.name}</td>
        <td>Ankieta o ${q.description}</td>
        <td>Wrocław ${q.villages}</td>
        <td>18-65 ${q.age}</td>
        <td>M, F ${q.gender}</td>
        <td>student ${q.workstatus}</td>
        <td>
            <a href="/questionnaire/fill?id=${q.id}">(role All) Wypełnij ${q.id}</a>
            <a href="/questionnaire/modify?id=${q.id}">(role Respondent) Edytuj odpowiedzi ${q.id}</a>
            <a href="/questionnaire/edit?id=${q.id}">(role Editor and Admin) Edytuj ankietę ${q.id}</a>
            <a href="/questionnaire/change-status?id=${q.id}">(role Admin) Aktywuj/Zawieś ${q.id}</a>
        </td>
    </tr>
    </tbody>

    <table>
        <caption> School auction sign-up sheet</caption>
        <thead>
        <tr>
            <th><label for=e1>Name</label>
            <th><label for=e2>Product</label>
            <th><label for=e3>Picture</label>
            <th><label for=e4>Price</label>
        <tr>
            <td>Your name here
            <td>What are you selling?
            <td>Link to a picture
            <td>Your reserve price
        <tbody>
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td>Ms Danus
            <td>Doughnuts
            <td><img src="https://example.com/mydoughnuts.png" title="Doughnuts from Ms Danus">
            <td>$45
        <tr>
            <td><input id=e1 type=text name=who required form=f>
            <td><input id=e2 type=text name=what required form=f>
            <td><input id=e3 type=url name=pic form=f>
            <td><input id=e4 type=number step=0.01 min=0 value=0 required form=f>
    </table>
    <form id=f action="/auction.cgi">
        <input type=button name=add value="Submit">
    </form>
</table>
</body>
</html>