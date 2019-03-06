<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Index CSS -->
<title>Excercise Management</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<style>
 .sidebar {
        background: linear-gradient(to right, #1fa2ff, #12d8fa, #a6ffcb);
        height: 100vh;
    }
    
    .bar-font {
        font-size: 30px;
        zoom: 1.2;
        font-family: 'Kanit', sans-serif;
        padding-top: 30px;
        color: snow;
    }
    
    .on {
        background-color: skyblue;
        border-radius: 10px;
        box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.5);
        height: 15vh;
        margin-left: 1%;
        margin-top: 2%;
    }
    
    .font1 {
        color: seashell;
        font-size: 15px;
        font-family: 'Kanit', sans-serif;
        zoom: 1.1;
    }
    
    .font2 {
        color: seashell;
        font-size: 35px;
        font-weight: 300;
        text-align: right;
        margin-right: 5px;
    }
    
    .box1 {
        background-color: lightseagreen;
        height: 38vh;
        border-radius: 10px;
        box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.5);
        margin-top: 3%;
    }
    
    .box2 {
        background-color: lightseagreen;
        height: 38vh;
        border-radius: 10px;
        box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.5);
        margin-top: 4.5%;
    }
    
    .hello-font {
        color: seashell;
        font-size: 18px;
        font-family: '나눔바른고딕', sans-serif;
        zoom: 1.1;
    }
    .logout {
    	position:relative;
    	left:10px;
    }
</style>

</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-2 sidebar"><br><br>
                <ul class="list">
                    <p class="hello-font">${memberLoggedIn.name }님, 반갑습니다!</p>
                </ul>
                <ul class="list">
                    <p class="bar-font"><strong>Main</strong></p>
                </ul>
                <br><br><br>
                <ul class="list">
                    <p class="bar-font"><strong>My Book</strong></p>
                    <p class="sbar-font"></p>
                </ul>
                <img src="${path }/resources/img/logout.png">
               	<a class="hello-font" href="${path }/memberLogout.do">Logout</a>
            </div>
             <div class="col-sm-10">
                <div class="row">
                    <div class="col-md-4">
                        <div class="on">
                            <p class="font1">&nbsp;&nbsp;&nbsp;FOOD</p>
                            <hr>
                            <p class="font2">0</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="on">
                            <p class="font1">&nbsp;&nbsp;&nbsp;EXCERCISE</p>
                            <hr>
                            <p class="font2">0</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="on">
                            <p class="font1">&nbsp;&nbsp;&nbsp;BASIC METABOLISM</p>
                            <hr>
                            <p class="font2">${memberLoggedIn.bm }</p>
                        </div>
                    </div>
                </div>

                <div class="down-box">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box1">1-1</div>
                        </div>
                        <div class="col-md-6">
                            <div class="box1">1-2</div>
                        </div>
                        <div class="col-md-4">
                            <div class="box2">2-1</div>
                        </div>
                        <div class="col-md-4">
                            <div class="box2">2-2</div>
                        </div>
                        <div class="col-md-4">
                            <div class="box2">2-3</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>