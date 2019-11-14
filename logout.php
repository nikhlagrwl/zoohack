<?php
unset($_SESSION);
session_abort();
header('location: home.php');
?>