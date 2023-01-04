<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    

String name = request.getParameter("name");
String username = request.getParameter("username");

String password = request.getParameter("password");
String phone =request.getParameter("phone");


String sql = "INSERT INTO users (name, username, password, contact) VALUES ('"+name+"', '"+username+"', '"+password+"', '"+phone+"')";
Statement st=con.createStatement();
st.executeUpdate(sql);
/*
if($con->query($sql)==true){
$user_id =  $con->insert_id;
$sql = "INSERT INTO wallet(customer_id) VALUES ($user_id)";
if($con->query($sql)==true){
	$wallet_id =  $con->insert_id;
	$cc_number = number(16);
	$cvv_number = number(3);
	$sql = "INSERT INTO wallet_details(wallet_id, number, cvv) VALUES ($wallet_id, $cc_number, $cvv_number)";
	$con->query($sql);

}
}
*/

    %>
    
    <script>
        window.alert("User Registered Succesfully..");
        window.location.assign("login.jsp");
        </script>