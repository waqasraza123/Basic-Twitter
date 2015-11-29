<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.17/angular.min.js"></script>
    <script src="angular-sanitize.js"></script>
    <script src="js.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body ng-app="App">

<div ng-controller="myController" style="float: none; width: 50%; margin: 0 auto; background-color: gainsboro; padding: 10px;">
    <form action="<?php echo($_SERVER['PHP_SELF']);?>" method="post">
        <div>Email: <input type="email" name="email" required ng-model="email" class="form-control"></div>
        <div>Tweet: <input type="text" name="tweet" required ng-model="myTweet" class="form-control"></div>
        <input type="submit" value="Tweet" name="save-tweet" ng-click="showTweet()" class="form-control btn btn-danger" style="margin-top: 10px;">
    </form>

    <?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = 'twitter';

    // Create connection
    $conn = new mysqli($servername, $username, $password);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    mysqli_select_db($conn, $database) or die( "Unable to select database");

    if(isset($_POST['save-tweet']) && isset($_POST['email']) && isset($_POST['tweet'])){


        $email = $_POST['email'];
        $tweet = $_POST['tweet'];
        if(!empty($email) && !empty($tweet)){
            $query    = "INSERT INTO tweets (id, email, tweet)
             VALUES('', '$email', '$tweet')";
            mysqli_query($conn, $query) or trigger_error(mysqli_error()." in ".$query);

        }
    }?>

    <div class"new-tweet">
       <!-- {{newTweet}}-->
    </div>

    <div class="tweets" style="padding-top: 20px;">
        <?php
        $sql = 'SELECT * FROM tweets ORDER BY id desc';
        if(isset($conn)){
            $result = $conn->query($sql);
            while($row = mysqli_fetch_assoc($result)) {
                ?>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <?php echo $row["tweet"] . "<br>";?>
                    </div>
                </div>
                <?php
            }
        }

        ?>
    </div>
</div>

</body>
</html>