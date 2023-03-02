<!-- Dzaru Rizky Fathan Fortuna -->
<!-- Pemrograman Web A081 -->
<!-- Tugas 4 -->

<!-- Variable -->
<?php
    $percent         = "%";
    
    // Title
    $pageTitle       = "Biodata Diri";
    $nameTitle       = "Nama Saya";
    $npmTitle        = "NPM";
    $ageTitle        = "Usia";
    $genderTitle     = "Kelamin";
    $addressTitle    = "Alamat";
    $religionTitle   = "Agama";
    $aboutmeTitle    = "Tentang Saya";
    $educationTitle  = "Pendidikan";
    $school1Title    = "Taman Kanak-Kanak";
    $school2Title    = "Sekolah Dasar";
    $school3Title    = "Sekolah Menengah Pertama";
    $school4Title    = "Sekolah Menengah Atas";
    $school5Title    = "Teknik Informatika";
    $school6Title    = "Fullstack Web Development";

    // Data Personal
    $fullName        = "Dzaru Rizky Fathan Fortuna";
    $job1            = "Web Ethusiast";
    $job2            = "Mahasiswa";
    $npm             = "21081010283";
    $birthdate       = "2003-06-27";
    $age             = date_diff(date_create($birthdate), date_create('today'))->y;
    $gender          = "Laki-Laki";
    $address         = "Kota Surabaya, Jawa Timur";
    $religion        = "Islam";
    $skill1          = "HTML";
    $skill2          = "CSS";
    $skill3          = "Javascript";
    $skill4          = "MySQL";
    $skill1Rate      = 80 . $percent;
    $skill2Rate      = 70 . $percent;
    $skill3Rate      = 50 . $percent;     
    $skill4Rate      = 70 . $percent; 
    $school1         = "TK AR RAHMAN KERTOSONO";
    $school2         = "SD AR RAHMAN KERTOSONO";
    $school3         = "SMPN 2 KERTOSONO";
    $school4         = "SMAN NGORO JOMBANG";
    $school5         = 'UPN "Veteran" Jawa Timur';
    $school6         = "BOOTCAMP HARISENIN BATCH 3";
    $school1Period   = "2006-2009";
    $school2Period   = "2009-2015";
    $school3Period   = "2015-2018";
    $school4Period   = "2018-2021";
    $school5Period   = "2021-now";
    $school6Period   = "2022";
    
    // Paragraph
    $paragraph1     =  "Mahasiswa Teknik Informatika dari Universitas Pembangunan Nasional Jawa Timur. 
                        Memiliki minat yang besar dalam bidang Web Developer.";
    $paragraph2     =  "Memiliki kemampuan dalam menganalisis dan memecahkan masalah secara logis. Selain 
                        itu, saya juga memiliki kreativitas yang tinggi. Hal ini memungkinkan Saya untuk 
                        melihat masalah dari berbagai sudut pandang dan menemukan solusi inovatif untuk 
                        memecahkan masalah.";
?>

<!DOCTYPE html>
<html>

<head>
    <!-- Meta Tag-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Page Title -->
    <title>Biodata Diri</title>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="Image/profile-icon.png" />

    <!-- External CSS -->
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
    <!-- Header -->
    <header>
        <img id="header-background" src="Image/header-image.png">
        <h1 id="header-title" class="header-text">
            <?php echo strtoupper($pageTitle); ?>
        </h1>
        <h3 id="header-subtitle" class="header-text">
            <?php echo "$fullName"; ?>
        </h3>
    </header>

    <!-- Biography -->
    <section>
        <img id="photo-profile" src="Image/profile-image.png">
        <div id="biography-container-1">
            <img id="biography-shape-1" src="Image/shape-1.png">
            <p id="biography-text-1">
                <?php echo "$nameTitle"?>
            </p>
        </div>
        <h4 id="biography-text-2">
            <?php echo "$fullName"?>
        </h4>
        <p id="biography-text-3">
            <?php echo "$job1 & $job2"?>
        </p>
        <div id="biography-line-1"></div>
        <table cellpadding="3px">
            <tr>
                <th>
                    <?php echo "$npmTitle"?>
                </th>
                <td></td>
                <td>
                    <?php echo "$npm"?>
                </td>
            </tr>
            <tr>
                <th>
                    <?php echo "$ageTitle"?>
                </th>
                <td></td>
                <td>
                    <?php echo "$age tahun"?>
                </td>
            </tr>
            <tr>
                <th>
                    <?php echo "$genderTitle"?>
                </th>
                <td></td>
                <td>
                    <?php echo "$gender"?>
                </td>
            </tr>
            <tr>
                <th>
                    <?php echo "$religionTitle"?>
                </th>
                <td></td>
                <td>
                    <?php echo "$religion"?>
                </td>
            </tr>
            <tr>
                <th>
                    <?php echo "$addressTitle"?>
                </th>
                <td></td>
                <td>
                    <?php echo "$address"?>
                </td>
            </tr>
        </table>
        <!-- Social Media -->
        <div id="biography-card-1">
            <a href="mailto: dzarurizkybusiness@gmail.com" title="Email" alt="My Email" target="_blank">
                <img id="biography-icon-1" src="Image/email-icon.png">
            </a>
            <a href="https://wa.link/8ox0qu" title="Whatsapp" alt="My Phone Number" target="_blank">
                <img id="biography-icon-2" src="Image/whatsapp-icon.png">
            </a>
            <a href="https://www.instagram.com/dzarurizkyy/?hl=id" title="Instagram" alt="My Instagram" target="_blank">
                <img id="biography-icon-3" src="Image/instagram-icon.png">
            </a>
            <a href="https://www.linkedin.com/in/dzarurizky/" title="Linkedin" alt="My LinkedIn" target="_blank">
                <img id="biography-icon-4" src="Image/linkedin-icon.png">
            </a>
            <a href="https://github.com/dzarurizkyy" title="Github" alt="My Github" target="_blank">
                <img id="biography-icon-5" src="Image/github-icon.png">
            </a>
            <a href="https://dribbble.com/Jaspercodes" title="Dribble" alt="My Dribble" target="_blank">
                <img id="biography-icon-6" src="Image/dribble-icon.png">
            </a>
        </div>
    </section>

    <!-- About Me -->
    <h2 id="aboutme-title" class="article-title">
        <?php echo strtoupper($aboutmeTitle)?>
    </h2>
    <article id="aboutme-container-1">
        <!-- Description -->
        <div id="aboutme-container-2">
            <p>
                <?php echo "$paragraph1"?>
            </p>
            <p>
                <?php echo "$paragraph2"?>
            </p>
        </div>
        <div id="aboutme-container-3">
            <!-- HTML -->
            <div class="aboutme-card">
                <p id="aboutme-skill-1" class="aboutme-skill">
                    <?php echo "$skill1"?>
                </p>
                <progress id="aboutme-score-1" class="aboutme-score" value="80" max="100"></progress>
                <p id="aboutme-percent-1" class="aboutme-percent">
                    <?php echo "$skill1Rate"?>
                </p>
            </div>
            <!-- CSS -->
            <div class="aboutme-card">
                <p id="aboutme-skill-2" class="aboutme-skill">
                    <?php echo "$skill2"?>
                </p>
                <progress id="aboutme-score-2" class="aboutme-score" value="70" max="100"></progress>
                <p id="aboutme-percent-2" class="aboutme-percent">
                    <?php echo "$skill2Rate"?>
                </p>
            </div>
            <!-- Javascript -->
            <div class="aboutme-card">
                <p id="aboutme-skill-3" class="aboutme-skill">
                    <?php echo "$skill3"?>
                </p>
                <progress id="aboutme-score-3" class="aboutme-score" value="50" max="100"></progress>
                <p id="aboutme-percent-3" class="aboutme-percent">
                    <?php echo "$skill3Rate"?>
                </p>
            </div>
            <!-- MySQL -->
            <div class="aboutme-card">
                <p id="aboutme-skill-4" class="aboutme-skill">
                    <?php echo "$skill4"?>
                </p>
                <progress id="aboutme-score-4" class="aboutme-score" value="70" max="100"></progress>
                <p id="aboutme-percent-4" class="aboutme-percent">
                    <?php echo "$skill4Rate"?>
                </p>
            </div>
        </div>
    </article>

    <!-- Education -->
    <h2 id="education-title" class="article-title">
        <?php echo strtoupper($educationTitle)?>
    </h2>
    <article>
        <img id="education-line-1" src="Image/line-1.png">
        <!-- TK -->
        <div class="education-card">
            <div id="education-circle-1" class="education-circle"></div>
            <img id="education-shape2-1" class="education-shape2" src="Image/shape-2.png">
            <h3 id="education-name-1" class="education-name">
                <?php echo "$school1Title" ?>
            </h3>
            <h4 id="education-school-1" class="education-school">
                <?php echo "$school1" ?>
            </h4>
            <img id="education-shape1-1" class="education-shape1" src="Image/shape-1.png">
            <p id="education-period-1" class="education-period">
                <?php echo "$school1Period"?>
            </p>
        </div>
        <!-- SD -->
        <div class="education-card">
            <div id="education-circle-2" class="education-circle"></div>
            <img id="education-shape2-2" class="education-shape2" src="Image/shape-2.png">
            <h3 id="education-name-2" class="education-name">
                <?php echo "$school2Title" ?>
            </h3>
            <h4 id="education-school-2" class="education-school">
                <?php echo "$school2" ?>
            </h4>
            <img id="education-shape1-2" class="education-shape1" src="Image/shape-1.png">
            <p id="education-period-2" class="education-period">
                <?php echo "$school2Period"?>
            </p>
        </div>
        <!-- SMP -->
        <div class="education-card">
            <div id="education-circle-3" class="education-circle"></div>
            <img id="education-shape2-3" class="education-shape2" src="Image/shape-2.png">
            <h3 id="education-name-3" class="education-name">
                <?php echo "$school3Title" ?>
            </h3>
            <h4 id="education-school-3" class="education-school">
                <?php echo "$school3" ?>
            </h4>
            <img id="education-shape1-3" class="education-shape1" src="Image/shape-1.png">
            <p id="education-period-3" class="education-period">
                <?php echo "$school3Period"?>
            </p>
        </div>
        <!-- SMA -->
        <div class="education-card">
            <div id="education-circle-4" class="education-circle"></div>
            <img id="education-shape2-4" class="education-shape2" src="Image/shape-2.png">
            <h3 id="education-name-4" class="education-name">
                <?php echo "$school4Title"?>
            </h3>
            <h4 id="education-school-4" class="education-school">
                <?php echo "$school4" ?>
            </h4>
            <img id="education-shape1-4" class="education-shape1" src="Image/shape-1.png">
            <p id="education-period-4" class="education-period">
                <?php echo "$school4Period"?>
            </p>
        </div>
        <!-- Kuliah -->
        <div class="education-card">
            <div id="education-circle-5" class="education-circle"></div>
            <img id="education-shape2-5" class="education-shape2" src="Image/shape-2.png">
            <h3 id="education-name-5" class="education-name">
                <?php echo "$school5Title"?>
            </h3>
            <h4 id="education-school-5" class="education-school">
                <?php echo "$school5" ?>
            </h4>
            <img id="education-shape1-5" class="education-shape1" src="Image/shape-1.png">
            <p id="education-period-5" class="education-period">
                <?php echo "$school5Period"?>
            </p>
        </div>
        <!-- Bootcamp -->
        <div class="education-card">
            <div id="education-circle-6" class="education-circle"></div>
            <img id="education-shape2-6" class="education-shape2" src="Image/shape-2.png">
            <h3 id="education-name-6" class="education-name">
                <?php echo "$school6Title"?>
            </h3>
            <h4 id="education-school-6" class="education-school">
                <?php echo "$school6"?>
            </h4>
            <img id="education-shape1-6" class="education-shape1" src="Image/shape-1.png">
            <p id="education-period-6" class="education-period">
                <?php echo "$school6Period"?>
            </p>
        </div>
    </article>

    <!-- Footer -->
    <footer></footer>
</body>

</html>

<!-- 
    Link Repository Github (Tugas 3) 
    https://github.com/dzarurizkyy/PEMROGRAMAN-WEB/tree/main/T3_Biodata%20Diri%202
-->