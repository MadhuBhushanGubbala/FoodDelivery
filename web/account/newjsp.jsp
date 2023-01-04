<%-- 
    Document   : newjsp
    Created on : Jan 4, 2023, 12:45:18 PM
    Author     : ROOMM-15
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Random random = new Random();   
            String rn="";
            for(int i=1;i<=16;i++)
            {
            int x = random.nextInt(9);   
            rn=rn+x;
            }
        System.out.println(rn);
            %>
    </body>
</html>
