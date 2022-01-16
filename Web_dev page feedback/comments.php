<?php

function setComments($conn){
    // insert comment into db
    if (isset($_POST['commentSubmit'])){
        $user_id = $_POST['user_id'];
        $message = $_POST['message'];
        $email = $_POST['email'];       

        if ($message == '') {             
            echo "<script type='text/javascript'>alert('No Comment detected');</script>";
        } else {
            if ($user_id == '' || $email== '') {
            $user_id = "Anonymous";
            $email = "no email given";
            $sql = "INSERT INTO comment (user_id, message, email) VALUES ('$user_id', '$message', '$email')";
            $result = $conn->query($sql);
            } else {
            $sql = "INSERT INTO comment (user_id, message, email) VALUES ('$user_id', '$message', '$email')";
            $result = $conn->query($sql);
            }

        }
    }
}

function getComments($conn) {
    $sql = "SELECT * FROM comment";
    $result =$conn->query($sql);
    $row = $result->fetch_assoc();
    $row['message'];
}

function deleteComments($conn){

    if(isset($_POST['commentDelete'])){
        $comment_id = $_POST['comment_id'];

        $sql = "DELETE FROM comment WHERE comment_id = '$comment_id'";
        $result = $conn->query($sql);
        header("Location: feedbackPage.php");
    }
}