<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>와이파이 정보 구하기</title>
    <style>
        h1 {
            margin-bottom: 0px;
        }
        .input-container {
            display: inline-block;
            margin-right: 10px;
        }
        #wifi {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            margin-top: 10px;
            border-collapse: collapse;
            width: 100%;
        }

        #wifi td, #wifi th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #wifi tr:nth-child(even){background-color: #f2f2f2;}

        #wifi tr:hover {background-color: #ddd;}

        #wifi th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #04AA6D;
            color: white;
        }
    </style>
    <script>
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }

        function showPosition(position) {
            var latitude = position.coords.latitude;
            var longitude = position.coords.longitude;
            document.getElementById("latitude").value = latitude;
            document.getElementById("longitude").value = longitude;
        }
    </script>
</head>
<body>
<h1><%= "와이파이 정보 구하기" %></h1>
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
<div class="input-container">
    <label for="latitude">LAT :</label>
    <input id="latitude" type="text" placeholder="Enter Latitude" value="0.0">
</div>
<div class="input-container">
    <label for="longitude">LNT :</label>
    <input id="longitude" type="text" placeholder="Enter Longitude" value="0.0">
</div>
<button onclick="getLocation()">내 위치 가져오기</button>
<button>근처 WIPI 정보 보기</button>
<a href="hello-servlet">Hello Servlet</a>
<table id="wifi">
    <tr>
        <th>거리(Km)</th>
        <th>관리번호</th>
        <th>자치구</th>
        <th>와이파이명</th>
        <th>도로명주소</th>
        <th>상세주소</th>
        <th>설치위치(층)</th>
        <th>설치유형</th>
        <th>설치기관</th>
        <th>서비스구분</th>
        <th>망종류</th>
        <th>설치년도</th>
        <th>실내외구분</th>
        <th>WIFI접속환경</th>
        <th>X좌표</th>
        <th>Y좌표</th>
        <th>작업일자</th>
    </tr>
</body>
</html>




