


<?php include"includes/db.php"; ?>
<?php include"includes/header.php"; ?>

    <?php include("includes/navigation.php"); ?>

    <div class="container">
        <h1 class="page-header">
            Page Heading
            <small>Secondary Text</small>
        </h1>

        <div class="row">
            <div class="col-md-8">
                <?php
                    if (isset($_GET['p_id'])) {
                        $the_post_id = $_GET['p_id'];
                    }

                    $query = "SELECT * FROM posts WHERE post_id = {$the_post_id}";
                    $select_all_posts_query = mysqli_query($connection, $query);

                    while ( $row =  mysqli_fetch_assoc($select_all_posts_query)) :
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


                <!-- Blog Comments -->

                <?php
                if (isset($_POST['create_comment'])) {
                    $the_post_id = $_GET['p_id'];

                    $comment_author = $_POST['comment_author'];
                    $comment_email = $_POST['comment_email'];
                    $comment_content = $_POST['comment_content'];



                    $query = "INSERT INTO comments(comments_post_id, comments_author, comments_email, comments_content, comments_status, comments_date) ";

                    $query .= "VALUES ($the_post_id, '$comment_author', '$comment_email', '$comment_content', 'Unapproved', now() )";


                    $create_comment_query = mysqli_query($connection, $query);

                    if (!$create_comment_query) {
                        die('QUERY FAILED' . mysqli_error($connection));
                    }

                    $query = "UPDATE posts SET post_comment_count = post_comment_count + 1 ";
                    $query .= "WHERE post_id = $the_post_id ";
                    $update_comment_count = mysqli_query($connection, $query);
                }
                ?>
                <!-- Comments Form -->
                <div class="well">
                    <h4>Leave a Comment:</h4>
                    <form method="post" action="" role="form">
                        <div class="form-group">
                            <label for="comment_author">Author</label>
                            <input type="text" class="form-control" name="comment_author">
                        </div>
                        <div class="form-group">
                            <label for="comment_email">Email</label>
                            <input type="email" class="form-control" name="comment_email">
                        </div>
                        <div class="form-group">
                            <label for="comment_content">Comment</label>
                            <textarea class="form-control" name="comment_content" rows="3"></textarea>
                        </div>
                        <button type="submit" name="create_comment" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <hr>

                <!-- Posted Comments -->

                <!-- Comment -->
                <?php 
                    $query = "SELECT * FROM comments WHERE comments_post_id = $the_post_id AND comments_status = 'Approved' ORDER BY comments_id DESC ";
                    $select_comment_query = mysqli_query($connection, $query);

                    // print_r($select_comment_query);

                    if (!$select_comment_query) {
                        die("Query Failed" . mysqli_error($connection));
                    }

                    while ($row = mysqli_fetch_array($select_comment_query)) :
                        $comments_date = $row['comments_date'];
                        $comments_content = $row['comments_content'];
                        $comments_author = $row['comments_author'];
                ?>
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading"><?php echo $comments_author; ?>
                            <small><?php echo $comments_date; ?></small>
                        </h4>
                        <?php echo $comments_content; ?>
                    </div>
                </div>
                <?php endwhile; ?>

            </div>


            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">
                <?php include"includes/sidebar.php"; ?>
            </div>
        </div><!-- /.row -->
        <hr>

<?php include("includes/footer.php"); ?>