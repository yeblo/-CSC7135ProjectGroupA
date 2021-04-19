<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$db = mysqli_connect("localhost","demo","csc7135A!","bikemee");
session_start();

$adminid = $_SESSION['adminid'];
if(isset($adminid)){
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Page | Dashboard</title>

    <!-- Bootstrap core CSS-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">  -->

    <!-- MDB icon -->
    <link rel="icon" href="p1.png" type="image/x-icon" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
    <!-- Google Fonts Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
    <!-- MDB -->
    <link rel="stylesheet" href="css/mdb.min.css" />

</head>

<body>

    <nav class="mb-1 navbar navbar-expand-lg navbar-dark sticky-top" style="background-color: #3e0669;">

        <div class="mb-2 ">
            <a class="navbar-brand " href="#">
                <img src="img/logo_size.jpg" height="100">
            </a>
        </div>
        <ul class="navbar-nav ml-auto nav-flex-icons">
            <li class="nav-item avatar dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-user" style="color: white; font-size: 25px"></i> <span
                        class="pl-1"><?php echo $_SESSION['adminid'];?></span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary"
                    aria-labelledby="navbarDropdownMenuLink-55">

                    <a class="dropdown-item" href="admin_logout.php">Logout</a>



                </div>
            </li>
        </ul>
    </nav>
    <header class="p-5" id="">
        <div class="container">
            <div class="text-center">

            </div>
            <div class="row">
                <div class="col-md-5">
                    <h2>BikeMee Dashboard</h2>

                </div>
                <div class="col-md-2">

                </div>
            </div>
        </div>
    </header>




    <section id="main">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="list-group">
                        <a href="#" class="list-group-item active main-color-bg">
                            <span class="glyphicon glyphicon-cog"></span> Dashboard
                        </a>
                        <a href="pages.html" class="list-group-item list-group-item-action"><span
                                class="glyphicon glyphicon-list-alt"></span> Reports <span class="badge">52</span></a>
                        <a href="post.html" class="list-group-item list-group-item-action"><span
                                class="glyphicon glyphicon-pencil"></span> Post<span class="badge">19</span></a>
                        <a href="users.html" class="list-group-item list-group-item-action"><span
                                class="glyphicon glyphicon-user"></span> All Users<span class="badge">115</span></a>
                        <!-- <a href="booking.html" class="list-group-item list-group-item-action"><span class="glyphicon glyphicon-shopping-cart"></span> Booking<span class="badge">11</span></a>
            <a href="graph.html" class="list-group-item list-group-item-action"><span class="glyphicon glyphicon-stats"></span> Weekly Graph<span class="badge"></span></a> -->
                    </div>



                </div>
                <div class="col-md-9">
                    <!--Website Overview-->
                    <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">
                            <h3 class="panel-title">Docker Stations</h3>

                        </div>
                        <!-- Pills navs -->
                        <ul class="nav nav-pills mb-3" id="ex1" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="ex1-tab-1" data-mdb-toggle="pill" href="#ex1-pills-1"
                                    role="tab" aria-controls="ex1-pills-1" aria-selected="true">Dock 1</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-2" data-mdb-toggle="pill" href="#ex1-pills-2" role="tab"
                                    aria-controls="ex1-pills-2" aria-selected="false">Dock 2</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-3" role="tab"
                                    aria-controls="ex1-pills-3" aria-selected="false">Dock 3</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-4" role="tab"
                                    aria-controls="ex1-pills-3" aria-selected="false">Dock 4</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-5" role="tab"
                                    aria-controls="ex1-pills-3" aria-selected="false">Dock 5</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-6" role="tab"
                                    aria-controls="ex1-pills-3" aria-selected="false">Dock 6</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-7" role="tab"
                                    aria-controls="ex1-pills-3" aria-selected="false">Dock 7</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-8" role="tab"
                                    aria-controls="ex1-pills-3" aria-selected="false">Dock 8</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-9" role="tab"
                                    aria-controls="ex1-pills-3" aria-selected="false">Dock 9</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-10" role="tab"
                                    aria-controls="ex1-pills-3" aria-selected="false">Dock 10</a>
                            </li>
                        
                        </ul>
                        <!-- Pills navs -->

                        <!-- Pills content -->
                        <div class="tab-content" id="ex1-content">
                            <div class="tab-pane fade show active" id="ex1-pills-1" role="tabpanel"
                                aria-labelledby="ex1-tab-1">

                              
                                <table class="table table-striped ">
                                      <thead>
                                        <tr>
                                          <th scope="col">#</th>
                                          <th scope="col">Bike ID</th>
                                          <th scope="col">Status</th>
                                          <th scope="col">Condition</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                      <?php
                                  $selectq = mysqli_query($db,"Select * from BikeDetails where docker_id = 1");

                                  $checkrow= mysqli_num_rows($selectq);
                                  echo $checkrow;
                                  $i=0;
                                if($checkrow > 0){
                                  while($checksq = mysqli_fetch_assoc($selectq)){
                                    $checking[] = $checksq;
                                  }
                                  foreach($checking as $dock){
                                  $i++;
                                  
                                ?>
                                        <tr>
                                          <th scope="row"><?php echo $i ?></th>
                                          <td ><?php echo $dock["bike_id"];?> </td>
                                          <td class="pill"><div class="text-center"
                                          
                                          <?php if ($dock["status"] == "Parked"){?>
                                            style = "background-color: green; border-radius: 10px;   
                                          color: white; width: 50%" >
                                          
                                           <?php } else{?>
                                             style = "background-color: red; border-radius: 10px;   
                                            color: white; width: 50%" >         
                                          <?php }echo $dock["status"];?> <div></td>
                                          <td ><div class="text-center" style = "background-color: green; border-radius: 10px;   
                                          color: white; width: 50%"><?php echo $dock["cond"];?> <div></td>
                                        </tr>
                                        <?php
                                         }
                                       } ?>
                                 
                                      </tbody>
                                    </table>

                            </div>
                            <div class="tab-pane fade" id="ex1-pills-2" role="tabpanel" aria-labelledby="ex1-tab-2">
                                
                            <table class="table table-striped ">
                                      <thead>
                                        <tr>
                                          <th scope="col">#</th>
                                          <th scope="col">Bike ID</th>
                                          <th scope="col">Status</th>
                                          <th scope="col">Condition</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                      <?php
                                  $selectq = mysqli_query($db,"Select * from BikeDetails where docker_id = 2");

                                  $checkrow= mysqli_num_rows($selectq);
                                  echo $checkrow;
                                  $i=0;
                                if($checkrow > 0){
                                  while($checksq = mysqli_fetch_assoc($selectq)){
                                    $checking[] = $checksq;
                                  }
                                  foreach($checking as $dock){
                                  $i++;
                                  
                                ?>
                                        <tr>
                                          <th scope="row"><?php echo $i ?></th>
                                          <td ><?php echo $dock["bike_id"];?> </td>
                                          <td class="pill"><div class="text-center"
                                          
                                          <?php if ($dock["status"] == "Parked"){?>
                                            style = "background-color: green; border-radius: 10px;   
                                          color: white; width: 50%" >
                                          
                                           <?php } else{?>
                                             style = "background-color: red; border-radius: 10px;   
                                            color: white; width: 50%" >         
                                          <?php }echo $dock["status"];?> <div></td>
                                          <td><?php echo $dock["cond"];?></td>
                                        </tr>
                                        <?php
                                         }
                                       } ?>
                                 
                                      </tbody>
                                    </table>
                            </div>
                            <div class="tab-pane fade" id="ex1-pills-3" role="tabpanel" aria-labelledby="ex1-tab-3">
                               
                            <table class="table table-striped ">
                                      <thead>
                                        <tr>
                                          <th scope="col">#</th>
                                          <th scope="col">Bike ID</th>
                                          <th scope="col">Status</th>
                                          <th scope="col">Condition</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                      <?php
                                  $selectq = mysqli_query($db,"Select * from BikeDetails where docker_id = 3");

                                  $checkrow= mysqli_num_rows($selectq);
                                  echo $checkrow;
                                  $i=0;
                                if($checkrow > 0){
                                  while($checksq = mysqli_fetch_assoc($selectq)){
                                    $checking[] = $checksq;
                                  }
                                  foreach($checking as $dock){
                                  $i++;
                                  
                                ?>
                                        <tr>
                                          <th scope="row"><?php echo $i ?></th>
                                          <td ><?php echo $dock["bike_id"];?> </td>
                                          <td class="pill"><div class="text-center"
                                          
                                          <?php if ($dock["status"] == "Parked"){?>
                                            style = "background-color: green; border-radius: 10px;   
                                          color: white; width: 50%" >
                                          
                                           <?php } else{?>
                                             style = "background-color: red; border-radius: 10px;   
                                            color: white; width: 50%" >         
                                          <?php }echo $dock["status"];?> <div></td>

                                          <td style = "background-color: green; border-radius: 10px;   
                                          color: white; width: 50%"><?php echo $dock["cond"];?></td>
                                        </tr>
                                        <?php
                                         }
                                       } ?>
                                 
                                      </tbody>
                                    </table>
                            </div>
                            <div class="tab-pane fade" id="ex1-pills-4" role="tabpanel" aria-labelledby="ex1-tab-3">
                                Tab 4 content
                            </div>
                            <div class="tab-pane fade" id="ex1-pills-5" role="tabpanel" aria-labelledby="ex1-tab-3">
                                Tab 5 content
                            </div>
                            <div class="tab-pane fade" id="ex1-pills-6" role="tabpanel" aria-labelledby="ex1-tab-3">
                                Tab 6 content
                            </div>
                            <div class="tab-pane fade" id="ex1-pills-7" role="tabpanel" aria-labelledby="ex1-tab-3">
                                Tab 7 content
                            </div>
                            <div class="tab-pane fade" id="ex1-pills-8" role="tabpanel" aria-labelledby="ex1-tab-3">
                                Tab 8 content
                            </div>
                            <div class="tab-pane fade" id="ex1-pills-9" role="tabpanel" aria-labelledby="ex1-tab-3">
                                Tab 9 content
                            </div>
                            <div class="tab-pane fade" id="ex1-pills-10" role="tabpanel" aria-labelledby="ex1-tab-3">
                                Tab 10 content
                            </div>
                        

                        </div>

                        <!--Latest Users-->
                        <div class="panel panel-default">
                            <div class="panel-heading main-color-bg">
                                <h3 class="panel-title">Users</h3>

                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-dark">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">First</th>
                                            <th scope="col">Last</th>
                                            <th scope="col">Bike</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>Bike 234</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>Bike 240</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>Bike 245</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
    </section>


    <section>
        <div class="c">
        </div>
    </section>

    <?php
}
?>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <!-- <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script> -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"
        integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous">
    </script>
      <!-- MDB -->
      <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
</body>

</html>