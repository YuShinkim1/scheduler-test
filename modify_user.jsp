<!-- modify_user.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Modify User</title>
</head>
<body>
    <h1>회원 정보 수정</h1>
    <form action="update_user.jsp" method="post">
        <label for="id">ID:</label>
        <input type="text" id="id" name="id" value="<%= request.getParameter("id") %>">
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="<%= request.getParameter("pw") %>">
        <br>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= request.getParameter("name") %>">
        <br>
        <label for="point">Point:</label>
        <input type="text" id="point" name="point" value="<%= request.getParameter("point") %>">
        <br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
