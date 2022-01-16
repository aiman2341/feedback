<?php
use MongoDB\Driver\Session;
    date_default_timezone_set("Asia/Kuala_Lumpur");
    include 'comments.php';
    include 'Connect.php';
?>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="feedbackstyle.css" />
    <meta charset="utf-8" />
    <title>Feedback page</title>
</head>
<body>

    <div class = "center">
        <h1>Feedback page</h1>
    </div>
    

    <div class= "comment-box">
     <?php
     
     // comment insert form
     echo date("d-m-Y H:i:sa");
     echo 
     "<form method = 'POST' action ='".setComments($conn)."'>
        <label>Comment</label><br>
        <textarea name = 'message'></textarea> <br>
        <label>Name</label>
        <input type = 'user_id' name ='user_id'><br>
        <label>Email address</label>
        <input type='email' name= 'email'><br>
        <button type='submit' name='commentSubmit'>Comment</button>
     </form>"
     ?>

    </div>


    <div class ="flex-box">
        <div class="comment">
            <!---The comment display---->
            <form method='POST'>
                <div class="group">
                    <?php
                        global $conn;
                        $query    = "SELECT * FROM `comment`";
	                    $result = mysqli_query($conn, $query);

                        echo"<form method='post' action='".deleteComments($conn)."'>";
                        while($row = mysqli_fetch_array($result)){
                            // displays comment
                            echo  "<div class = 'container' ><p><b>" 
                            . $row['user_Id'] . "</b><br>" 
                            . nl2br($row['message']) . "<br>" 
                            . $row['email'];                            
                            "</p>"; 
                            // delete button, only comes out if admin
                            if(isset($_SESSION['admin_id'])){
                                if($_SESSION['admin_id'] == $row2['admin_id']){
                                    echo
                                    "<form class= 'delete-form' method= 'POST'>
                                    <input type= 'hidden' name='comment_id' value='". $row['comment_id'] ."'>
                                    <button type='submit' name='commentDelete'>Delete</button>
                                    </form>";
                                }
                            }
                            
                            echo "</div>";                           
                        } 

                    ?>
                </div>
                <div class="group">                   
                </div>
            </form>       
        </div>    
    </div>

    
</body>

</html>