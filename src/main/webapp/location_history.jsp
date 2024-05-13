<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        h1 {
            margin-bottom: 0px;
        }
        .input-container {
            display: inline-block;
            margin-right: 10px;
        }
        #history {
            font-family: Arial, Helvetica, sans-serif;
            margin-top: 10px;
            border-collapse: collapse;
            width: 100%;
        }

        #history td, #history th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #history tr:nth-child(even){background-color: #f2f2f2;}

        #history tr:hover {background-color: #ddd;}

        #history th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>
<h1><%= "위치 히스토리 목록" %></h1>
<br/>
<nav>
    <ul style="list-style-type: none; padding: 0;">
        <li style="display: inline;"><a href="index.jsp">홈</a></li>
        <li style="display: inline; padding-left: 10px; padding-right: 10px;">|</li>
        <li style="display: inline;"><a href="location_history.jsp">위치 히스토리 목록</a></li>
        <li style="display: inline; padding-left: 10px; padding-right: 10px;">|</li>
        <li style="display: inline;"><a href="FetchWifiInfoServlet">Open API 와이파이 정보 가져오기</a></li>
    </ul>
</nav>
<table id="history">
    <tr>
        <th>ID</th>
        <th>X좌표</th>
        <th>Y좌표</th>
        <th>조회일자</th>
        <th>비고</th>
    </tr>
</body>
</html>




