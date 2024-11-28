<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="java.lang.IllegalArgumentException" %>

<%! 

double simpleInterest(int p, int n, int r) throws IllegalArgumentException {
    double interest = (double) (p * n * r) / 100;
    
    if (interest < 0) {
        throw new IllegalArgumentException("Simple Interest cannot be less than 0.");
    }
    
    return interest;
}
%>

<%
    try {
        if (session.getAttribute("simpleInterest") == null) {
            double interest = simpleInterest(12, 12, -12);
            session.setAttribute("simpleInterest", interest);
        }
    } catch (IllegalArgumentException e) {
        // Store exception message in session if interest is less than 0
        session.setAttribute("error", e.getMessage());
    }
%>

<h1>Simple Interest</h1>
<p>
    Simple Interest for Principal 12, Time 12 years, Rate 12%: 
    <%= simpleInterest(12, 12, 12) %>
</p>

