<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="schlr.css">
    <title>Scholarships</title>
</head>
<body>
      <div class="page-content">
      <div class="nav-bar">
        <div class="right-side">
           <ul>
           <li><a href="../landingpage-html_new.php"><span>home</span> </a></li>
             <li><a href="#"><span>Applied-scholarships</span> </a></li>
             <li><a href="../landingpage-html_new.php"><span>News</span></a></li>
             <li><a href="#"><span>Help</span></a></li>
             <?php 
              //to post only when an istablishement 
                if($_SESSION['is_establishement']==true){
                echo '<li><a href="post/create-post-schr.php"><span>POST</span></a></li>';
                }?>
           </ul>
        </div>
        <div class="left-side">
          <div class="logo">
               <img src="">
            </div>
           <div class="search-bar">
                 <input  type="text" placeholder="Search">
             </div>
        </div>
      </div>  
     
      <div class="content">
     <div class="image">

     </div>
       <div class ="input1">
            <label for="speciality">Enter speciality : </label><br>
            <input id ="speciality" type="text" placeholder="Ex: Medicine, computer science..">
       </div>
       <div class="input2">
          <label for="place">Enter country : </label><br>
          <input id="place"  type="text" placeholder="Ex: USA, France...">
       </div>
       <div class="input3">
        <form action="">
          <label for="type-of-scholarship">Enter type : </label>
          <select id="type-of-scholarship" name="type-of-scholarship">
            <option selected>
              Fully funded
            </option>
            <option>
            Partially funded
            </option>
            <option>
              Paid
            </option>
          </select>
        </form>
       </div>
       <div class="input4">
        <form action="">
          <label for="level">Select level:</label>
          <select name="level" id="level">
            <option value="">
              Undergraduate
            </option>
            <option value="">
              Master Degree
            </option>
            <option value="">
              PHD Dgree
            </option>
            <option>
              Other
            </option>
          </select>
        </form>
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
           <li><a href="internship.php">Internships</a></li>
           <li><a href="#">Scolarships</a></li>
           <li><a href="talks.php">Talks</a></li>
           <li><a href="job.php">Part-time jobs</a></li>
        </ul>
      </div>
      
      <div class="copyright">
        <p>Copyrights &copy; 2023 My internship. All rights reserved</p>
      </div>
    </footer>
   

</body>
</html>