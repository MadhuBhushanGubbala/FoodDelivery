
<%@include file="connect.jsp"%>
<%
String subject = request.getParameter("subject");
String description  = request.getParameter("description");
String type  = request.getParameter("type");
String user_id  = request.getParameter("id");

if(type != ""){
	String sql = "INSERT INTO tickets (poster_id, subject, description, type) VALUES ('"+user_id+"', '"+subject+"', '"+description+"', '"+type+"')";
        Statement st=con.createStatement();
        st.executeUpdate(sql) ;
	//if ($con->query($sql) === TRUE){
	//	$ticket_id =  $con->insert_id;
        
        Statement st3=con.createStatement();
ResultSet rs2=st3.executeQuery("select * from tickets");
String ticket_id=rs2.getString(1);
		String sql1 = "INSERT INTO ticket_details (ticket_id, user_id, description) VALUES ('"+ticket_id+"', '"+user_id+"', '"+description+"')";
                Statement st1=con.createStatement();
        st1.executeUpdate(sql1) ;
		//$con->query($sql);
	}
}
//header("location: ../tickets.jsp");
%>
<script>
        //window.alert("User Registered Succesfully..");
        
        window.location.assign("tickets.jsp");
        </script>
