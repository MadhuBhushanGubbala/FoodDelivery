<%@include file="connect.jsp"%>
<%
String name = request.getParameter("name");
String price = request.getParameter("price");
Statement st=con.createStatement();

$image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
$sql = "INSERT INTO items (name, price,image) VALUES ('$name', $price,'$image')";
$con->query($sql);
header("location: ../admin-page.jsp");
%>