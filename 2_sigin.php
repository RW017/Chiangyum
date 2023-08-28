<?php
// Include config file
require_once "2_config.php";
$conn = $GLOBALS['link'];
// Define variables and initialize with empty value
$username = isset($_POST["username"]) ? $_POST["username"] : '';
$password = isset($_POST["password"]) ? $_POST["password"] : '';

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Change SQL to fit your database
    $sql = "SELECT * FROM employee WHERE employee_account = '$username' AND employee_password = '$password'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        // Start a new session
        session_start();
        
        // Store data in session variables
        $_SESSION["loggedin"] = true;
        $_SESSION["id"] = $row["employee_id"];
        $_SESSION["username"] = $row["employee_account"];
        $_SESSION["rank"] = $row["employee_rank"]; // Store the rank in session
        
        // Redirect based on rank
        if ($row["employee_rank"] == "管理者") {
            header("location: 2_home_manager.php"); // Change to the appropriate admin page
        } elseif ($row["employee_rank"] == "工程師") {
            header("location:2_home_engineer.php"); // Change to the appropriate assistant page
        } elseif ($row["employee_rank"] == "小幫手") {
            header("location: 2_home_assistant.php"); // Change to the appropriate viewer page
        } elseif ($row["employee_rank"] == "檢視者") {
            header("location: 2_home_viewer.php"); // Change to the appropriate engineer page
        } elseif ($row["employee_rank"] == "合作教室") {
            header("location: 2_home_class.php"); // Change to the appropriate engineer page
        } 
        
        exit; // Terminate script execution after redirect
    } else {
        // Display an error message if username or password is incorrect
        function_alert("帳號或密碼錯誤");
    }
}
// Close connection
mysqli_close($conn);

function function_alert($message) {
   echo "<script>alert('$message'); window.location.href='2_login.php';</script>";
    return false;
}
?>
