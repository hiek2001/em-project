<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 <link rel="stylesheet" href="<c:url value= "/resources/css/login.css"/>">
 <c:set value="${pageContext.request.contextPath}" var="path"/>
<title>Login here</title>
</head>
<style>
@media (max-width: 500px) {
	img.img{display:none;}
}

</style>
<body>
 <div class="container-fluid">
        <div class="row">
        <!-- img 영역 -->
            <div class="col-12 col-md-8" style="background-color:rgb(247, 247, 247);">
            	<img class="img" src="${path }/resources/img/login_img.png">
            </div>
            <!-- login 영역 -->
            <div class="col-6 col-md-4 login">
                <br><br><br><br><br><br><br><br><br><br><br><br>
                <span class="login100-form-title p-b-43">Login</span>
                <form action="${path }/loginCheck.do" method="post">
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
	            
	                <div class="container-login100-form-btn">
	                    <input type="submit" class="login100-form-btn" value="start">
	                </div>
	            </form>
                <div class="text-center p-t-46 p-b-20">
                    <span class="txt2">
                        or sign up using
                        </span>
                </div>
            </div>
        </div>
    </div>
</body>
</html>