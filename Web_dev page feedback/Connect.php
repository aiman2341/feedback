<?php

$conn = mysqli_connect('localhost', 'root', '', 'webdev_learn');

if(!$conn){
    die("Connection failed: " .mysqli_connect_error());
}