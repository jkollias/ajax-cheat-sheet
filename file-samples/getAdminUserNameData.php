<?php 

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

/* SELECT username from admin_user */

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enterprise";

// DB Connection
$connectionToEnterpriseDB = new mysqli($servername, $username, $password, $dbname);

// SQL query
$SQL_AdminUsersNames = "SELECT username from admin_user";

// Incase the connection is wrong
if ($connectionToEnterpriseDB->connect_error) {
  die("Connection failed: " . $connToEnterpriseDB->connect_error);
} 

$adminUserNames = $connectionToEnterpriseDB->query($SQL_AdminUsersNames);

if ($adminUserNames->num_rows > 0) {
  // output data of each row
  while($row = $adminUserNames->fetch_assoc()) {
    echo " Name: " . $row["username"]. "<br>";
  }
} else {
  echo "0 results";
}

$connectionToEnterpriseDB->close();

?>