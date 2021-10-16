<?php


    if (isset($_GET['edit_user'])) {
        $the_user_id = $_GET['edit_user'];
    }

    // Select Query ==================================================
    $query = "SELECT * FROM users WHERE user_id = {$the_user_id}";
    $select_users_query = mysqli_query($connection, $query);
    while ($row = mysqli_fetch_assoc($select_users_query)) :
        $user_id = $row['user_id'];
        $username = $row['username'];
        $user_password = $row['user_password'];
        $user_firstname = $row['user_firstname'];
        $user_lastname = $row['user_lastname'];
        $user_email = $row['user_email'];
        $user_image = $row['user_image'];
        $user_role = $row['user_role'];
    endwhile;


    // Update Query ==================================================
    if (isset($_POST['edit_user'])) {

        $username = $_POST['username'];
        $user_password = $_POST['user_password'];
        $user_firstname = $_POST['user_firstname'];
        $user_lastname = $_POST['user_lastname'];
        $user_email = $_POST['user_email'];
        $user_role = $_POST['user_role'];


        $query = "UPDATE users SET ";
        $query .="username = '{$username}', ";
        $query .="user_password = '{$user_password}', ";
        $query .="user_firstname = '{$user_firstname}', ";
        $query .="user_lastname = '{$user_lastname}', ";
        $query .="user_email = '{$user_email}', ";
        $query .="user_role = '{$user_role}' ";
        $query .= "WHERE user_id = {$the_user_id}";

        $edit_user_query = mysqli_query($connection, $query);
        confirmQuery($edit_user_query);
    }
?>



<form action="" method="post" enctype="multipart/form-data">

    <div class="form-group">
        <label for="user_firstname">First Name</label>
        <input type="text" value="<?php echo $user_firstname ?>" class="form-control" name="user_firstname" id="user_firstname">
    </div>

    <div class="form-group">
        <label for="user_lastname">Last Name</label>
        <input type="text" value="<?php echo $user_lastname ?>" class="form-control" name="user_lastname" id="user_lastname">
    </div>



    <div class="form-group">
        <label for="post_category">Post Category Id</label><br>
        <select name='user_role' id='user_role'>
            <option value="subscriber"><?php echo $user_role ?></option>
            <?php 
                if ($user_role == 'admin') {
                    echo "<option value='subscriber'>Subscriber</option>";
                }else{
                    echo "<option value='admin'>Admin</option>";
                }
            ?>            
        </select>
    </div>



    <!-- 
        <div class="form-group">
            <label for="image">Image</label>
            <input type="file" name="image" id="image">        
        </div>
     -->

    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" value="<?php echo $username ?>" class="form-control" name="username" id="username">
    </div>

    <div class="form-group">
        <label for="user_email">Email</label>
        <input type="email" value="<?php echo $user_email ?>" class="form-control" name="user_email" id="user_email">
    </div>

    <div class="form-group">
        <label for="user_password">Password</label>
        <input type="password" value="<?php echo $user_password ?>" class="form-control" name="user_password" id="user_password">
    </div>

    <div class="form-group">
        <input class="btn btn-primary" type="submit" name="edit_user" value="Update User">
    </div>
</form>