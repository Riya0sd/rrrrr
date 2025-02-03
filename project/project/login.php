<?php 
session_start();
if(isset($_SESSION['user_login'])){
    header('Location:software/admin_index.php');
}
require 'dbcon.php';
if(isset($_POST['login'])){
    $user_name=$_POST['user_name'];
    $password=$_POST['password'];
    $password=md5($password);
    $select_username=mysqli_query($conn,"SELECT * FROM `admin` WHERE `user_name`='$user_name'");
   
    if(mysqli_num_rows($select_username)==1){
 
        $select_password_row=mysqli_fetch_assoc($select_username);
        if($select_password_row['password']==$password){
            $_SESSION['user_login']=$user_name;
            header('Location:software/admin_index.php');
        }else{
            echo '<script>
            alert("Wrong Password");
            window.location.href="login.php";
    </script>';
        }
    }else{
        echo '<script>
                alert("Username Not Fount");
                window.location.href="login.php";
        </script>';
    }

    
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=f, initial-scale=1.0">
    <title>First Project</title>
    <!-- =====url====== -->
     <link rel="stylesheet" href="./css/style.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>
<body>
    <!-- ---------------project_start------------ -->
     <div class="container">

        <h1 class="logo">Login</h1>

        <form action="#" method=POST >

            <div class="inbox">
            <i class="fa-solid fa-user"></i>
            <input type="text" name="user_name" placeholder="Username" class="from_info" required >
            </div>

            <div class="inbox">
            <i class="fa-solid fa-lock"></i>
            <input id="show" type="password" name="password" placeholder="XXX-XXX-XXX" class="from_info" required >
            </div>

            <div class="form_aliment">

                <div class="show_pss">
                    <input type="checkbox" id="chk" name="chk" onclick="myFunction()" > <span>Show Password</span>
                </div>
            </div>

            <div class="form_button">
                <input type="submit" name="login"  class="log_btn" value="Login">
            </div>
            
            <div class="form_link">
                Not a Member?<a href="#">Register</a>
            </div>
            
        </form>


     </div>
    <!-- ---------------project_end------------ -->
    <script>
        function myFunction(){
    var show = document.getElementById('show');
    if(show.type=='password'){
        show.type='text';
    }else{
        show.type='password';
    }
}
    </script>
</body>
</html>