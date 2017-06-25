<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 22.06.2017
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="/css/addCompany.css">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body >

<form:form cssStyle="margin-top: 2%" modelAttribute="addCompany" action="/addCompany"  method="post">
    <form:input   path="name"/>
    <form:input path="value"/>
    <button>add</button>
</form:form>

<div class="a">
<ol>
    <q:forEach var="com" items="${Company}">
        <li>${com.name}, ${com.value}
            <%--<c:forEach var="a" items="${com.companies}">--%>
                <%--${a.company.name}--%>
            <%--</c:forEach>--%>
                 <a href="/deleteCompany/${com.id}"> delete </a>
            <a href="/updateCompany/${com.id}"> update </a>
        </li>

    </q:forEach>

</ol>
</div>
</body>