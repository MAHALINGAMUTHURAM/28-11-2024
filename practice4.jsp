<%@ page import="jakarta.servlet.http.HttpSession" %>

<h1>Simple Interest Display</h1>

<%
    Double simpleInterest = (Double) session.getAttribute("simpleInterest");
    String errorMessage = (String) session.getAttribute("error");

    if (errorMessage != null) {
%>
        <p>Error: <%= errorMessage %></p>
<%
    } else if (simpleInterest != null) {
%>
        <p>The Simple Interest stored in the session is: <%= simpleInterest %></p>
<%
    } else {
%>
        <p>No Simple Interest value found in the session.</p>
<%
    }
%>

