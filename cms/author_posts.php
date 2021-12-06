


<?php include"includes/db.php"; ?>
<?php include"includes/header.php"; ?>

    <?php include("includes/navigation.php"); ?>

    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <?php
                    if (isset($_GET['p_id'])) {
                        $the_post_id = $_GET['p_id'];
                        $the_post_author = $_GET['author'];
                    }

                    $query = "SELECT * FROM posts WHERE post_user = '{$the_post_author}' ";
                    $select_all_posts_query = mysqli_query($connection, $query);

                    while ( $row =  mysqli_fetch_assoc($select_all_posts_query)) :
                        $post_title = $row['post_title'];
                        $post_author = $row['post_user'];
                        $post_date = $row['post_date'];
                        $post_image = $row['post_image'];
                        $post_content = $row['post_content'];
                ?>

                <div>
                    <h2><?php echo $post_title; ?></h2>
                    <p class="lead">
                        Post by : <?php echo $post_author; ?>
                    </p>
                    <p><span class="glyphicon glyphicon-time"></span> <?php echo $post_date; ?></p>
                    <hr>
                    <img class="img-responsive" src="images/<?php echo $post_image; ?>" alt="Mehedi's Image">
                    <hr>
                    <p><?php echo $post_content; ?></p>
                    <hr>
                </div>
                <?php endwhile ?>
            </div>


            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">
                <?php include"includes/sidebar.php"; ?>
            </div>
        </div><!-- /.row -->
        <hr>

<?php include("includes/footer.php"); ?>