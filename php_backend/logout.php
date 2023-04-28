<?php 
session_start();
unset($_SESSION['authetification']);//authentification to false 
unset($_SESSION['USER']);//user info
unset($_SESSION['establishement']);//establishement info 
$_SESSION['is_establishement']=false;//
$_SESSION['is_user']=false;
$_SESSION['status']="you have been logged out";
header('Location:../getstarted.php')
?>