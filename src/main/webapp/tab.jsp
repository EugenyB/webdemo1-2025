<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabulation</title>
</head>
<body>
    <h1>Tabulation</h1>
    <jsp:useBean id="calculator" type="ua.edu.nuos.webdemo1.logic.Calculator" scope="request"/>
    <table>
        <thead>
        <tr>
            <th>X</th>
            <th>Y</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${calculator.points}" var="p">
                <tr>
                    <td>
                        <fmt:formatNumber value="${p.x}" type="number" maxFractionDigits="2" minFractionDigits="2"/>
                    </td>
                    <td>
                        <fmt:formatNumber value="${p.y}" type="number" maxFractionDigits="2" minFractionDigits="2"/>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
