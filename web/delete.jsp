<%@ page import="app.DAO.UserJdbcDAO" %>
<%@ page import="app.service.UserService" %><%--
  Created by IntelliJ IDEA.
  User: hom888
  Date: 14.11.2020
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete user</title>
</head>

<body>

<div>
    <div>
        <div>
            <h2>Delete user:</h2>
        </div>

        <form method="post">

            <label>Name:
                <input type="text" required name="name"><br />
            </label>

            <label>Password:
                <input type="password" required name="password"><br />
            </label>

            <button type="submit">Delete user</button>
        </form>

        <%
            if (request.getAttribute("name") != null) {
                out.println("<p>User '" + request.getAttribute("name") + "' deleted!</p>");
            }

            //TODO
            // Сделать проверку на существующего пользователя, если такого нет, то вывести сообщение
        %>

    </div>
</div>

<div>
    <button onclick="location.href='/'">Return to main</button>
</div>
</body>
</html>