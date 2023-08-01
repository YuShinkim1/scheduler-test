<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- login.html -->
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>로그인</h1>
    <form id="loginForm">
        <label>id:</label>
        <input type="text" id="username" required><br>
        <label>Password:</label>
        <input type="password" id="password" required><br>
        <button type="button" onclick="login()">로그인</button>
        <br/>
        <button type="button" onclick="goToSignUp()">회원가입</button>
    </form>

<script>
    function login() {
        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

        if (username === "" || password === "") {
            alert("아이디와 비밀번호를 모두 입력하세요.");
            return;
        }

        if (username === "1" && password === "admin") {
            // Redirect to the admin main page.
            window.location.href = 'admin_main_page.jsp';
        }else if(username === "1" && password === "1"){
        	
        	window.location.href = 'main_page.jsp';
        } 
        
        else {
            // Redirect to the main page for normal users or show an error message.
            window.location.href = 'main_page_url';
        }
    }

    function goToSignUp() {
        // Redirect to the sign-up page.
        window.location.href = 'signup_page.jsp';
    }
</script>

</body>
</html>
