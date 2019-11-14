<!DOCTYPE html>
<html>
    <head>
        <title>Welcome</title>
        <link href = "./home.css" rel="stylesheet" type="text/css">
</head>
<body>

    <div class="cindex">
        <div calss="aa">
                <h1>welcome</h1>
        </div>
        <div  class="log">
                <a href="logout.php">Logout</a>
        </div>        
    </div>
    <div>
        <form action="index.php" method="post">
        <label>Enter your UID of the elephant</label><br/>
        <input type="text" name="search_id"/>
        <button name="search__" type="submit">Search</button>
        </form>
    </div>
    <p>Sample UID's are: 11,22,33,88,99,111,122,133</p>
<?php
session_start();
$db = mysqli_connect('localhost','root','','zoohackathon');

if(isset($_POST['search__'])){
    $search = mysqli_real_escape_string($db, $_POST['search_id']);

    $query = "SELECT * FROM elephant_info WHERE uid = '$search' ";

    $result = mysqli_query($db, $query);
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
    //$active = $row['active'];
        $count = mysqli_num_rows($result);
		
      if($count >=1) {
          ?>

        <div>


        <table style="width:50%">
        <tr>
            <th>uid</th>
            <th>Name</th>
            <th>Elephant Type</th>
            <th>Origin</th>
            <th>Ownership</th>
            <th>Description</th>
            <th>Location History</th>
        </tr>
        <tr>
            <th><?php echo $row['uid']; ?></th>
            <th><?php echo $row['name']; ?></th>
            <th><?php echo $row['eletype']; ?></th>
            <th><?php echo $row['origin']; ?></th>
            <th><?php echo $row['ownership']; ?></th>
            <th><?php echo $row['description']; ?></th>
            <th><?php echo $row['loc_hist']; ?></th>
        </tr>
        </table>
    </div>
    <!--<a href="update.php">Update the location history</a>-->
    <?php
      }
      else{
          echo "result not found";
      }
}
?>
</body>
</html>