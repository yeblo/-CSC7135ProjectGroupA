<?php
$db = mysqli_connect("localhost","demo","csc7135A!","bikemee");

$phone = $_POST["phone"];



$check_email = "Select * from User where phonenumber='$phone'";

$result = mysqli_query($db,$check_email);
$count = mysqli_num_rows($result);


if($count == 1){
    echo json_encode("Success");
}else{
    echo json_encode("Register");
}


// if($count == 1)
// {
//     echo json_encode("Email cannot be reused");
// }else{
//     $insert = "insert into User (fname, lname, email, password) values ('$fname','$lname','$email','$password')";
//     $insert_query = mysqli_query($db,$insert);
    
//     if($insert_query){
//          echo json_encode("Success");
//     }else{
//          echo json_encode("Invalid");
//     }
// }



?>