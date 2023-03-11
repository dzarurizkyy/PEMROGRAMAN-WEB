<!-- Dzaru Rizky Fathan Fortuna -->
<!-- Pemrograman Web A081 -->
<!-- Tugas 5 -->


<!-- PHP try to connect localhost server -->
<?php include "connect.php" ?>

<!-- Declare Variable -->
<?php 
    $empty = 'NULL';

    $table1_th = array (
        "No. ",
        "Employee Number",
        "First Name",
        "Last Name",
        "Extension",
        "Email",
        "Office Code",
        "Reports To",
        "Job Title"
    );

    $table2_th = array (
        "No",
        "Product Lines",
        "Text Description",
        "HTML Description",
        "Image"
    );
?>


<!DOCTYPE html>
<html lang="id">
    
<head>
    <!-- Meta Tag -->
    <meta charshet="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Page Title -->
    <title>Display Table Data</title>
        
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="php-icon.png" />

    <!-- External CSS -->
    <link rel="stylesheet" type="text/css" href="style.css" />

    <!-- CSS Framework (Bootstrap) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>

<body>
    <!-- 1. Employees Table -->
    <br /><h1 class="table_title">EMPLOYEES TABLE</h1><br />

    <!-- Container -->
    <div class="table_container table-responsive">
        <table class="table table-bordered table-hover">
            <!-- Table Header -->
            <thead class="table-dark">
                <tr>
                    <?php $i = 0; while($i < count($table1_th)) : ?>
                        <th><?php echo "$table1_th[$i]"?></th>
                    <?php $i++; endwhile; ?>
                </tr>
            </thead>
            <!-- Table Body -->
            <tbody>
                <?php 
                    $i = 1;
                    // Run Query MySQL
                    $getEmployees = mysqli_query($conn, "select * from employees");
                    // Convert data in Mysql to array
                    while($displayEmployees = mysqli_fetch_array($getEmployees)) : 
                ?>
                    <tr>
                        <!-- No. -->
                        <td><?php echo "$i"?></td>
                        <th class="table-warning">
                            <?php 
                                if($displayEmployees['employeeNumber'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayEmployees['employeeNumber'];
                                endif;  
                            ?>
                        </th>
                        <!-- First Name -->
                        <td>
                            <?php 
                                if($displayEmployees['firstName'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayEmployees['firstName'];
                                endif;  
                            ?>
                        </td>
                        <!-- Last Name -->
                        <td>
                            <?php 
                                if($displayEmployees['lastName'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayEmployees['lastName'];
                                endif;  
                            ?>
                        </td>
                        <!-- Extension -->
                        <td>
                            <?php 
                                if($displayEmployees['extension'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayEmployees['extension'];
                                endif;  
                            ?>
                        </td>
                        <!-- Email -->
                        <td>
                            <?php 
                                if($displayEmployees['email'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayEmployees['email'];
                                endif;  
                            ?>
                        </td>
                        <!-- Office Code -->
                        <td>
                            <?php 
                                if($displayEmployees['officeCode'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayEmployees['officeCode'];
                                endif;  
                            ?>
                        </td>
                        <!-- Reports To -->
                        <td>
                            <?php 
                                if($displayEmployees['reportsTo'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayEmployees['reportsTo'];
                                endif;  
                            ?>
                        </td>
                        <!-- Job Title -->
                        <td>
                            <?php 
                                if($displayEmployees['jobTitle'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayEmployees['jobTitle'];
                                endif;  
                            ?>
                        </td>
                    </tr>
            </tbody>
            <?php $i++; endwhile; ?>
        </table>
    </div>
    
    <br /><br /><br />

    <!-- 2. Product Lines -->
    <h1 class="table_title">PRODUCT LINES TABLE</h1><br />

    <!-- Container -->
    <div class="table_container table-responsive">
        <table class="table table-bordered table-hover">
            <!-- Table Header -->
            <thead class="table-dark">
                <tr>
                    <?php $i = 0; while($i < count($table2_th)) : ?>
                        <th><?php echo $table2_th[$i]?></th>
                    <?php $i++; endwhile; ?>
                </tr>
            </thead>
            <!-- Table Body -->
            <tbody>
                <?php
                    $i = 1;
                    // Run Query MySQL
                    $getProductLines = mysqli_query($conn, "select * from productlines");
                    // Convert data in MySQL to array
                    while($displayProductLines = mysqli_fetch_array($getProductLines)) :
                ?>
                    <tr>
                        <!-- No -->
                        <td><?php echo $i?></td>
                        <!-- Product Line  -->
                        <th class="table-warning">
                            <?php 
                                if($displayProductLines['productLine'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayProductLines['productLine'];
                                endif;  
                            ?>
                        </th>
                        <!-- Text Description -->
                        <td>
                            <?php 
                                if($displayProductLines['textDescription'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayProductLines['textDescription'];
                                endif;  
                            ?>
                        </td>
                        <!-- HTML Description -->
                        <td>
                            <?php 
                                if($displayProductLines['htmlDescription'] == NULL) :
                                    echo $empty;
                                else:
                                    echo $displayProductLines['htmlDescription'];
                                endif;  
                            ?>
                        </td>
                        <!-- Image -->
                        <td>
                            <?php 
                                if($displayProductLines['image'] == NULL) :
                                    echo $empty;
                                else:
                                    echo '<img src="data:image/jpeg;base64, ' . base64_encode($displayProductLines['image']) . '" width="180px"/>'; 
                                endif;  
                            ?>
                        </td>
                    </tr>
                <?php $i++; endwhile;?>
            </tbody>
        </table>
    </div>
    
    <br /><br />

    <!-- Footer -->
    <footer class="bg-dark text-light">
        <small>DZARU RIZKY FATHAN FORTUNA (21081010283) - PEMROGRAMAN WEB A081 - TUGAS 5</small>
    </footer>
<body>

</html>

<!-- 
    Link Repository Github (Tugas 5) 
    https://github.com/dzarurizkyy/PEMROGRAMAN-WEB/tree/main/T5_PHP%20MySQL%20Menampilkan%20Data
-->
