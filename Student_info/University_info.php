 <?php

include('connectionData.txt');
// $server = "ix-trusty.cs.uoregon.edu";
// $port =  "3737";
// $dbname = "StudentInfo";
// $user = "qilio";
// $pass = "";
  
$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');
$state1 = $_POST['get_uni_id'];
$temp_name = "select uni_name from University
where uni_id = '$state1'";
$temp_result = mysqli_query($conn, $temp_name)
or die(mysqli_error($conn));

$row = mysqli_fetch_array($temp_result, MYSQLI_BOTH);
$title = $row ['uni_name'];
?>

<html>
<head>
  <title></title>
  </head>
  
  <body bgcolor="#58ACFA">
  
  

<!-- University Major Infomation -->
  <hr>
  <div align="center">
  <p><?php print "<h1>$title</h1>"?>
  </p>
  </div>


  
<?php
  


$state1 = mysqli_real_escape_string($conn, $state1);

$query1 = "SELECT distinct uni_id, uni_name, uni_location, major_name 
FROM University
join weakMajor2University on University.uni_id = weakMajor2University.u_id
join Majors on weakMajor2University.m_id = Majors.major_id
join Courses on Majors.major_id = Courses.m_id
join weakDevice2Unviersity on University.uni_id = weakDevice2Unviersity.u_id
join Devices using (d_id)
where uni_id =";
$query1 = $query1."'".$state1."';";


?>

<hr>


<?php

$result1 = mysqli_query($conn, $query1)
or die(mysqli_error($conn));

      
print "<pre>";
print "<table align='center' style= 'width: 60%' border='1' font='#706EF6'>";
print"<tr>
          <th> University ID </th>
          <th> University Name </th>
          <th> University Location </th>
          <th> Majors </th>
      </tr>";
while($row = mysqli_fetch_array($result1, MYSQLI_BOTH))
{
    print "<tr align='center'>";
    print "<td>$row[uni_id]</td> <td>$row[uni_name]</td> <td>$row[uni_location]</td> <td>$row[major_name]</td> ";
    print "</tr>";


}

print"</table>";
print "</pre>";

mysqli_free_result($result1);



?>

<!-- Courses Infomation -->
  <hr>
  <p align="center"> Courses Infomation
  </p>


  
<?php
  
$state3 = $_POST['get_uni_id'];

$state3 = mysqli_real_escape_string($conn, $state3);

$query3 = "select distinct uni_id, uni_name, major_name, c_id, c_name
from University
join weakMajor2University on University.uni_id = weakMajor2University.u_id
join Majors on weakMajor2University.m_id = Majors.major_id
join Courses on Majors.major_id = Courses.m_id
where uni_id =";
$query3 = $query3."'".$state3."';";


?>

<hr>


<?php

$result3 = mysqli_query($conn, $query3)
or die(mysqli_error($conn));

      
print "<pre>";
print "<table align='center' style= 'width: 60%' border='1' font='#706EF6'>";
print"<tr>
          <th> University ID </th>
          <th> University Name </th>
          <th> Major Name </th>
          <th> Course ID </th>
          <th> Course Name </th>
      </tr>";
while($row = mysqli_fetch_array($result3, MYSQLI_BOTH))
{
    print "<tr align='center'>";
    print "<td>$row[uni_id]</td> <td>$row[uni_name]</td> <td>$row[major_name]</td> <td>$row[c_id]</td> <td>$row[c_name]</td> ";
    print "</tr>";


}

print"</table>";
print "</pre>";

mysqli_free_result($result3);


?>

<!-- Device Infomation -->
<p>

  <hr>
  <p align="center"> Device Infomation
  </p>
  
<?php
  
$state2 = $_POST['get_uni_id'];

$state2 = mysqli_real_escape_string($conn, $state2);

$query2 = "select u_id, uni_name, d_id, d_name, d_catagory
from University
join weakDevice2Unviersity on University.uni_id = weakDevice2Unviersity.u_id
join Devices using (d_id)
where uni_id =";
$query2 = $query2."'".$state2."';";

?>

<hr>

<?php

$result2 = mysqli_query($conn, $query2)
or die(mysqli_error($conn));

      
print "<pre>";
print "<table align='center' style= 'width: 60%' border='1' font='#706EF6'>";
print "<tr>
          <th> University ID </th>
          <th> University Name </th>
          <th> Device ID </th>
          <th> Device Name </th>
          <th> Device Catagory </th>
      </tr>";
while($row = mysqli_fetch_array($result2, MYSQLI_BOTH))
{
    print "<tr align='center'>";
    print "<td>$row[u_id]</td> <td>$row[uni_name]</td> <td>$row[d_id]</td> <td>$row[d_name]</td> <td>$row[d_catagory]</td> ";
    print "</tr>";


}

print"</table>";
print "</pre>";

mysqli_free_result($result2);

mysqli_close($conn);

?>


<p>
<hr>

 
</body>
</html>
    
