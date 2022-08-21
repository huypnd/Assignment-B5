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
            text-align: center;
        }

    </style>
    <body>
        <header>
        <h1>Giờ làm theo ngày của nhân viên</h1>
        <div class="left">
            <button>Bảng tính lương</button>
        </div>
        </header>
        <table border="2px" style="width:100%">
            <tr>
                <td></td>
                <c:forEach items="${requestScope.dates}" var="d" >
                    <td> 
                        <!--<c:if test="${d.dow eq 1 or d.dow eq 7}">
                            style="background-color: yellow" 
                        </c:if>
                        <c:if test="${d.dow ne 1 and d.dow ne 7}">
                            style="background-color: bisque" 
                        </c:if>-->
                        
                        <fmt:formatDate pattern = "dd" 
                                        value = "${d.value}" /> <br/>
                        <fmt:formatDate pattern = "EE"
                                        value = "${d.value}" />
                    </td>
                </c:forEach>
                    <td>Số giờ làm</td>
                    <td>Số ngày làm</td>
                    <td>Số ngày nghỉ</td>
            </tr>
            <c:forEach items="${requestScope.emps}" var="e">
                <tr>
                    <td>${e.name}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td> 
                            <!--<c:if test="${d.dow eq 1 or d.dow eq 7}">
                                style="background-color: yellow" 
                            </c:if>-->
                            
                            <!--<c:forEach items="${e.timesheets}" var="t">
                                <c:if test="${d.value eq t.cidate}">
                                    ${t.getWorkingHours()}
                                </c:if>
                            </c:forEach>-->
                        </td>
                    </c:forEach>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
