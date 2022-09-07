<%@ page import="models.Event" %>
<%@ page import="java.util.List" %>
<%@ page import="models.User" %><%--
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
please update user`s data


<%
    User user = (User) request.getAttribute("user");
    List<Event> events = (List<Event>) request.getAttribute("events");
%>

<form action="/users/edit" method="post">
    <input type="hidden" name="userId" value="<%=user.getId()%>">

    <input type="text" name="name" value="<%=user.getName()%>"/><br>
    <input type="text" name="surname" value="<%=user.getSurname()%>"/><br>
    <input type="email" name="email" value="<%=user.getEmail()%>"/><br>
    <select name="eventId">
        <%for (Event event : events) {
        if (event.equals(user.getEvent())){

       %>
        <option selected value="<%=event.getId()%>"><%=event.getName()%><%=event.getPlace()%>(<%=event.getPrice()%>)
        </option>
        <% } else{%>
        <option value="<%=event.getId()%>"><%=event.getName()%><%=event.getPlace()%>(<%=event.getPrice()%>)
        </option>
          <% } } %>
    </select>

    <input type="date" name="eventDate">
    <br>
    <input type="submit" value="Update">


</form>
</body>
</html>
