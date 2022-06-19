<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>RP Online</title>
    <link rel="stylesheet" type="text/css" href="sty.css">
    <script type="text/javascript" src="jquery-1.11.0.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    <script src="form-validation.js"></script>
</head>
<body>
<header>
    <div id="mainHeader">
        <a href="index.php"><img src="logo.png" alt="logo"></a>
        <ul>
            <li><a href="index.php">HOME</a></li>
            <li><a href="kategorija.php?kategorija=politika">POLITIKA</a></li>
            <li><a href="kategorija.php?kategorija=sport">SPORT</a></li>
            <li><a href="administracija.php">ADMINISTRACIJA</a></li>
        </ul>
    </div>
</header>
<section>
    <div class="mainSection">
        <div class="title">
          
        </div>
        <form method="post">
            <div class='form-item'>
                <div class='form-field'>
                <h2>NEMATE OVLASTI!</h2>            
                    <?php
                          header("Refresh:2 ; url=login.php");
                         exit();
                    ?>
                
                </div>
            </div>

            <footer>
                <h3>RP DIGITAL GMBH | ALLE RECHTE VORBEHALTEN</h3>
                <p>Josip Klepec</p>
                <?php
                if(isset($_SESSION['username'])) {
                    if ($_SESSION['username']) {
                        echo "<p>Logged in as " . $_SESSION['username'] . "<a href='logout.php' style='color:white; text-decoration: none'>  Logout</a></p>";
                    }
                }
                ?>
            </footer>
</body>
</html>
