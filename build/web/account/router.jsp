<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

boolean success=false;
String user_id="",name="",role="";

String username = request.getParameter("username");

String password = request.getParameter("password");

String sql="SELECT * FROM users WHERE username='"+username+"' AND password='"+password+"' AND role='Administrator' AND not deleted";
System.out.println("Sql is "+sql);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{
    success = true;
    user_id = rs.getString("id");
    name = rs.getString("name");
    role= rs.getString("role");
}

if(success == true)
{	
	//session_start();
        System.out.println("Hello");
	session.setAttribute("admin_sid",session.getId());
	session.setAttribute("user_id",user_id);
	session.setAttribute("role", role);
	session.setAttribute("name",name);
        %>
         <script>
        window.alert("Admin Login Succesfully..");
        window.location.assign("admin-page.jsp");
        </script>
        <%
	//header("location: ../admin-page.jsp");
}
else
{
	String result = "SELECT * FROM users WHERE username='"+username+"' AND password='"+password+"' AND role='Customer' AND not deleted;";
	Statement st1=con.createStatement();
        ResultSet rs1=st1.executeQuery(result);
        if(rs1.next())
	{
                success = true;
            user_id = rs1.getString("id");
            name = rs1.getString("name");
            role= rs1.getString("role");
	}
	if(success == true)
	{
            session.setAttribute("admin_sid",session.getId());
            session.setAttribute("user_id",user_id);
            session.setAttribute("role", role);
            session.setAttribute("name",name);
			
		%>
                 <script>
        window.alert("User LoginSuccesfully..");
        window.location.assign("index.jsp");
        </script>
                <%
	}
	else
	{
%>
                 <script>
        window.alert("Login Failed..");
        window.location.assign("login.jsp");
        </script>
                <%
		//header("location: ../login.jsp");
	}
}

%>