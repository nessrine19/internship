
<?php
//here to register as a student 
if(file_exists("config.php")){
    include("config.php");
    }
else{
        echo "file does not exists";
        die();
}
session_start();
//this is to deal with the establishement register
if(isset($_POST['signup_student'])){
    $name=$_POST['name'];//the student name
    $email=$_POST['email'];//pro_email
    $pass=$_POST['pass'];// remember to hash the password and check the password and the confirm password ,add if statment before running the query 
    $confirm_pass=$_POST['re_pass'];
    //$verify_num=md5(rand());
//check email exits
    $check_email_query="SELECT email FROM users WHERE email='$email' LIMIT 1";
    $check_email_query_run=mysqli_query($con,$check_email_query);
    
    if(mysqli_num_rows($check_email_query_run)>0)
    {
        $_SESSION['status']="email exist";
        header("Location:../signup.php");
        die();
    }
    elseif($pass !== $confirm_pass){
        $_SESSION['status']="Password and confirm password do not match";
        header("Location:../signup.php");
        die();
    }
    elseif(strlen($pass)<3){
        $_SESSION['status']="Password must be at least three characters";
        header("Location:../signup.php");
        die();
    }
    else{
        $hashedpass=password_hash($pass, PASSWORD_DEFAULT);//hashed value 
        //does not exits --> insert
        $query="INSERT INTO users(name,email,password,created_at,updated_at) VALUES('$name','$email','$pass', NOW(), NOW())";
        $query_run=mysqli_query($con,$query);
        if($query_run){
            $_SESSION['authetification']=true;
            $_SESSION['is_user']=true;
            $_SESSION['USER']=[
                'user'=>$row['name'],
                'email'=>$row['email'],
            ];
            $_SESSION['status']="registration success,login";
            header("Location:../continue_student.php");
            die();
        }
        else{
            $_SESSION['status']="registartion failed";
            header("Location:../signup.php");
            die();
        }
    }
}
?>