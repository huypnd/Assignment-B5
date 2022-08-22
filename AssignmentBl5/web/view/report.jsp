<%-- 
    Document   : report
    Created on : Aug 16, 2022, 11:53:26 AM
    Author     : 84339
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .left{
            float: left;
            margin-bottom: 20px;
        }
        .right{
            float: right;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid;
            text-align: center;
        }
        h1{
            font: 25px;
            color: blue;
            text-align: center;
        }

    </style>
    <body>
        <h1 style="text-align: center">Bảng chấm công</h1>
        <table border="5px">
            <tr>
                <td></td>
                <c:forEach items="${requestScope.dates}" var="d" >
                    <td 
                        <c:if test="${d.dow eq 1 or d.dow eq 7}">
                            style="background-color: aqua" 
                        </c:if>
                        <c:if test="${d.dow ne 1 and d.dow ne 7}">
                            style="background-color: chartreuse" 
                        </c:if>
                        >0
                        <fmt:formatDate pattern = "dd" 
                                        value = "${d.value}" /> <br/>
                        <fmt:formatDate pattern = "EE"
                                        value = "${d.value}" />
                    </td>
                </c:forEach>
                <td>Hours</td>
                <td>Days</td>
                <td>Paid leave </td>
                <td>Unpaid leave </td>
                <td>Holiday </td>
                <td>Total salary </td>
            </tr>
            <c:forEach items="${requestScope.emps}" var="e">
                <tr>
                    <td>${e.name}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td 
                            <c:if test="${d.dow eq 1 or d.dow eq 7}">
                                style="background-color: yellow" 
                            </c:if>
                            >
                            <c:forEach items="${e.timesheets}" var="t">
                                <c:if test="${d.value eq t.cidate}">
                                    ${t.getWorkingHours()}
                                </c:if>
                            </c:forEach>
                        </td>
                    </c:forEach>
                    <td>${e.getWorkingHours()}</td>
                    <td>${e.getWorkingDays()}</td>
                    <td>${e.paidleave}</td>
                    <td>${e.unpaidleave}</td>
                    <td>${e.holiday}</td>
                    <td>${e.salary}</td>
                </tr>
            </c:forEach>
        </table>
        <a style="float: right" href="TimeSheet">Bang luong</a>
    </body>
</html>
