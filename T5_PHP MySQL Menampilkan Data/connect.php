<!-- Dzaru Rizky Fathan Fortuna -->
<!-- Pemrograman Web A081 -->
<!-- Tugas 5 -->

<?php
    $dbserver   = 'localhost';
    $dbuser     = 'root';
    $dbpass     = '';
    $dbname     = 'classicmodels';

    // Connecting to the localhost server
    $conn = mysqli_connect($dbserver, $dbuser, $dbpass, $dbname);
    
    // Failed to connect
    if(!$conn) {
        $error = mysqli_connect_error();
        echo "<script>console.log('Database Not Connected : $error')</script>";
    }

    // Connected
    echo "<script>console.log('Database Connected')</script>";
?>