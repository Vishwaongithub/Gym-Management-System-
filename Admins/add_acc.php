<!DOCTYPE html>
<?php
session_start();
if(isset($_SESSION['admin']))
{

}
else
{
    echo'
    <script>
     window.location.href="../index.php";
    </script>
    ';
}
?>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>The Muscle Studio</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__wobble" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-dark">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index.php" class="nav-link">
          <i class="nav-icon fas fa-home"></i>
        </a>
      </li>
      
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
 <?php
include('aside.php');
 ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <br>
         <div class="row">
          <!-- left column -->
          <div class="col-md-2"></div>
          <div class="col-md-8">
            <!-- general form elements -->
            <div class="card card-success" >
              <div class="card-header">
                <h3 class="card-title" style="color: #fff;font-weight: bold;">Branch Registration</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->

              <form action="add_acc.php" method="POST">
                <div class="card-body">

                  <h5 style="color: yellow;font-weight: bold;">Branch Information</h5>
                  <hr>

                  <div class="row">
                    <div class="col-md-6">
                      <label for="exampleInputEmail1"> Name</label>
                      <input type="name" class="form-control" name="gname"id="exampleInputEmail1" >
                    </div>

                    <div class="col-md-6">
                      <label for="exampleInputEmail1"> Mobile No</label>
                      <input type="number" class="form-control"name="gmobile" id="exampleInputEmail1" >
                    </div>
                   </div>

                   <div class="row">
                    <div class="col-md-6">
                      <label for="exampleInputEmail1"> Telephone</label>
                      <input type="number" class="form-control"name="gtele" id="" >
                    </div>

                    <div class="col-md-6">
                      <label for="exampleInputEmail1"> Email Address</label>
                      <input type="email" class="form-control"name="gemail" id="exampleInputEmail1" >
                    </div>
                   </div>

                   <div class="row">
                    <div class="col-md-6">
                      <label for="exampleInputEmail1"> Open Time</label>
                      <input type="time" class="form-control" name="gotime"id="" >
                    </div>

                    <div class="col-md-6">
                      <label for="exampleInputEmail1"> Close Time </label>
                      <input type="time" class="form-control"name="gctime" id="exampleInputEmail1" >
                    </div>
                   </div>

                   <div class="row">
                    <div class="col-md-6">
                      <label for="exampleInputEmail1"> City</label>
                      <input type="text" class="form-control"name="gcity" id="" >
                    </div>

                    <div class="col-md-6">
                      <label for="exampleInputEmail1">Address</label>
                      <textarea class="form-control" name="gaddress"></textarea>
                    </div>
                   </div>

                  <h5 style="color: yellow;font-weight: bold;">Branch Owner Information</h5>
                  <hr>

                 <div class="row">
                    <div class="col-md-6">
                      <label for="exampleInputEmail1">Name</label>
                      <input type="name" class="form-control" name="oname"id="" >
                    </div>

                   <div class="col-md-6">
                      <label for="exampleInputEmail1"> Mobile No</label>
                      <input type="number" class="form-control" name="omobile"id="exampleInputEmail1" >
                    </div>

                     <div class="col-md-6">
                      <label for="exampleInputEmail1">Email Address</label>
                      <input type="email" class="form-control" name="oemail" id="exampleInputEmail1" >
                    </div>

                     <div class="col-md-6">
                      <label for="exampleInputEmail1">City</label>
                      <input type="city" class="form-control" name="ocity"id="exampleInputEmail1" >
                    </div>

                    <div class="col-md-6">
                      <label for="exampleInputEmail1">Username</label>
                      <input type="text" class="form-control" name="uname" id="exampleInputEmail1" >
                    </div>

                     <div class="col-md-6">
                      <label for="exampleInputEmail1">Password</label>
                      <input type="text" class="form-control" name="pass" id="exampleInputEmail1" >
                    </div>

                      <div class="col-md-6">
                      <label for="exampleInputEmail1">Address</label>
                      <textarea class="form-control" name="oaddress"></textarea>
                    </div>
                </div>
                <br>
                 <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-6">

                   <button type="submit" class="btn btn-success" name="add">Submit</button>
                   <button type="submit" class="btn btn-danger" style="color: #fff">Reset</button>
                  </div>
                 </div>

                 
                    
                  </div>
                 
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                                  </div>
              </form>
            </div>

            <!-- /.card -->

            <!-- general form elements -->
           
            <!-- /.card -->

            <!-- Input addon -->
            
            <!-- /.card -->

          </div>
          <!--/.col (left) -->
          <!-- right column -->
         
          <!--/.col (right) -->
        </div>
      </div><!-- /.container-fluid -->
    </div>
   
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
<?php
include('footer.php');
?>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="plugins/raphael/raphael.min.js"></script>
<script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>

<!-- AdminLTE for demo purposes -->

</body>
</html>
<!-- Insert -->
<?php
  $con=mysqli_connect("localhost","root","","gym_project")or die("Database Error"); 
 ?>
<?php
if(isset($_POST['add']))
{
  $gname=$_POST['gname'];    
  $gmobile=$_POST['gmobile'];
  $gtele=$_POST['gtele']; 
  $gemail=$_POST['gemail'];
  $gotime=$_POST['gotime'];
  $gctime=$_POST['gctime'];
  $gcity=$_POST['gcity'];
  $gaddress=$_POST['gaddress'];
  $oname=$_POST['oname'];
  $omobile=$_POST['omobile'];
  $oemail=$_POST['oemail'];
  $ocity=$_POST['ocity'];
  $oaddress=$_POST['oaddress'];

  $uname=$_POST['uname'];
  $pass=$_POST['pass'];

  if(mysqli_query($con,"INSERT INTO gym_add_acc VAlUES('','".$gname."','".$gmobile."','".$gtele."','".$gemail."','".$gotime."','".$gctime."','".$gcity."','".$gaddress."','".$oname."','".$omobile."','".$oemail."','".$ocity."','".$oaddress."','".$uname."','".$pass."')"))
  {
    echo"
    <script>
    alert('Gym Account Added');
    window.location.href='add_acc.php';
    </script>
    ";
  }
  else
  {
    echo"
    <script>
    alert('Please try again!!!');
    window.location.href='add_acc.php';
    </script>
    ";
  }

}