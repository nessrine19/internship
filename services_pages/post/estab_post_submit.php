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
    $salary =$_POST['salary'];

    //the query 
    
    $insert_to_internship="INSERT INTO internship(title,description,field,website_link,location,duration,start_date,end_date,salary,create_datetime) VALUES ('$title','$description','$field','$link','$location','$duration','$start_date','$end_date','$salary',NOW())";
    $insert_to_internship_run=mysqli_query($con,$insert_to_internship);


    if($insert_to_internship_run){
        echo "correct ,done ";
    }
    else{
        echo "problems";
    }

}
?>