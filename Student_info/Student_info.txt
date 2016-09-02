 <?php

include('connectionData.txt');
// $server = "ix-trusty.cs.uoregon.edu";
// $port =  "3737";
// $dbname = "StudentInfo";
// $user = "qilio";
// $pass = "";
  
$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title></title>
  </head>
  
  <body bgcolor="#F7D358">
  
  
  <hr>
  <p align="center"> Student Simple Infomation
  </p>

  
  
<?php
  
$state = $_POST['state'];
$state = mysqli_real_escape_string($conn, $state);

$query = "SELECT distinct s_id, s_name, s_gender, ht_name, uni_name, major_name, s_email, s_phoneNum,d_name, d_catagory, Int_details
FROM Students
join weakCourse2Stu using (s_id)
join Courses using (c_id)
join Majors on Students.m_id = Majors.major_id
join weakDevice2Stu using (s_id)
join Devices using (d_id) 
join University using (uni_id)
join Interest using (s_id)
join HomeTown using (s_id)
where s_id=";
$query = $query."'".$state."';";

?>



<hr>


<?php

$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));

      
print "<pre>";
print "<table align='center' style= 'width: 60%' border='1' font='#706EF6'>";
print"<tr>
          <th> Student ID </th>
          <th> Studetn Name </th>
          <th> Student Gender </th>
          <th> Student HomeTown </th>
          <th> University Name </th>
          <th> Major </th>
          <th> Email </th>
          <th> Phone Number </th>
          <th> Owned Device </th>
          <th> Device Catagory </th>
          <th> Interests </th>
      </tr>";
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
{
    print "<tr align='center'>";
    print "<td>$row[s_id]</td> <td>$row[s_name]</td> <td>$row[s_gender]</td> <td>$row[ht_name]</td> <td>$row[uni_name]</td> <td>$row[major_name]</td> <td>$row[s_email]</td> <td>$row[s_phoneNum]</td> <td>$row[d_name]</td> <td>$row[d_catagory]</td> <td>$row[Int_details]</td> ";
    print "</tr>";


}

print"</table>";
print "</pre>";

mysqli_free_result($result);

mysqli_close($conn);

?>


<p>
<hr>

 
</body>
</html>
    
