<?php
$db = mysqli_connect("localhost","demo","csc7135A!","bikemee");
$email = $_POST["email"];
$subject = $_POST["subject"];
$report = $_POST["report"];


$check_email = "Select * from UserDetails where email='$email'";
$result = mysqli_query($db,$check_email);
$check_array = mysqli_fetch_assoc($result);
$count = mysqli_num_rows($result);


if($count == 1)
{
    $user_id = $check_array["user_id"];

    $insert = "insert into Report_Problem (subject, email, message, user_id) values ('$subject','$email','$report','$user_id')";
    $insert_query = mysqli_query($db,$insert);
    if($insert_query){
        echo json_encode("Message received");
       
    }else{
        echo json_encode("message not received 2");
    }
}else{
    echo json_encode("Message not received 1");

}


?>