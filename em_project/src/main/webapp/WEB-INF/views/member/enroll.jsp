<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 <link rel="stylesheet" href="<c:url value= "/resources/css/enroll.css"/>">
 <c:set value="${pageContext.request.contextPath}" var="path"/>
<title>Enroll member</title>
</head>
<body>
<div class="container-fluid">
        <div class="row">
            <!-- img 영역 -->
            <div class="col-12 col-md-8" style="background-color:rgb(247, 247, 247);">
                <img class="img" src="${path }/resources/img/login_img.png">
            </div>
            <!-- login 영역 -->
            <div class="col-6 col-md-4 login">
                <br><br>
                <span class="login100-form-title p-b-43">Join membership</span>
                <form action="${path }/memberEnrollEnd.do" method="post">
                    <div class="wrap-input100 validate-input" data-validate="Name is required">
                        <input class="input100 has-val" type="text" name="name" required="required">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Name</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100 has-val" type="text" name="email" required="required">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Email</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100 has-val" type="password" name="password" required="required">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Password</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Password2 is required">
                        <input class="input100 has-val" type="password" name="password2" required="required">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Password Check</span>
                    </div>
                    <div class="wrap-input300 validate-input" data-validate="gender is required">
                        <input class="input100 has-val" type="text" name="gender" required="required" placeholder="(ex)여자">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Gender</span>
                    </div>
                    <div class="wrap-input200 validate-input margin-left" data-validate="age is required">
                        <input class="input100 has-val" type="number" name="age" required="required">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Age</span>
                    </div>
                    <div class="wrap-input200 validate-input margin-left" data-validate="height is required">
                        <input class="input100 has-val" type="number" name="height" required="required">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Height</span>
                    </div>
                    <div class="wrap-input200 validate-input margin-left" data-validate="weight is required">
                        <input class="input100 has-val" type="number" name="weight" required="required">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Weight</span>
                    </div>
                    <div class="container-login100-form-btn">
                        <input type="submit" class="login100-form-btn" value="OK">
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>