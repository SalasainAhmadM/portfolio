<?php require_once('config.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online-Portfolio</title>
    <link rel="stylesheet" href="styles/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">
</head>
<?php
$u_qry = $conn->query("SELECT * FROM users where id = 1");
foreach ($u_qry->fetch_array() as $k => $v) {
    if (!is_numeric($k)) {
        $user[$k] = $v;
    }
}
$c_qry = $conn->query("SELECT * FROM contacts");
while ($row = $c_qry->fetch_assoc()) {
    $contact[$row['meta_field']] = $row['meta_value'];
}
?>

<body class="main-content">
    <header class="container header active" id="home">
        <div class="header-content">
            <div class="left-header">
                <div class="h-shape"></div>
                <div class="image">
                    <img src="<?php echo validate_image($_settings->userdata('avatar')) ?>" alt="">
                </div>
            </div>
            <div class="right-header">
                <h1 class="name">
                    Hi, I'm <span><br>
                        <?php echo isset($user) ? ucwords($user['firstname'] . ' ' . $user['lastname']) : ""; ?>
                    </span><br>
                    <?php echo $_settings->info('name') ?>
                </h1>
                <p>
                    <?php echo stripslashes($_settings->info('welcome_message')) ?>
                </p>
                <div class="btn-con">
                    <a href="cv.docx" class="main-btn">
                        <span class="btn-text">Download CV</span>
                        <span class="btn-icon"><i class="fas fa-download"></i></span>
                    </a>
                </div>
            </div>
        </div>
    </header>
    <main>
        <section class="container about" id="about">
            <div class="main-title">
                <h2>About <span>me</span> <!--<span class="bg-text">my stats</span>--></h2>
            </div>
            <div class="about-container">
                <div class="left-about">
                    <h4>Information About me</h4>
                    <p>
                        <?php include "about.html"; ?> <br /> <br />
                    </p>
                    <div class="btn-con">
                        <a href="cv.docx" class="main-btn">
                            <span class="btn-text">Download CV</span>
                            <span class="btn-icon"><i class="fas fa-download"></i></span>
                        </a>
                    </div>
                </div>
                <div class="right-about">
                    <div class="about-item">
                        <div class="abt-text">
                            <p class="large-text">3</p>
                            <p class="small-text">Small Projects <br /> Completed</p>
                        </div>
                    </div>
                    <div class="about-item">
                        <div class="abt-text">
                            <p class="large-text">2</p>
                            <p class="small-text">Years of <br /> experience</p>
                        </div>
                    </div>
                    <div class="about-stats">
                        <h4 class="stat-title">My Skills</h4>
                        <div class="progress-bars">
                            <div class="progress-bar">
                                <p class="prog-title">html5</p>
                                <div class="progress-con">
                                    <p class="prog-text">50%</p>
                                    <div class="progress">
                                        <span class="html"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-bar">
                                <p class="prog-title">css3</p>
                                <div class="progress-con">
                                    <p class="prog-text">65%</p>
                                    <div class="progress">
                                        <span class="css"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-bar">
                                <p class="prog-title">javascript</p>
                                <div class="progress-con">
                                    <p class="prog-text">45%</p>
                                    <div class="progress">
                                        <span class="js"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-bar">
                                <p class="prog-title">ReactJS</p>
                                <div class="progress-con">
                                    <p class="prog-text">65%</p>
                                    <div class="progress">
                                        <span class="react"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-bar">
                                <p class="prog-title">NodeJS</p>
                                <div class="progress-con">
                                    <p class="prog-text">55%</p>
                                    <div class="progress">
                                        <span class="node"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-bar">
                                <p class="prog-title">Python</p>
                                <div class="progress-con">
                                    <p class="prog-text">70%</p>
                                    <div class="progress">
                                        <span class="python"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h4 class="stat-title">My Timeline</h4>
                    <div class="timeline">
                        <?php
                        $e_qry = $conn->query("SELECT * FROM education order by year desc, month desc");
                        while ($row = $e_qry->fetch_assoc()):
                            ?>
                            <div class="timeline-item">
                                <div class="tl-icon">
                                    <i class="fas fa-briefcase"></i>
                                </div>
                                <p class="tl-duration">
                                    <?php echo $row['month'] . ' ' . $row['year'] ?>
                                </p>
                                <h5>
                                    <?php echo $row['degree'] ?><span> -
                                        <?php echo $row['school'] ?>
                                    </span>
                                </h5>
                                <p>
                                    <?php echo stripslashes(html_entity_decode($row['description'])) ?>
                                </p>
                            </div>
                        <?php endwhile; ?>
                    </div>
        </section>
        <section class="container" id="portfolio">
            <div class="main-title">
                <h2>My <span>Work</span> <!-- <span class="bg-text">My Work</span> --> </h2>
            </div>
            <p class="port-text">
                Here is some of my work that I've done in various programming languages.
            </p>
            <div class="timeline">
                <?php
                $w_qry = $conn->query("SELECT * FROM work ");
                while ($row = $w_qry->fetch_assoc()):
                    ?>
                    <div class="timeline-item">
                        <div class="tl-icon">
                            <i class="fas fa-briefcase"></i>
                        </div>
                        <p class="tl-duration">
                            <?php echo str_replace("_", " ", $row['started']) ?> -
                            <?php echo str_replace("_", " ", $row['ended']) ?>
                        </p>
                        <h5>
                            <?php echo $row['position'] ?><span> -
                                <?php echo $row['company'] ?>
                            </span>
                        </h5>
                        <p>
                            <?php echo stripslashes(html_entity_decode($row['description'])) ?>
                        </p>
                    </div>
                <?php endwhile; ?>

            </div>
            </div>
        </section>
        <section class="container" id="blogs">
            <div class="blogs-content">
                <div class="main-title">
                    <h2>My <span>Blogs</span> <!-- <span class="bg-text">My Blogs</span> --> </h2>
                </div>
                <div class="blogs">
                    <?php
                    $p_qry = $conn->query("SELECT * FROM project ");
                    while ($row = $p_qry->fetch_assoc()):
                        ?>
                        <div class="blog">
                            <img src="<?php echo validate_image($row['banner']) ?>" alt="">
                            <div class="blog-text">
                                <h4>
                                    <?php echo $row['name'] ?>
                                </h4>
                                <h3>
                                    <?php echo $row['client'] ?>
                                </h3>
                                <p>
                                    <?php echo stripslashes(html_entity_decode($row['description'])) ?>
                                </p>
                            </div>
                        </div>
                    <?php endwhile; ?>
                    <!-- <div class="blog">
                        <img src="img/blog1.jpg" alt="">
                        <div class="blog-text">
                            <h4>
                                How to Become an Expert in Web Design
                            </h4>
                            <p>
                                Aliquid assequendum valde durum est, si non durius studeas.
                            </p>
                        </div>
                    </div>
                    <div class="blog">
                        <img src="img/blog2.jpg" alt="">
                        <div class="blog-text">
                            <h4>
                                Become a Web Designer in 10 Days
                            </h4>
                            <p>
                                Aliquid assequendum valde durum est, si non durius studeas.
                            </p>
                        </div>
                    </div>
                    <div class="blog">
                        <img src="img/blog3.jpg" alt="">
                        <div class="blog-text">
                            <h4>
                                Debbuging made easy with Web Inspector
                            </h4>
                            <p>
                                Aliquid assequendum valde durum est, si non durius studeas.
                            </p>
                        </div>
                    </div>
                    <div class="blog">
                        <img src="img/port1.jpg" alt="">
                        <div class="blog-text">
                            <h4>
                                Get started with Web Design and UI Design
                            </h4>
                            <p>
                                Aliquid assequendum valde durum est, si non durius studeas.
                            </p>
                        </div>
                    </div>
                    <div class="blog">
                        <img src="img/port3.jpg" alt="">
                        <div class="blog-text">
                            <h4>
                                This is what you need to know about Web Design
                            </h4>
                            <p>
                                Aliquid assequendum valde durum est, si non durius studeas.
                            </p>
                        </div>
                    </div> -->
                </div>
            </div>
        </section>
        <section class="container contact" id="contact">
            <style>
                .contact-container {
                    max-width: 1200px;
                    margin: 0 auto;
                }

                .contact-content-con {
                    display: flex;
                    justify-content: center;
                }

                .left-contact {
                    width: 100%;
                    max-width: 400px;
                }
            </style>

            <div class="contact-container">
                <div class="main-title">
                    <h2>Contact <span>Me</span><span class="bg-text">Contact</span></h2>
                </div>
                <div class="contact-content-con">
                    <div class="left-contact">
                        <h4>Contact me here</h4>
                        <p>
                            If you want something to ask. Just contact this Email and #Number to contact me.
                        </p>
                        <div class="contact-info">
                            <div class="contact-item">
                                <div class="icon">
                                    <i class="fas fa-map-marker-alt"></i>
                                    <span>Location</span>
                                </div>
                                <p>
                                    :
                                    <?php echo $contact['address'] ?>
                                </p>
                            </div>
                            <div class="contact-item">
                                <div class="icon">
                                    <i class="fas fa-envelope"></i>
                                    <span>Email</span>
                                </div>
                                <p>
                                    <span>:
                                        <?php echo $contact['email'] ?>
                                    </span>
                                </p>
                            </div>
                            <!-- <div class="contact-item">
                                <div class="icon">
                                    <i class="fas fa-user-School"></i>
                                    <span>Student</span>
                                </div>
                                <p>
                                    <span>: Western Mindanao State University</span>
                                </p>
                            </div> -->
                            <div class="contact-item">
                                <div class="icon">
                                    <i class="fas fa-user-graduate"></i>
                                    <span>Mobile Number</span>
                                </div>
                                <p>
                                    <span>:
                                        <?php echo $contact['mobile'] ?>
                                    </span>
                                </p>
                            </div>
                            <div class="contact-item">
                                <div class="icon">
                                    <i class="fas fa-globe-africa"></i>
                                    <span>Languages</span>
                                </div>
                                <p>
                                    <span>:
                                        <?php echo $contact['language'] ?>
                                    </span>
                                </p>
                            </div>
                        </div>
                        <div class="contact-icons">
                            <div class="contact-icon">
                                <a href="<?php echo $contact['facebook'] ?>" target="_blank">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="<?php echo $contact['twitter'] ?>" target="_blank">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a href="<?php echo $contact['github'] ?>" target="_blank">
                                    <i class="fab fa-github"></i>
                                </a>
                                <a href="<?php echo $contact['youtube'] ?>" target="_blank">
                                    <i class="fab fa-youtube"></i>
                                </a>
                                <a href="<?php echo $contact['email'] ?>" target="_blank">
                                    <i class="fab fa-google"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </main>

    <div class="controls">
        <div class="control active-btn" data-id="home">
            <i class="fas fa-home"></i>
        </div>
        <div class="control" data-id="about">
            <i class="fas fa-user"></i>
        </div>
        <div class="control" data-id="portfolio">
            <i class="fas fa-briefcase"></i>
        </div>
        <div class="control" data-id="blogs">
            <i class="far fa-newspaper"></i>
        </div>
        <div class="control" data-id="contact">
            <i class="fas fa-envelope-open"></i>
        </div>
    </div>
    <div class="theme-btn">
        <i class="fas fa-adjust"></i>
    </div>
    <script src="app.js"></script>
</body>

</html>