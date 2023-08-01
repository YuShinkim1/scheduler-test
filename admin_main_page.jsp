<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- admin_main_page.html -->
<!DOCTYPE html>
<html>
<head>
    <title>Admin Main Page</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>회원관리</h1>
    <p>This is the admin main page.</p>
    <!-- Add your admin-specific content here -->
    <button type="button" onclick="logout()">로그아웃</button>

    <table>
        <tr>
            <th>ID</th>
            <th>Password</th>
            <th>Name</th>
            <th>Point</th>
            <th>Modify</th>
            <th>Delete</th>
        </tr>
        <tr>
            <td>1</td>
            <td>password123</td>
            <td>John Doe</td>
            <td>1000</td>
            <td><button type="button" onclick="modify(1, 'password123', 'John Doe', 1000)">수정</button></td>
            <td><button type="button" onclick="remove(1)">삭제</button></td>
        </tr>
        <!-- Add more rows for additional users -->
    </table>

    <script>
        function logout() {
            // Redirect to the login page when the logout button is clicked.
            window.location.href = 'login_page.jsp';
        }

        function modify(id) {
            // Implement logic to handle modify action here, based on the user ID.
            // For example, you can redirect to a modification page with the specific user ID.
            window.location.href = 'modify_user.jsp?id=' + id ;
        }

        function remove(id) {
            // Implement logic to handle delete action here, based on the user ID.
            // For example, you can show a confirmation dialog and delete the user if confirmed.
            var confirmed = confirm('Are you sure you want to delete this user?');
            if (confirmed) {
                // Implement the delete logic here.
                // For this example, let's assume it is a dummy action.
                alert('User with ID ' + id + ' has been deleted.');
            }
        }
    </script>
</body>
</html>
