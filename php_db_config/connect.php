<?php

$db = mysqli_connect("localhost","demo","csc7135A!","bikemee");

if($db){
    echo "Success";
}
else{
    echo "Check Conecction";
}
?>