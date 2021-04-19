<?php
$db = mysqli_connect("localhost","root","","bikemee");

$email = $_POST["email"];
$password = $_POST["password"];
$fname = $_POST["fname"];
$lname = $_POST["lname"];


$check_email = "Select * from User where email='$email'";

$result = mysqli_query($db,$check_email);
$count = mysqli_num_rows($result);


if($count == 1)
{
    echo json_encode("Email cannot be reused");
}else{
    $insert = "insert into UserDetails (fname, lname, email, password) values ('$fname','$lname','$email','$password')";
    $insert_query = mysqli_query($db,$insert);
    
    if($insert_query){
         echo json_encode("Success");
    }
    else{
         echo json_encode("Invalid");
    }
}



?>