<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="create-post.css"> 
</head>
<body>
    <h1>add a scholarship : </h1><br>
    <form action="post-schr-submit.php" method ="post">
         <label for="field" > field : </label>
         <input type="text" name="field" id="field" placeholder="Ex : talk , internship "  >
         <label for="title"> title : </label>
         <input type="text" name="title" id="title" >
         <label for="description">Description</label> 
         <textarea name="description" id="description" cols="30" rows="10"></textarea>
         <label for="link">website link : </label> 
         <input type="text" name="link" id="link">
         <label for="location "> location : </label> 
         <input type="text" name="location" id="location">
         <label for="duration"> duration : </label> 
         <input type="text" name="duration" id="duration">
         <label for="start-date">start date : </label>
         <input type="date" name="start-date" id="start-date"> 
         <label for="end-date">end date : </label>
         <input type="date" name="end-date" id="end-date"> 
         <label for="type">Type : </label>
         <input type="text" name="type" id="type"> 
         <input type="submit" name="submit_field" value="post "> 
    </form>
    <button><a href="../schship.php">back</a></button>
  
</body>
</html>