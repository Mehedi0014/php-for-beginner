<?php include"includes/db.php"; ?>
<?php include"includes/header.php"; ?>

    <?php include("includes/navigation.php"); ?>

    <div class="container">
        <h1 class="page-header">
            Page Heading
            <small>Secondary Text</small>
        </h1>

        <?php
            if (isset($_POST['submit'])) :
               $search = $_POST['search'];
               $query = "SELECT * FROM posts WHERE post_tags LIKE '%$search%'";
               $result = mysqli_query($connection, $query);

               if (!$result) {
                   die(mysql_errno($connection));
               }

               if (mysqli_num_rows($result) == 0) {
                   echo "No Result Found";
               } else {      
        ?>

        <div class="row">
            <div class="col-md-8">
                <?php                    

                    while ( $row =  mysqli_fetch_assoc($result)) :
                        $post_title = $row['post_title'];
                        $post_author = $row['post_author'];
                        $post_date = $row['post_date'];
                        $post_image = $row['post_image'];
                        $post_content = $row['post_content'];
                ?>

                <div>
                    <h2>
                        <a href="#"><?php echo $post_title; ?></a>
                    </h2>
                    <p class="lead">
                        by <a href="index.php"><?php echo $post_author; ?></a>
                    </p>
                    <p><span class="glyphicon glyphicon-time"></span> <?php echo $post_date; ?></p>
                    <hr>
                    <img class="img-responsive" src="images/<?php echo $post_image; ?>" alt="Mehedi's Image">
                    <hr>
                    <p><?php echo $post_content; ?></p>
                    <a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <hr>
                </div>
                <?php endwhile ?>
            </div>





            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">
                <?php include"includes/sidebar.php"; ?>
            </div>
        </div><!-- /.row -->

        <?php
        }
            endif;
        ?>
        <hr>

<?php include("includes/footer.php"); ?>