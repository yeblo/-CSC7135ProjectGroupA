<?php
session_start();
$db = mysqli_connect("localhost","demo","csc7135A!","bikemee");

$email = $_POST["email"];
$password = $_POST["password"];
// $fname = $_POST["fname"];
// $lname = $_POST["lname"];


$check_email = "Select * from UserDetails where email='$email' and password = '$password'";

$result = mysqli_query($db,$check_email);
$count = mysqli_num_rows($result);
$res_array = mysqli_fetch_assoc();

if($count == 1)
{
    echo json_encode("Success");
    $_SESSION["email"] = $res_array["email"];
    $_SESSION["fname"] = $res_array["fname"];
}else{

         echo json_encode("Email and Password are Invalid");
    }




?>