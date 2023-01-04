
<%@page import="java.util.Random"%>
<%@include file="connect.jsp"%>
<%
String subject = request.getParameter("subject");
String description  = request.getParameter("description");
String type  = request.getParameter("type");
String user_id  = request.getParameter("id");



String username = request.getParameter("username");
String password = request.getParameter("password");
String name = request.getParameter("name");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String address = request.getParameter("address");
String role = request.getParameter("role");
String verified = request.getParameter("verified");
String deleted = request.getParameter("deleted");
String sql = "INSERT INTO users (username, password, name, email, contact, address, role, verified, deleted) VALUES ('"+username+"', '"+password+"', '"+name+"', '"+email+"', '"+contact+"', '"+address+"', '"+role+"', '"+verified+"', '"+deleted+"')";
Statement st=con.createStatement();
st.executeUpdate(sql);

Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from usres");
user_id=rs1.getString(1);


String sql1 = "INSERT INTO wallet(customer_id) VALUES ('"+user_id+"')";
Statement st2=con.createStatement();
st2.executeUpdate(sql1);

Statement st3=con.createStatement();
ResultSet rs2=st3.executeQuery("select * from wallet_details");
String wallet_id=rs2.getString(1);

        Random random = new Random();   
            String cc_number="";
            for(int i=1;i<=16;i++)
            {
            int x = random.nextInt(9);   
            cc_number=cc_number+x;
            }
        System.out.println(cc_number);
        
        String cvv_number="";
            for(int i=1;i<=16;i++)
            {
            int x = random.nextInt(9);   
            cvv_number=cvv_number+x;
            }
        System.out.println(cvv_number);


	
	String sql2 = "INSERT INTO wallet_details(wallet_id, number, cvv) VALUES ('"+wallet_id+"', '"+cc_number+"', '"+cvv_number+"')";
        Statement stt=con.createStatement();
        stt.executeUpdate(sql2);
	
}	
}
//header("location: ../users.jsp");

%>
<script>
        //window.alert("User Registered Succesfully..");
        
        window.location.assign("tickets.jsp");
        </script>
