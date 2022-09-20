<?php
    $conn = new mysqli("localhost", "root", "", "the decor cart");
    if($conn->connect_error){
        die("Connection Failed!".$conn->connect_error);
    }
?>