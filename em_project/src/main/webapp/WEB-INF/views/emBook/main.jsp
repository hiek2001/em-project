<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- Index CSS -->
<link rel="stylesheet" href="<c:url value= "/resources/css/main.css"/>">	
<title>Excercise Management</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 sidebar"><br><br>
                <ul class="list">
                    <p class="hello-font">000님 안녕하세요!</p>
                </ul>
                <ul class="list">
                    <p class="bar-font"><strong>Main</strong></p>
                </ul>
                <br><br><br>
                <ul class="list">
                    <p class="bar-font"><strong>My Book</strong></p>
                    <p class="sbar-font"></p>
                </ul>
            </div>
            <div class="col-sm-9">
                <div class="on-box">
                    <div class="on">
                        <p class="font1">&nbsp;&nbsp;&nbsp;FOOD</p>
                        <hr>
                        <p class="font2">0</p>
                    </div>
                    <div class="on2">
                        <p class="font1">&nbsp;&nbsp;&nbsp;EXCERCISE</p>
                        <hr>
                        <p class="font2">0</p>
                    </div>
                    <div class="on2">
                        <p class="font1">&nbsp;&nbsp;&nbsp;BASIC METABOLISM</p>
                        <hr>
                        <p class="font2">0</p>
                    </div>
                </div>
                <div class="down-box">
                    <div class="box1-1 down-left">1-1</div>
                    <div class="box1-2 box3 min-kcal">1-2</div>
                    <div class="box2-1 d-day">2-1</div>
                    <div class="box2-2 pie">2-2</div>
                    <div class="box2-2 ">2-3</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>