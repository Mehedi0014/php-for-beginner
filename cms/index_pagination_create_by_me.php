<?php include"includes/db.php"; ?>
<?php include"includes/header.php"; ?>

    <?php include("includes/navigation.php"); ?>



    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <?php
                    $post_limit = 4;
                    $mm = 0;

                    $post_query_count = "SELECT * FROM posts";
                    $select_all_posts_query = mysqli_query($connection, $post_query_count);
                    $count = mysqli_num_rows($select_all_posts_query);
                    $count = ceil($count / $post_limit);

                    
                    if(isset($_GET['mm'])){
                        $mm = $_GET['mm'];
                        if ($mm <= 1){
                            $mm = 0;
                        }else{
                            echo $mm = ($post_limit * $mm) - $post_limit;
                        }
                    }

                    $query = "SELECT * FROM posts LIMIT $post_limit OFFSET $mm";
                    $select_all_posts_query = mysqli_query($connection, $query);

                    while ( $row =  mysqli_fetch_assoc($select_all_posts_query)) :
                        $post_id = $row['post_id'];
                        $post_title = $row['post_title'];
                        $post_author = $row['post_author'];
                        $post_date = $row['post_date'];
                        $post_image = $row['post_image'];
                        $post_content = substr($row['post_content'], 0, 300);
                        $post_status = $row['post_status'];
 
                        if ($post_status == 'published') {
                ?>
                        <div>
                            <h2>
                                <a href="post.php?p_id=<?php echo $post_id ?>"><?php echo $post_title; ?></a>
                            </h2>
                            <p class="lead">
                                by <a href="author_posts.php?author=<?php echo $post_author; ?>&p_id=<?php echo $post_id?>"><?php echo $post_author; ?></a>
                            </p>
                            <p><span class="glyphicon glyphicon-time"></span> <?php echo $post_date; ?></p>
                            <hr>
                            <img class="img-responsive" src="images/<?php echo $post_image; ?>" alt="Mehedi's Image">
                            <hr>
                            <p><?php echo $post_content; ?></p>
                            <a class="btn btn-primary" href="post.php?p_id=<?php echo $post_id; ?>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                            <hr>
                        </div>
                <?php } endwhile ?>
            </div>





            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">
                <?php include"includes/sidebar.php"; ?>
            </div>
        </div><!-- /.row -->
        <hr>

        <ul class="pager">
            <?php
                for ($i = 0; $i < $count; $i++) {
                    $j = $i+1;
                    echo "<li><a href='index.php?mm=$j'>{$j}</a></li>";
                }
            ?>
        </ul>

<?php include("includes/footer.php"); ?>