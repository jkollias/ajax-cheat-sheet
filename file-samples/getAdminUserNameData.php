<?php 

/* SELECT username from admin_user */

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "enterprise";

// DB Connection
$connectionToEnterpriseDB = new mysqli($servername, $username, $password, $dbname);

// SQL query
$SQL_AdminUsersNames = "SELECT username from admin_user";

// Incase the connection is wrong
if ($connectionToEnterpriseDB->connect_error) {
  die("Connection failed: " . $connToEnterpriseDB->connect_error);
} 

echo "Hello Worlds";

$adminUserNames = $connectionToEnterpriseDB->query($SQL_AdminUsersNames);

if ($adminUserNames->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "id: " . $row["id"]. " - Name: " . $row["username"]. "<br>";
  }
} else {
  echo "0 results";
}

$connectionToEnterpriseDB->close();

?>