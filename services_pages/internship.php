<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Internship</title>
    <link rel="stylesheet" type="text/css" href="internship.css">
</head>
<body>
  <div class="content">
   <div class="nav-bar">
     <div class="nav-bar-content">
       <div class="right-side">
          <ul>
            <li><a href="../landingpage-html_new.php"><span>home</span> </a></li>
            <li><a href="#"><span>Current internship</span> </a></li>
            <li><a href="landingpage-html_new.php"><span>News</span></a></li>
            <li><a href="#"><span>Help</span></a></li>
            <?php 
              //to post only when an istablishement 
                if($_SESSION['is_establishement']==true){
                echo '<li><a href="post/create-post-intrn.php"><span>POST</span></a></li>';
                }?>
          </ul>
       </div>
       <div class="left-side">
         <div class="logo">
              <img src="">
           </div>
          <div class="search-bar">
                <input  type="text" placeholder="Search">
                <a href="#">
                <i class="fas fa-search"></i>
                </a>
            </div>
       </div>
     </div>
     </div>
    <div class="image">
      <img id ="A" src="../img/beam-woman-sitting-at-desk-and-programming.gif">
       
      <div class="txt">
        <p>
           Get yourself<br> an internship just through <br> few clicks!
        </p>
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
        
      <div class="pict">
        <img id="C"src="../img/beam-hr-reviews-online-resume.png" alt="">
        <img id="B" src="../img/beam-magnifying-glass.png" alt="">
        <img id="D" src="../img/curved-arrow-with-broken-line.png" alt="">
       
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
           <li><a href="schship.php">Scolarships</a></li>
           <li><a href="talk.php">Talks</a></li>
           <li><a href="job.php">Part-time jobs</a></li>
        </ul>
      </div>
      <div class="copyright">
        <p>Copyrights &copy; 2023 My internship. All rights reserved</p>
      </div>
    </footer>
  
</body>
</html>