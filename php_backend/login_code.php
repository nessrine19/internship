<?php
//$con=mysqli_connect("localhost","root","","myinternship");
include("../signup_login/login_register_php/config.php");
session_start();

if(isset($_POST['login_btn'])){
    if(!empty(trim($_POST['your_email'])) && !empty(trim($_POST['your_pass']))){
        $email=$_POST['your_email'];
        $password_log=$_POST['your_pass'];
        //login query as establishement
        $login_query="SELECT * FROM establishement WHERE profissional_email='$email' limit 1";
        //run the query 
        $login_query_run=mysqli_query($con,$login_query);
        //login query as student
        $login_student_query="SELECT * FROM users WHERE email='$email' limit 1";
        //run the query 
        $login_student_query_run=mysqli_query($con,$login_student_query);
        //check the success of the query && login as establishement 
        if(mysqli_num_rows($login_query_run)>0){
            $row =mysqli_fetch_array($login_query_run);
            //password_verify($password_log, $row["pass"]) for hashed password
            if ($password_log===$row["pass"]) {
                // Password is correct, perform login
                // Redirect to dashboard or other page
                //add check login variable to do the logout
                $_SESSION['authetification']=true;
                $_SESSION['is_establishement']=true;//establishemnt user
                $_SESSION['establishement']=[
                    'user'=>$row['username'],
                    'email'=>$row['profissional_email'],
                    'establish'=>$row['establishement_name'],
                    'pos'=>$row['position'],
                    'phone num'=>$row['phone_number'],
                ];
                $_SESSION['status']="login successfully";
                header('Location: ../landingpage-html_new.php');
                die();
            } else {
                $_SESSION['status']="Invalid email or password. Please try again.";
                header('Location: ../getstarted.php');
                die();
            }
        }
            //login user 
        elseif(mysqli_num_rows($login_student_query_run)>0)
        {
                $row =mysqli_fetch_array($login_student_query_run);
                //password_verify($password_log, $row["pass"]) for hashed password
                if ($password_log===$row["password"]) {
                    // Password is correct, perform login
                    //add check login variable to do the logout
                    $_SESSION['authetification']=true;
                    $_SESSION['is_user']=true;//user
                    $_SESSION['USER']=[
                        'user'=>$row['name'],
                        'email'=>$row['email'],
                    ];
                    $_SESSION['status']="login successfully";
                    header('Location: ../landingpage-html_new.php');
                    die();
                } else {
                    $_SESSION['status']="Invalid email or password. Please try again.";
                    header('Location: ../getstarted.php');
                    die();
                }

        }
        else {
            $_SESSION['status']="Invalid name or password. Please try again.";
            header('Location: ../getstarted.php');
            die();
        }
    }
    //else it is empty 
    else {
        $_SESSION['status']="You must fill all the fields.";
        header('Location: getstarted.php');
        die();
    }
}
?>
