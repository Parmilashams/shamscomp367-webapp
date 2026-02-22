<%@ page import="java.time.LocalTime" %>
<!DOCTYPE html>
<html>
<head>
    <title>COMP367 Greeting</title>
</head>
<body>

<%
    LocalTime now = LocalTime.now();
    String greeting;

    if (now.isBefore(LocalTime.NOON)) {
        greeting = "Good morning, Parmila, Welcome to COMP367";
    } else {
        greeting = "Good afternoon, Parmila, Welcome to COMP367";
    }
%>

<h2><%= greeting %></h2>

</body>
</html>