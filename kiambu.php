<html>
<head>
  <title>Display Data into DB</title>
  <style type="text.css">
  table {
    border: 2px solid red;
background-color:  #FFC;
  }

  th {
    border-bottom: 5px solid #000;
  }
  td {
    border-bottom: 2px solid #666;
  }
  </style>
</head>
<body>
  <h1>Display Data from DB</h1>

<?php
include('connect-mysql.php');

$splget = "SELECT * FROM constituency" LIMIT 12;
 $sqldata = mysqli_query($dbcon, $sqlget) or die('error getting connection');

echo "<table";
echo "<tr><th>ID</th>Constituency Name</th></tr>"

while($row = mysqli_fetch_array($sqldata, MYSQLI_ASSOC)) {
  echo "<tr><td>";
  echo $row['constituency_id'];
 echo "</td><td>";
 echo $row['name'];
 echo "</td></tr>";
}

echo "</table";
?>
