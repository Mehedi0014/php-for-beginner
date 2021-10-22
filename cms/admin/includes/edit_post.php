<?php
/*
incher code e jai jinis ta sekhar ache ta holo:
jokhon 1st ai page load hoy tokhon database theke data ene while loop dara ta variable e store kora hoyeche.
ebong form er maddome ta dekhano hoyeche.
but 1st load e  "$_POST['update_post']" er modde dhuke nai.

2nd jokhon form er update button e click kora hoyeche tokhon abar page ta load hoyeche ebong while loop er variable e data aber store hoyeche.
tobe ebar "$_POST['update_post']" er modde dukeche wbong while loop o "$_POST['update_post']" er variable same hober karone form er maddome asa update value while loop er variable er value k change kore diase.
[amra jani kono variable e data store korar por niche jodi same name sei variable diclare kore notun kono data insart kora hoy tobe purber data replace hoye jai]
tai update korar karone database e value update hoyeche ebong form e update value show koreche.

ekhon jodi while loop er variable ebong "$_POST['update_post']" er variable er nam same na hoto tobe o database e value update hoto
tobe form e previous value e dekhato, update value show korto na.
*/

/*
Tobe jodi Update Query k, Select Query er upore lekah hoy tobe 2 query er variable ac na tekehe o code kora jabe. (acono test kora hoinai) 
*/

    if (isset($_GET['p_id'])) {
        $the_post_id = $_GET['p_id'];
    }

    // Select Query ==================================================
    $query = "SELECT * FROM posts WHERE post_id = {$the_post_id}";
    $select_posts_by_id = mysqli_query($connection, $query);
    while ($row = mysqli_fetch_assoc($select_posts_by_id)) :
        $post_id = $row['post_id'];
        $post_author = $row['post_author'];
        $post_title = $row['post_title'];
        $post_category_id = $row['post_category_id'];
        $post_status = $row['post_status'];
        $post_image = $row['post_image'];
        $post_content = $row['post_content'];
        $post_tags = $row['post_tags'];
        $post_comment_count = $row['post_comment_count'];
        $post_date = $row['post_date'];
    endwhile;


    // Update Query ==================================================
    if (isset($_POST['update_post'])) {

        $post_author = $_POST['post_author'];
        $post_title = $_POST['post_title'];
        $post_category_id = $_POST['post_category'];
        $post_status = $_POST['post_status'];
        $post_image = $_FILES['image']['name'];
        $post_image_tmp = $_FILES['image']['tmp_name'];
        $post_content = $_POST['post_content'];
        $post_tags = $_POST['post_tags'];
        move_uploaded_file($post_image_tmp, "../images/$post_image");

        if (empty($post_image)) {
            $query = "SELECT * FROM posts WHERE post_id = {$the_post_id} ";
            $select_image = mysqli_query($connection, $query);

            while ($row = mysqli_fetch_array($select_image)) {
                $post_image = $row['post_image'];
            }
        }


        $query = "UPDATE posts SET ";
        $query .="post_title = '{$post_title}', ";
        $query .="post_category_id = '{$post_category_id}', ";
        $query .="post_date = now(), ";
        $query .="post_author = '{$post_author}', ";
        $query .="post_status = '{$post_status}', ";
        $query .="post_tags = '{$post_tags}', ";
        $query .="post_content = '{$post_content}', ";
        $query .="post_image = '{$post_image}' ";
        $query .= "WHERE post_id = {$the_post_id}";

        $update_post = mysqli_query($connection, $query);
        confirmQuery($update_post);
        echo "Post update seccesfully. <a href='../post.php?p_id={$the_post_id}'>View Post</a> OR <a href='posts.php'>Edit Another post</a>";
    }
?>



<form action="" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="post_title">Post Title</label>
        <input value="<?php echo $post_title; ?>" type="text" class="form-control" name="post_title" id="post_title">
    </div>

    <div class="form-group">
        <label for="post_category">Post Category</label><br>

        <select name="post_category" id="post_category">
            <?php 
                $query = "SELECT * FROM categories";
                $select_categories = mysqli_query($connection, $query);
                confirmQuery($select_categories);

                while ($row = mysqli_fetch_assoc($select_categories)) {
                    $cat_id = $row['cat_id']; 
                    $cat_title = $row['cat_title']; 
                    echo "<option value='{$cat_id}'>{$cat_title}</option>";
                }
            ?>            
        </select>
        
    </div>

    <div class="form-group">
        <label for="post_author">Author</label>
        <input value="<?php echo $post_author; ?>" type="text" class="form-control" name="post_author" id="post_author">
    </div>

    <div class="form-group">
        <label for="post_status">Post Status</label><br>
        <select class="post_status" name="post_status" id="post_status">            
            <?php
                if ($post_status == 'published') {
                    echo "<option value='published'>Published</option>";
                    echo "<option value='draft'>Draft</option>";
                }else{
                    echo "<option value='draft'>Draft</option>";
                    echo "<option value='published'>Published</option>";
                }
            ?>
        </select>        
    </div>

    <div class="form-group">
        <label for="image">Image</label><br>
        <img width="100" src="../images/<?php echo $post_image; ?>" alt="Image">
        <input type="file" name="image">
    </div>

    <div class="form-group">
        <label for="post_tags">Post Tags</label>
        <input value="<?php echo $post_tags; ?>" type="text" class="form-control" name="post_tags" id="post_tags">
    </div>

    <div class="form-group">
        <label for="post_content">Post Contet</label>
        <textarea name="post_content" class="form-control" id="post_content" cols="" rows=""><?php echo $post_content; ?></textarea>
    </div>

    <div class="form-group">
        <input class="btn btn-primary" type="submit" name="update_post" value="Update Post">
    </div>
</form>