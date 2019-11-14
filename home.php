<?php include('server.php'); ?>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome</title>
        <link href = "./home.css" rel="stylesheet" type="text/css">
        <link rel="icon" href="https://cdn4.iconfinder.com/data/icons/flat-brand-logo-2/512/wwf-512.png" type="image/icon type">
    </head>
    <body class="home">
        <div class = "container_home">
                <div>
                        <p class="hding">LOGIN FOR CWLW MEMBERS</p>
                </div>
                <form action="server.php" class="user" method="post">
                        <div class="FormField">
                                <label class="FormField__Label" htmlFor="text">Enter your username</label><br/>
                                <input type="text" class="FormField__Input" placeholder="Enter your username" name="username"/>
                        </div>
                        <div class="FormField">
                                <label class="FormField__Label" htmlFor="password">Password</label><br/>
                                <input type="password" class="FormField__Input" placeholder="Enter your password" name="password_1"/>
                        </div>                        
                        <div class="login aa" >
                                <button type="submit" name="login_admin" class="button">Login</button>
                        </div>
                        <div class="create_acc text-center aa">
                                <a href="register_admin.php">Create an Account!</a>
                        </div>
                </form>
        </div>

    </body>
    </html>
