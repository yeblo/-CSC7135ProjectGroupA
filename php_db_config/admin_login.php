<html>
 <p style="color: #FF0000;">
<?php

  // Include the login check
  //include('login_check.php');
session_start();

  ini_set('display_errors', 1);
  ini_set('display_startup_errors', 1);
  error_reporting(E_ALL);

  $db = mysqli_connect("localhost","demo","csc7135A!","bikemee");

  // See if user entered data into text boxes
  if(isset($_POST['username']) && isset($_POST['password']))
  {
      // Try to authenticate the user
    //  $msg = LoginUser($_POST['username'], $_POST['password']);
        $username = $_POST['username'];
        $pwd = $_POST['password'];

        $check =mysqli_query($db,"select * from admin where email = '$username' and password= '$pwd'");
        $message = mysqli_num_rows($check);


        echo $message;
      // Determine if the user's authentication was successful
      if($message == 1)
	  {
		
		$_SESSION['adminid'] = $_POST['username'];
        header('Location: http://165.227.47.35/php_db_config/dashboard.php'); // TODO: replace success.php with the actual page to go to
		}
  }
  
?>

     
<!--
.submit {background:#f9f9f9;
		font-family:verdana;
		-webkit-border-radius: 20px}
-->

<head>
<title>Medical admin login: </title>
<link rel="shortcut icon" href="logo2.jpg">

    <link href="css/bootstrap.min.css" rel="stylesheet" >
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <style>
        
body {
    background: #222D32;
    font-family: 'Roboto', sans-serif;
}

.login-box {
    margin-top: 75px;
    height: auto;
    background: #1A2226;
    text-align: center;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

.login-key {
    height: 100px;
    font-size: 80px;
    line-height: 100px;
    background: -webkit-linear-gradient(#27EF9F, #0DB8DE);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.login-title {
    margin-top: 15px;
    text-align: center;
    font-size: 30px;
    letter-spacing: 2px;
    margin-top: 15px;
    font-weight: bold;
    color: #ECF0F5;
}

.login-form {
    margin-top: 25px;
    text-align: left;
}

input[type=text] {
    background-color: #1A2226;
    border: none;
    border-bottom: 2px solid #FFC422;
    border-top: 0px;
    border-radius: 0px;
    font-weight: bold;
    outline: 0;
    margin-bottom: 20px;
    padding-left: 0px;
    color: #ECF0F5;
}

input[type=password] {
    background-color: #1A2226;
    border: none;
    border-bottom: 2px solid #FFC422;
    border-top: 0px;
    border-radius: 0px;
    font-weight: bold;
    outline: 0;
    padding-left: 0px;
    margin-bottom: 20px;
    color: #ECF0F5;
}

.form-group {
    margin-bottom: 40px;
    outline: 0px;
}

.form-control:focus {
    border-color: inherit;
    -webkit-box-shadow: none;
    box-shadow: none;
    border-bottom: 2px solid #0DB8DE;
    outline: 0;
    background-color: #1A2226;
    color: #ECF0F5;
}

input:focus {
    outline: none;
    box-shadow: 0 0 0;
}

label {
    margin-bottom: 0px;
}

.form-control-label {
    font-size: 10px;
    color: #6C6C6C;
    font-weight: bold;
    letter-spacing: 1px;
}

.btn-outline-primary {
    border-color: #FFC422;
/*    color: #0DB8DE;*/
    color: #FFC422;
    border-radius: 0px;
    font-weight: bold;
    letter-spacing: 1px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.btn-outline-primary:hover {
    background-color: #FFC422;
    right: 0px;
    border-color: #FFC422;
}

.login-btm {
    float: left;
}

.login-button {
    padding-right: 0px;
    text-align: right;
    margin-bottom: 25px;
}

.login-text {
    text-align: left;
    padding-left: 0px;
    color: #A2A4A4;
}

.loginbttm {
    padding: 0px;
}
    </style>
    
</head>    
<body>
  
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
            <div class="pt-3"> 
                <a href="index.php">
                    <img src="img/logo_size_invert.jpg" width="100px"></a>
            </div>
                <div class="col-lg-12 login-title">
                    ADMIN PANEL
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-lg-12 login-form">
                        <form action="<?php echo $_SERVER['PHP_SELF']; ?>"  method="post">
                           
                            <div class="form-group">
                                <label class="form-control-label">Email (do not include @lsu.edu)</label>
                                <input type="text" name="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="form-control-label">PASSWORD</label>
                                <input type="password"  name="password" class="form-control" i>
                            </div>

                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">
                                    <!-- Error Message -->
                                      <?php
                                if(isset($msg) && !empty($msg))
                                    echo $msg;
                                ?>
                                </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <button type="submit" name="Login" class="btn btn-outline-primary">LOGIN</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2"></div>
            </div>
        </div>
    </div>


   

    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/slim.min.js"></script>

</body> 
     </html>
   

    
       
