<%@ page import="models.Event" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Marusya
  Date: 9/1/2022
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
please input user`s data


<%
    List<Event> events = (List<Event>) request.getAttribute("events");
%>

<form action="/users/add" method="post">

    <input type="text" name="name" placeholder="please input name"/><br>
    <input type="text" name="surname" placeholder="please input surname"/><br>
    <input type="email" name="email" placeholder="please input email"/><br>
    <select name="eventId">
        <%for (Event event : events) {%>
        <option value="<%=event.getId()%>"><%=event.getName()%><%=event.getPlace()%>(<%=event.getPrice()%>)
        </option>
        <% }
        %>
    </select>

    <input type="date" name="eventDate">
    <br>
    <input type="submit" value="Register">


</form>

</body>
</html>
