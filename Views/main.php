<?php
    if (session_start()) {

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>ARControllers - HOME</title>
    <meta charset="UTF-8">
    <meta name="title" content="arc arcontroller">
    <meta name="description" content="prototipo001web">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../Public/fwork/internal/Img/logo/arclogo.ico" />
    <link rel="stylesheet" type="text/css" href="../Public/fwork/external/fontawesomeweb/css/all.css">
    <link rel="stylesheet" href="../Public/fwork/internal/css_main/css_main.css">
    <!-- Para dashboard bootstrap-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="../Public/fwork/dashboard/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../Public/fwork/dashboard/css/bootstrapcdn_min_4_3_1.css">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php
            include "Content/Sidebar.html";
        ?>
        <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content"> 

                    <!-- Topbar -->
                    <?php
                        include "Content/Topbar.php";
                    ?>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <?php
                        include "Content/Dashboard.html";
                    ?>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <?php
                    include "Content/Footer.html";
                ?>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
			  <span aria-hidden="true">×</span>
			</button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="#">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../Public/fwork/dashboard/vendor/jquery/jquery.min.js"></script>
    <script src="../Public/fwork/dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../Public/fwork/dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../Public/fwork/dashboard/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../Public/fwork/dashboard/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../Public/fwork/dashboard/js/demo/chart-area-demo.js"></script>
    <script src="../Public/fwork/dashboard/js/demo/chart-pie-demo.js"></script>
</body>

</html>
<?php
}else {
        # code...
        sleep(2);
		header ("Location: Error/404.php");
    }
?>