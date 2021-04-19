<?php
$db = mysqli_connect("localhost","demo","csc7135A!","bikemee");


$cardNumber = $_POST["cardnumber"];
$expiryDate = $_POST["expirydate"];
$cardHolderName = $_POST["chm"];
$cvvCode = $_POST["cvv"];


// $check_email = "Select * from UserDetails where email='$email'";
// $result = mysqli_query($db,$check_email);
// $check_array = mysqli_fetch_assoc($result);
// $count = mysqli_num_rows($result);


// if($count == 1)
// {
//     $user_id = $check_array["user_id"];

    $insert = "insert into credit_details (cardNo, cardHolder_Name, cvv, expirydate) values ('$cardNumber','$cardHolderName','$cvvCode','$expiryDate')";
    $insert_query = mysqli_query($db,$insert);
    if($insert_query){
        echo json_encode("Saved Successfully");
       
    }else{
        echo json_encode("Not Saved");
    }
// }else{
//     echo json_encode("Message not received 1");

// }

//message saved successfully
?>