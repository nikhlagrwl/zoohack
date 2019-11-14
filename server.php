<?php
session_start();

$username = "";
$email = "";

$errors = array();

$db = mysqli_connect('localhost','root','','zoohackathon');

if(isset($_POST['register_admin']))
{
    $username = mysqli_real_escape_string($db, $_POST['username']);
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $cwlw_id = mysqli_real_escape_string($db, $_POST['cwlw_id']);
    $full_name = mysqli_real_escape_string($db, $_POST['full_name']);
    $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
    $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

    if(empty($username)){
        array_push($errors, "Username required");
    }
    if(empty($email)) {
        array_push($errors, "email required");
    }
    if(empty($password_1)) {
        array_push($errors, "password required");
    }
    if($password_1 != $password_2) {
        array_push($errors, "password didn't matched");
    } 

    if(count($errors) == 0){
        $password = md5($password_1);
        $query = "INSERT INTO admin_registration (username,cwlw_id,full_name,email,password) VALUES ('$username','$cwlw_id', '$full_name' ,'$email','$password')";
        
        mysqli_query($db, $query);
        echo "<script>alert('User registration Successfull')</script>";
        header('location: home.php');
    }
}

if(isset($_POST['login_admin']))
{
    $username = mysqli_real_escape_string($db, $_POST['username']);
    $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);

    if ( !empty($username) and !empty($password_1)){
        $password = md5($password_1);
        $query = "SELECT * FROM admin_registration WHERE username = '$username' AND password = '$password' ";

        $result = mysqli_query($db,$query);
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        //$active = $row['active'];
        $count = mysqli_num_rows($result);
      		
      if($count == 1) {
        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;
        
        header('location: index.php');
        
      }
      else {
          unset($_SESSION);
        ?>
        <script type="text/javascript">
            alert('Username or passsword incorrect');
            window.location.href = "home.php";
        </script>
      <?php
            
      }

    }
    else{
        ?>
        <script type="text/javascript">
            alert('Empty fields found!');
            window.location.href = "home.php";
        </script>
      <?php
    }
}
