<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
    <tr>
        <th rowspan="2">No</th>
        <th rowspan="2">Questionnaire name</th>
        <th rowspan="2">Questionnaire description</th>
        <th rowspan="2">End time</th>
        <sec:authorize access="!hasAnyRole({'EDITOR','ADMIN'})">
            <th colspan="3">You may interested when:</th>
        </sec:authorize>
        <sec:authorize access="hasAnyRole({'EDITOR','ADMIN'})">
            <th colspan="3">We search people who:</th>
            <th rowspan="2">Active</th>
            <th rowspan="2">Answered by</th>
        </sec:authorize>
        <th rowspan="2">Action</th>
    </tr>
    <tr>
        <th>live in</th>
        <th>age beetween</th>
        <th>workstatus like</th>
    </tr>
    <c:forEach items="${questionnairesData}" var="questionnaire" varStatus="no">
        <tr>
            <td>${no.index+1}</td>
            <td>${questionnaire.name}</td>
            <td>${questionnaire.description}</td>
            <td>${questionnaire.endTime}</td>
            <td>${questionnaire.villages}</td>
            <td>${questionnaire.minAge}-${questionnaire.maxAge}</td>
            <td>${questionnaire.workStatuses}</td>
            <sec:authorize access="hasAnyRole({'EDITOR','ADMIN'})">
                <td>
                    <c:choose>
                        <c:when test="${questionnaire.active}">
                            <span class="icon has-text-success">
                                <i class="fas fa-check-square"></i>
                            </span>
                        </c:when>
                        <c:otherwise>
                            <span class="icon has-text-danger">
                                <i class="fas fa-ban"></i>
                            </span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>222</td>
            </sec:authorize>
            <td>
                <sec:authorize access="hasRole('ADMIN')">
                    <c:choose>
                        <c:when test="${questionnaire.active}">
                            <a href="" class="has-text-danger">Off</a>
                        </c:when>
                        <c:otherwise>
                            <a href="" class="has-text-success">On</a>
                        </c:otherwise>
                    </c:choose>
                </sec:authorize>
                <sec:authorize access="hasAnyRole({'EDITOR','ADMIN'})">
                    <c:if test="${!questionnaire.active}">
                        <a href="">Edit</a>
                    </c:if>
                </sec:authorize>
                <sec:authorize access="hasRole('RESPONDENT')">
                    <a href="/respondent/questionnaire">Fill</a>
                    <a href="/respondent/data">Edit my answer</a>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <a href="/respondent/questionnaire">Fill</a>
                </sec:authorize>
            </td>
        </tr>
    </c:forEach>
</table>