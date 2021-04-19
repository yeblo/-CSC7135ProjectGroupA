<?php
$db = mysqli_connect("localhost","demo","csc7135A!","bikemee");

$email = $_POST["email"];
$password = $_POST["password"];
$fname = $_POST["fname"];
$lname = $_POST["lname"];
$phone = $_POST["phone"];

$check_email = "Select * from UserDetails where email='$email'";

$result = mysqli_query($db,$check_email);
$count = mysqli_num_rows($result);


if($count > 0)
{
    echo json_encode("Email cannot be reused");
}else{
    $insert = "insert into UserDetails (fname, lname, email, password, phonenumber) values ('$fname','$lname','$email','$password','$phone')";
    $insert_query = mysqli_query($db,$insert);
    
    if($insert_query){
         echo json_encode("Success");
         $_SESSION["email"] = $email;
         $_SESSION["fname"] = $fname;
    }
    else{
         echo json_encode("Invalid");
    }
}



?>