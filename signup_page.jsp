<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- signup_page.html -->
<!DOCTYPE html>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <h1>회원가입</h1>
    <form id="signupForm">
        <label>ID:</label>
        <input type="text" id="username" required><br>
        <label>PASSWORD:</label>
        <input type="password" id="password" required><br>
        <label>NAME:</label>
        <input type="text" id="name" required><br>
        <button type="button" onclick="register()">작성완료</button>
        <br/>
    </form>

    <script>
        function register() {
            const name = document.getElementById("name").value;
            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;

            if (name === "" || username === "" || password === "" || confirmPassword === "") {
                alert("모든 필드를 입력하세요.");
                return;
            }

            if (password !== confirmPassword) {
                alert("비밀번호가 일치하지 않습니다.");
                return;
            }

            // Assuming you have a backend API for user registration, make an AJAX call to it.
            // Replace 'your_registration_api_url' with the actual API endpoint.
            // Make sure to handle success and error responses accordingly.
            // Here's an example of how you might use fetch for the AJAX call:
            fetch('your_registration_api_url', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ name: name, username: username, password: password }),
            })
            .then(response => response.json())
            .then(data => {
                // Handle the response from the server here.
                // For example, display a success message or redirect to the login page.
                alert("회원가입이 완료되었습니다. 로그인하세요.");
                window.location.href = 'login_page_url';
            })
            .catch(error => {
                // If there's an error, show the error message or handle it as needed.
                alert("회원가입에 실패하였습니다. 다시 시도해주세요.");
            });
        }

        function goToLogin() {
            // Redirect to the login page.
            window.location.href = 'login_page_url';
        }
    </script>
</body>
</html>
