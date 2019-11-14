<?php include('server.php'); ?>
<!DOCTYPE html>
<html>
    <head>
        <title>Register page for CWLW admin</title>
        <link href = "./home.css" rel="stylesheet" type="text/css">
    </head>
<body class="app">
<div class="container_radmin">
<form action = "./server.php" class="user" method="post">
        <div class="FormField">
                <label class="FormField__Label" htmlFor="username">Enter a username</label><br/>
                <input type="text" class="FormField__Input" placeholder="Enter a username" name="username"/>
        </div>
        <div class="FormField">
                <label class="FormField__Label" htmlFor="email">Enter your e-mail</label><br/>
                <input type="email" id="email" class="FormField__Input" placeholder="Enter your e-mail" name="email"/>
        </div>
        <div class="FormField">
                <label class="FormField__Label" htmlFor="text">Enter your CWLW id</label><br/>
                <input type="text" id="text" class="FormField__Input" placeholder="Enter your CWLW id" name="cwlw_id"/>
        </div>
        <div class="FormField">
                <label class="FormField__Label" htmlFor="text">Enter your full name</label><br/>
                <input type="text" id="text" class="FormField__Input" placeholder="Enter your full name" name="full_name"/>
        </div>
        <div class="FormField">
                <label class="FormField__Label" htmlFor="password">Enter your password</label><br/>
                <input type="password" id="password" class="FormField__Input" placeholder="Enter your password" name="password_1"/>
        </div>
        <div class="FormField">
                <label class="FormField__Label" htmlFor="password">Confirm password</label><br/>
                <input type="password" id="password" class="FormField__Input" placeholder="Re-enter your password" name="password_2"/>
        </div>        
        <div class="login">
        <button type="submit" name="register_admin" class="button">Submit</button>
        </div>
</form>
</div>
</body>
</html>