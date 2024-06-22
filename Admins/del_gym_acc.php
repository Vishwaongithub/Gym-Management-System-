<?php
     $con=mysqli_connect("localhost","root","","gym_project")or die("database Error");
     $id=$_GET['id'];
     if($res=mysqli_query($con,"DELETE FROM gym_add_acc WHERE id='".$id."'"))
     	{
    echo"
    <script>
    alert('Gym Account Deleted');
    window.location.href='view_acc.php';
    </script>
    ";
  }
  else
  {
    echo"
    <script>
    alert('Please try again!!!');
    window.location.href='view_acc.php';
    </script>
    ";
  }
?>