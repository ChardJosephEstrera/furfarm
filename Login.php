<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Registration Form</title>

      <link rel="stylesheet" href="designlog.css">

      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Playwrite+CU:wght@100..400&display=swap" rel="stylesheet">

      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Lusitana:wght@400;700&display=swap" rel="stylesheet">
      
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    
   <div class="title">
     <h2></h2>
     <img src="logo.jpg" alt="Logo" class="logo">

    </div>
    
    
   
    <div class="container">
        <h2>Log In</h2>
        
        <?php
if (isset($_POST["login"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];
    require_once "database.php";

    $sql = "SELECT * FROM users WHERE username = '$username'";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $user = mysqli_fetch_array($result, MYSQLI_ASSOC);
        
        if ($user && password_verify($password, $user["password"])) {
            session_start();
            $_SESSION["user"] = "yes";
            header("Location: index.php");
            die();
        } else {
            echo "<div class='alert alert-danger'>Invalid username or password</div>";
        }
    } else {
        echo "<div class='alert alert-danger'>Database query failed</div>";
    }
}
?>

        <form method="post" action="">
            <div class="form-group">
                <label for="username"> Username</label>
                <input type="text" id="username" placehodler="Enter Username" name="username" value="<?php echo isset($_POST['username']) ? htmlspecialchars($_POST['username']) : ''; ?>">
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" placehodler="Enter Password" id="password" name="password">
            </div>
            <div class="form-group">
                <button type="submit" value="login" name="login">Login</button>
            </div>

            <div class="link">
              <p1> Don't have an account? please <a href="reg.php" class="link-reg"> Sign Up </a> </p1>  

            </div>
        </form>
    </div>
</body>
</html>