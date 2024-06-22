<?php
     $con=mysqli_connect("localhost","root","","gym_project")or die("database Error");
     $id=$_GET['id'];
     if($res=mysqli_query($con,"DELETE FROM gym_type WHERE id='".$id."'"))
     	{
    echo"
    <script>
    alert('Gym Type Deleted');
    window.location.href='view_type.php';
    </script>
    ";
  }
  else
  {
    echo"
    <script>
    alert('Please try again!!!');
    window.location.href='view_type.php';
    </script>
    ";
  }
?>