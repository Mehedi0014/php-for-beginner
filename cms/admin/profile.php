<?php include "includes/admin_header.php" ?>
<?php 
    if (isset($_SESSION['username'])) {
        $username = $_SESSION['username'];

        // Select Query ==================================================
        $query = "SELECT * FROM users WHERE username = '$username' ";
        $select_user_porfile_query = mysqli_query($connection, $query);

        while ($row = mysqli_fetch_array($select_user_porfile_query)) {
            $user_id = $row['user_id'];
            $username = $row['username'];
            $user_password = $row['user_password'];
            $user_firstname = $row['user_firstname'];
            $user_lastname = $row['user_lastname'];
            $user_email = $row['user_email'];
            $user_image = $row['user_image'];
        }
    }

    // Update Query ==================================================
    if (isset($_POST['edit_user'])) {

        $username = $_POST['username'];
        $user_password = $_POST['user_password'];
        $user_firstname = $_POST['user_firstname'];
        $user_lastname = $_POST['user_lastname'];
        $user_email = $_POST['user_email'];


        $query = "UPDATE users SET ";
        $query .="username = '{$username}', ";
        $query .="user_password = '{$user_password}', ";
        $query .="user_firstname = '{$user_firstname}', ";
        $query .="user_lastname = '{$user_lastname}', ";
        $query .="user_email = '{$user_email}' ";
        $query .= "WHERE username = '{$username}' ";

        $edit_user_query = mysqli_query($connection, $query);
        confirmQuery($edit_user_query);
    }

?>

    <div id="wrapper">

        <!-- Navigation -->
        <?php include "includes/admin_navigation.php" ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">
                            Welcome To Admin <small><?php echo $username; ?></small>
                        </h3>

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
                                <label for="username">Username</label>
                                <input type="text" value="<?php echo $username ?>" class="form-control" name="username" id="username">
                            </div>

                            <div class="form-group">
                                <label for="user_email">Email</label>
                                <input type="email" value="<?php echo $user_email ?>" class="form-control" name="user_email" id="user_email">
                            </div>

                            <div class="form-group">
                                <label for="user_password">Password</label>
                                <input type="password" class="form-control" name="user_password" id="user_password" autocomplete="off">
                            </div>

                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" name="edit_user" value="Update Profile">
                            </div>
                        </form>

                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

<?php include "includes/admin_footer.php" ?>
