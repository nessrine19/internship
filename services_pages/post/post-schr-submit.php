<?php
session_start();
//include('../signup_login/login_register_php/config.php');
$con=mysqli_connect("localhost","root","","myinternship");
if(isset($_POST['submit_field'])){
    $field = $_POST['field'];
    $title =$_POST['title'];
    $description =$_POST['description'];
    $link =$_POST['link'];
    $duration =$_POST['duration'];
    $start_date = date('Y-m-d', strtotime($_POST['start-date']));
    $end_date = date('Y-m-d', strtotime($_POST['end-date']));
    $location =$_POST['location'];
    $type =$_POST['type'];

    //the query 
   
    $insert_to_scholorship="INSERT INTO scholarships(title,description,field,website_link,location,duration,start_date,end_date,type,create_datetime)
    VALUES ('$title','$description','$field','$link','$location','$duration','$start_date','$end_date','$type',NOW())";
    $insert_to_scholarship_run=mysqli_query($con,$insert_to_scholorship);
    

     if($insert_to_scholarship_run){
        echo "correct ,done ";
    }
    else{
        echo "problems";
    }

}
?>