<?php
session_start()
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Customized Bootstrap Stylesheet -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Internship</title>
    <link rel="stylesheet" type="text/css" href="landingpage-style_new.css">
</head>
<body>
  <div class="content">
   <div class="nav-bar">
     <div class="nav-bar-content">
       <div class="right-side">
        <div class="modify">
        <?php
        if($_SESSION['is_establishement']==true){
          echo "welcome : company";
        }
        elseif($_SESSION['is_user']==true){
          echo "welcome : student";
        }
        else{
          echo "null";
        }
        ?>
        </div>
          <ul>
            <li><a href="services_pages/internship.php"><span>Internship</span> </a></li>
            <li><a href="services_pages/schship.php"><span>Schoolarship</span></a></li>
            <li><a href="services_pages/internship.php"><span>Job</span></a></li>
            <li><a href="services_pages/talk.php"><span>Talks</span></a></li>
          </ul>
          <ul>
            <!--for the login register!-->
                <li><a href="getstarted.php"><span>login</span></a></li>
                <li><a href="php_backend/logout.php"><span>logout</span></a></li>
                <li><a href="profile.php"><span>profile</span></a></li>
                <div class="alert">
                            <?php 
                                if(isset($_SESSION['status']))
                                {
                                    echo "<h4>".$_SESSION['status']."</h4><br><br>";
                                    unset($_SESSION['status']);
                                }
                            ?>
        </div>
              </ul>
       </div>
       <div class="left-side">
         <div class="logo">
              <img src="">
           </div>
          <div class="search-bar">
                <input  type="text" placeholder="Search">
                <a href="#">
                <i class="bi bi-search"></i>
                </a>
            </div>
       </div>
     </div>
     </div>
     <div class="class">
      
      <div class ="input1">
           <label for="field">Enter field : </label><br>
           <input id ="field" type="text" placeholder="Ex: Marketing, Design..">
           
      </div>
      <div class="input3"> 
        <form>
        <label for="type">Enter type :</label><br>
        <select name="type-of-internship" id="type">
         <option>
           Paid
         </option>
         <option>
           Non-paid
         </option>
         <option selected>
          Does not matter
         </option>
        </select>
        </form>
       </div>
      <div class="input2">
         <label for="place">Enter place : </label><br>
         <input id="place"  type="text" placeholder="Ex: Algiers...">
         </div>  
    </div>

     
     

    </div>
    <footer>
      <div class="contact">
        <ul>
          <li>Contact :</li>
          <li><a href="" class="">Linked-in</a></li>
          <li><a href=""class="fa fa-facebook">Facebook</a></li>
          <li><a href="">E-mail</a></li>
           
        </ul>
      </div>
      <div class="popriv">

       <ul>
        <li>Privacy And Policy :</li>
        <li><a href="">Our Terms</a></li>
        <li><a href="">Our Policy</a></li>
        <li><a href="">Help</a></li>
       </ul>
      </div>
      <div class="learnmore">

        <ul>
          <li>See More :</li>
           <li><a href="#">Internships</a></li>
           <li><a href="schship.html">Scolarships</a></li>
           <li><a href="">Talks</a></li>
           <li><a href="job.html">Part-time jobs</a></li>
        </ul>
      </div>
      <div class="copyright">
        <p>Copyrights &copy; 2023 My internship. All rights reserved</p>
      </div>
    </footer>
  
</body>
</html>