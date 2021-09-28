<table class="table table-bordered table-hover">
    <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Email</th>
            <th>Role</th>
        </tr>
    </thead>
    <tbody>                                
        <?php 
            $query = "SELECT * FROM users";
            $select_users = mysqli_query($connection, $query);
            while ($row = mysqli_fetch_assoc($select_users)) :
                $user_id = $row['user_id'];
                $username = $row['username'];
                $user_password = $row['user_password'];
                $user_firstname = $row['user_firstname'];
                $user_lastname = $row['user_lastname'];
                $user_email = $row['user_email'];
                $user_image = $row['user_image'];
                $user_role = $row['user_role'];

                echo "<tr>";
                    echo "<td>$user_id</td>";
                    echo "<td>$username</td>";
                    echo "<td>$user_firstname</td>";

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

                    echo "<td>$user_lastname</td>";
                    echo "<td>$user_email</td>";
                    echo "<td>$user_role</td>";

                    // $query = "SELECT * FROM posts WHERE post_id = $comment_post_id";
                    // $select_post_id_query = mysqli_query($connection, $query);

                    // while ($row = mysqli_fetch_assoc($select_post_id_query)) {
                    //     $post_id = $row['post_id'];
                    //     $post_title = $row['post_title'];
                    //     echo "<td><a href='../post.php?p_id=$post_id'>$post_title</a></td>";
                    // }                   


                    echo "<td></td>";
                    echo "<td><a href='users.php?approved=$user_id'>Approved</a></td>";
                    echo "<td><a href='users.php?unapproved=$user_id'>Unapproved</a></td>";
                    echo "<td><a href='users.php?delete=$user_id'>Delete</a></td>";
                echo "</tr>";
            endwhile; 
        ?>
    </tbody>
</table>

<?php
    // Approved post query =========================================
    if (isset($_GET['approved'])) {
        $the_comment_id = $_GET['approved'];
        $query = "UPDATE comments SET comment_status = 'Approved' WHERE comment_id =  $the_comment_id";
        $approved_comment_query = mysqli_query($connection, $query);
        header('Location: comments.php');
    }

    // Unapproved post query =========================================
    if (isset($_GET['unapproved'])) {
        $the_comment_id = $_GET['unapproved'];
        $query = "UPDATE comments SET comment_status = 'Unapproved' WHERE comment_id =  $the_comment_id";
        $unapproved_comment_query = mysqli_query($connection, $query);
        header('Location: comments.php');
    }


    // Delete Post query =========================================
    if (isset($_GET['delete'])) {
        $the_user_id = $_GET['delete'];
        $query = "DELETE FROM users WHERE user_id = $the_user_id";
        $delete_user_query = mysqli_query($connection, $query);
        header('Location: users.php');
    }
?>