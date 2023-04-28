<?php
session_start()
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Page</title>
    <link rel="stylesheet" href="landingpage-style.css">
    

</head>
<body>
    <nav class="navbar">
        
        <div class="nav-left">
            <a href="index.html" class="logo"><img src="images\Logo21.png" ></a>
           
        </div>
        <div class="navbar-center">
            <div class="search-box">
                <img src="images\search.png"  alt="search bar">
                <input type="text" placeholder="search">
            </div>
            <ul>
                <li><a href="#" class="active-link"><img  src="images\home.png" ><span>Home</span></a></li>
                <li><a href="services_pages/internship.php"><img src="images\network.png" ><span>My Internships</span></a></li>
                <li><a href="services_pages/internship.php"><img src="images\jobs.png"><span>Jobs</span></a></li>
                <li><a href="services_pages/schship.php"><img src="https://www.flaticon.com/free-icons/scholarship"><span>Scholarships</span></a></li>
                <li><a href="services_pages/talk.php"><img src=""><span>Talks</span></a></li>
            </ul>
           
        </div>
        <div class="navbar-right">
            <div class="nav">
            <ul>
                <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                <li><a href="#"><i class="fa fa-bell"></i></a></li>
                <li><a href="#"><img src="images\notification.png"><span>notifications</span></a></li>
                <li><a href="#"><img src="images\chat.png"><span>messages</span></a></li>
                <li><a href="getstarted.php"><span>login</span></a></li>
                <li><a href="php_backend/logout.php"><span>logout</span></a></li>
                <li><a href="profile.php"><span>profile</span></a></li>
              </ul>
            </div>
            <div class="online">
                <img src="user.jpg" alt="" class="nav-profile-img">
            </div>
           
        </div>
    </nav>
<!-- ---------------------navbar close----------------- -->
<div class="container"> 
<!-- --------------left-side------------- -->
    <div class="left-sidebar">
        <div class="sidebar-profile-box">
            <img src="images\cover-pic.png" width="100%">
            <div class="sidebar-profile-info">
                <img src="user.jpg" >
                <h1></h1>
                <h3>Student at ENSIA</h3>
                <ul>
                    <li>Your profile views <span>52</span></li>
                    <li>Your post views <span>34</span></li>
                    <li>Your connections views <span>56</span></li>
                </ul>
            </div>
            <div class="sidebar-profile-link">
                <a href="#"><img src="images\items.png"> My items </a>
                <a href="#"><img src="images\premium.png"> Try premium</a>
            </div>
        </div>
        <div class="sidebar-activity">
            <h3>RECENT</h3>
            <a href="#"><img src="images\recent.png">Web developpement</a>
            <a href="#"><img src="images\recent.png">User interface</a>
            <a href="#"><img src="images\recent.png">Online learning</a>
            <a href="#"><img src="images\recent.png">Code Better</a>
            <a href="#"><img src="images\recent.png">Group Learning</a>
            <h3>My Internships</h3>
            <a href="#"><img src ="images\group.png">Apple internship for undergraduated students</a>
            <a href="#"><img src ="images\group.png">Mobilis enterpronaria</a>
            <div class="discover-more">
                <a href="#">Discover more</a>
            </div>
        </div>
    </div>
    <!-- --------------main-sidebar------------- -->
    <div class="main-content">
        <div class="explore-world">
            <h1>Explore your chances</h1>
        </div>
        <div class="alert">
                            <?php 
                                if(isset($_SESSION['status']))
                                {
                                    echo "<h4>".$_SESSION['status']."</h4>";
                                    unset($_SESSION['status']);
                                }
                            ?>
        </div>
        <!--user info!--><br>
        
    </div>
    <!-- --------------right-sidebar------------- -->
</div>
</body>
</html>