<?php
include '../includes/connect.jsp';
include '../includes/wallet.jsp';
$status = $_POST['status'];
$ticket_id = $_POST['ticket_id'];
$sql = "UPDATE tickets SET status = '$status' WHERE id = $ticket_id;";
$con->query($sql);
header("location: ../view-ticket.jsp?id=".$ticket_id);
?>