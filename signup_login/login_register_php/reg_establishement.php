<?php
if(file_exists("config.php")){
include("config.php");
}
else{
    echo "file does not exists";
    die();
}
session_start();
//this is to deal with the establishement register
if(isset($_POST['signin_establish'])){
    $your_name=$_POST['your_name'];//the manager name
    $pro_email=$_POST['pro_email'];//pro_email
    $establish_name=$_POST['establish_name'];
    $position=$_POST['position'];
    $phone_num=$_POST['phone_num'];
    $your_pass=$_POST['your_pass'];// remember to hash the password and check the password and the confirm password ,add if statment before running the query 
    $confirm_pass=$_POST['confirm_pass'];
    //$verify_num=md5(rand());
//check email exits
    $check_email_query="SELECT profissional_email FROM establishement WHERE profissional_email='$pro_email' LIMIT 1";
    $check_email_query_run=mysqli_query($con,$check_email_query);
    
    if(mysqli_num_rows($check_email_query_run)>0)
    {
        $_SESSION['status']="email exist";
        header("Location:../establishement.php");
        die();
    }
    elseif($your_pass !== $confirm_pass){
        $_SESSION['status']="Password and confirm password do not match";
        header("Location:../establishement.php");
        die();
    }
    elseif(strlen($your_pass)<3){
        $_SESSION['status']="Password must be at least three characters";
        header("Location:../establishement.php");
        die();
    }
    else{
        $hashedpass=password_hash($your_pass, PASSWORD_DEFAULT);//hashed value
            //does not exits --> insert
            $query="INSERT INTO establishement(username,profissional_email,establishement_name,position,phone_number,pass,create_datetime) VALUES('$your_name','$pro_email','$establish_name','$position','$phone_num','$your_pass',NOW())";
            $query_run=mysqli_query($con,$query);
            if($query_run){
                $_SESSION['authetification']=true;
                $_SESSION['is_establishement']=true;
                $_SESSION['establishement']=[
                    'user'=>$row['username'],
                    'email'=>$row['profissional_email'],
                    'establishement'=>$row['establishement_name'],
                    'pos'=>$row['position'],
                    'phone num'=>$row['phone_number'],
                ];
                $_SESSION['status']="registration success,login";
                header("Location:../../landingpage-html_new.php");
                die();
            }
            else{
                $_SESSION['status']="registartion failed";
                header("Location:establishement.php");
                die();
            }
}
}
/*valid the phone number 
function validating($phone){
if(preg_match('/^[0-9]{10}+$/', $phone)) {
    echo "Valid Phone Number";
    } else {
    echo "Invalid Phone Number";
    }
}
*/
?>