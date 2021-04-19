<?php

session_start();
unset($_SESSION['adminid']);
session_destroy();
header('location: http://165.227.47.35/php_db_config/admin_login.php');