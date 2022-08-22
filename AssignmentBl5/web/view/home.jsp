

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <header>
        <h1> Lương tháng 8/2022</h1>
        <div class="left">
            <form action="TimeSheet" method="post">
                <input type="text" name="name" value="${name}" placeholder="Search by name">
                <input type="submit" value="Search">
            </form>
        </div>
        <div class="right">
            <a href="report">Bảng chấm công</a>
        </div>
    </header>
    <div class="main">
        <table  class="table" style="width:100%" >
            <tr class="table-primary">
                <th rowspan="2">Họ tên</th>
                <td rowspan="2">Chức vụ</td>
                <td colspan="3">Công</td>
                <td colspan="3">Ngày nghỉ</td>
                <td rowspan="2">Tổng công</td>
                <td rowspan="2">Lương</td>
            </tr>
            <tr class="table-primary">
                <th>Thường</th>
                <td>Cuối tuần</td>
                <td>Ngày lễ</td>
                <th>N không lương</th>
                <td>Phép có lương</td>
                <td>Nghỉ lễ</td>
            </tr>
            <c:forEach var="o" items="${list}">
                <tr>
                    <td>${o.nameEmployee}</td>
                    <td>${o.nameOffice}</td>
                    <td>${o.totalNT}</td>
                    <td>${o.totalCT}</td>
                    <td>${o.totalNl}</td>
                    <td>${o.totalKL}</td>
                    <td>${o.totalCL}</td>
                    <td>${o.totalNL}</td>
                    <td>${o.totalNT+o.totalCT+o.totalNl+o.totalCL}</td>
                    <td>${o.salary}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
