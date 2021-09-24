<table class="table table-bordered table-hover">
    <thead>
        <tr>
            <th>ID</th>
            <th>Author</th>
            <th>Comment</th>
            <th>Email</th>
            <th>Status</th>
            <th>In Response To</th>
            <th>Date</th>
            <th>Approved</th>
            <th>Unapproved</th>
            <th>Dalete</th>
        </tr>
    </thead>
    <tbody>                                
        <?php 
            $query = "SELECT * FROM comments";
            $select_comments = mysqli_query($connection, $query);
            while ($row = mysqli_fetch_assoc($select_comments)) :
                $comments_id = $row['comments_id'];
                $comments_post_id = $row['comments_post_id'];
                $comments_author = $row['comments_author'];
                $comments_content = $row['comments_content'];
                $comments_email = $row['comments_email'];
                $comments_status = $row['comments_status'];
                $comments_date = $row['comments_date'];

                echo "<tr>";
                    echo "<td>$comments_id</td>";
                    echo "<td>$comments_author</td>";
                    echo "<td>$comments_content</td>";

                    // $query = "SELECT * FROM categories WHERE cat_id = '{$post_category_id}' ";
                    // $select_categories_id = mysqli_query($connection, $query);
                    // if ( mysqli_affected_rows($connection) <= 0 ) {
                    //     echo "<td class='category_blank'>No Category found</td>";
                    // } else {
                    //     while ($row = mysqli_fetch_assoc($select_categories_id)) {
                    //         $cat_id = $row['cat_id'];
                    //         $cat_title = $row['cat_title'];                        
                    //         echo "<td class='category-{$cat_id}'>{$cat_title}</td>";
                    //     }
                    // }

                    echo "<td>$comments_email</td>";
                    echo "<td>$comments_status</td>";

                    $query = "SELECT * FROM posts WHERE post_id = $comments_post_id";
                    $select_post_id_query = mysqli_query($connection, $query);

                    while ($row = mysqli_fetch_assoc($select_post_id_query)) {
                        $post_id = $row['post_id'];
                        $post_title = $row['post_title'];
                        echo "<td><a href='../post.php?p_id=$post_id'>$post_title</a></td>";
                    }                   


                    echo "<td>$comments_date</td>";
                    echo "<td><a href='comments.php?approved=$comments_id'>Approved</a></td>";
                    echo "<td><a href='comments.php?unapproved=$comments_id'>Unapproved</a></td>";
                    echo "<td><a href='comments.php?delete=$comments_id'>Delete</a></td>";
                echo "</tr>";
            endwhile; 
        ?>
    </tbody>
</table>

<?php
    // Approved post query =========================================
    if (isset($_GET['approved'])) {
        $the_comment_id = $_GET['approved'];
        $query = "UPDATE comments SET comments_status = 'Approved' WHERE comments_id =  $the_comment_id";
        $approved_comment_query = mysqli_query($connection, $query);
        header('Location: comments.php');
    }

    // Unapproved post query =========================================
    if (isset($_GET['unapproved'])) {
        $the_comment_id = $_GET['unapproved'];
        $query = "UPDATE comments SET comments_status = 'Unapproved' WHERE comments_id =  $the_comment_id";
        $unapproved_comment_query = mysqli_query($connection, $query);
        header('Location: comments.php');
    }


    // Delete Post query =========================================
    if (isset($_GET['delete'])) {
        $the_comment_id = $_GET['delete'];
        $query = "DELETE FROM comments WHERE comments_id = $the_comment_id";
        $delete_query = mysqli_query($connection, $query);
        header('Location: comments.php');
    }
?>