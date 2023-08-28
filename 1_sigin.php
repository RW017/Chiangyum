<?php
// Include config file
require_once "2_config.php";
$conn = $GLOBALS['link'];
// Define variables and initialize with empty value
$u_username = isset($_POST["u_username"]) ? $_POST["u_username"] : '';
$u_password = isset($_POST["u_password"]) ? $_POST["u_password"] : '';

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Change SQL to fit your database
    $sql = "SELECT * FROM user WHERE user_account = '$u_username' AND user_password = '$u_password'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        // Start a new session
        session_start();
        
        // Store data in session variables
        $_SESSION["loggedin"] = true;
        $_SESSION["u_id"] = $row["user_id"];
        $_SESSION["u_username"] = $row["user_account"];
      
        
        // Redirect based on rank
       
            header("location: 1_menber.php"); // Change to the appropriate engineer page
    
        
        exit; 
    } else {
        // Display an error message if username or password is incorrect
        function_alert("帳號或密碼錯誤");
    }
}
// Close connection
mysqli_close($conn);

function function_alert($message) {
   echo "<script>alert('$message'); window.location.href='1_menber.php';</script>";
    return false;
}
?>
