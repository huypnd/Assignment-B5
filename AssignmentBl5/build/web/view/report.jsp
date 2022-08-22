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
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.0/dist/bootstrap-table.min.css">
    </head>
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
        <h1 style="text-align: center">Bảng chấm công</h1></br>
        <div><a style="float: right" href="TimeSheet">Bảng Lương</a></div></br>
        
        <table style="margin: 0 auto" border="5px">
            <tr>
                <td>Name</td>
                <c:forEach items="${requestScope.dates}" var="d" >
                    <td 
                        <c:if test="${d.dow eq 1 or d.dow eq 7}">
                            style="background-color: bisque" 
                        </c:if>
                        <c:if test="${d.dow ne 1 and d.dow ne 7}">
                            style="background-color: aliceblue" 
                        </c:if>
                        >
                        <fmt:formatDate pattern = "dd" 
                                        value = "${d.value}" /> /08<br/>
                        <fmt:formatDate pattern = "EE"
                                        value = "${d.value}" />
                    </td>
                </c:forEach>
                    <td>Hours</td>
                    <td>Days</td>
                    
            </tr>
            <c:forEach items="${requestScope.emps}" var="e">
                <tr>
                    <td>${e.name}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td 
                            <c:if test="${d.dow eq 1 or d.dow eq 7}">
                                style="background-color: bisque" 
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
                    
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
