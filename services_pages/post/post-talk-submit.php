<?php
session_start();
//include('../signup_login/login_register_php/config.php');
$con=mysqli_connect("localhost","root","","myinternship");
if(isset($_POST['submit_field'])){
    $field = $_POST['field'];
    $name =$_POST['name'];
    $description =$_POST['description'];
    $link =$_POST['link'];
    $duration =$_POST['duration'];
    $talk_date = date('Y-m-d', strtotime($_POST['talk-date']));
    $location =$_POST['location'];
    

    //the query 
   
    $insert_to_talk="INSERT INTO talks(name,description,field,website_link,location,duration,create_datetime,talk_date) 
    VALUES ('$name','$description','$field','$link','$location','$duration',NOW(),'$talk_date')";
    $insert_to_talk_run=mysqli_query($con,$insert_to_talk);
    

     if($insert_to_talk_run){
        echo "correct ,done ";
    }
    else{
        echo "problems";
    }

}
?>