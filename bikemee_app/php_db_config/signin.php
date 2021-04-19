<?php
$db = mysqli_connect("localhost","root","","bikemee");

$email = $_POST["email"];
$password = $_POST["password"];
$fname = $_POST["fname"];
$lname = $_POST["lname"];


$sql = "Select * from UserDetails where email='$email' and password='$password'";

$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);


if($count == 1)
{
    echo json_encode("Success");
}else{
    echo json_encode("Invalid");
}

?>
