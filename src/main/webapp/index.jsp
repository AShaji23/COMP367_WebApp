<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
    <title>COMP367 Welcome Page</title>
</head>
<body>
    <h1>
        <% 
            int hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
            String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
        %>
        <%= greeting %>, Ashwin! Welcome to (COMP367) Devops Implementation course sec 001
    </h1>
</body>
</html>
