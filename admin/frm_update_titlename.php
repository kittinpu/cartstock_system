<!DOCTYPE html>
<html>
    <head>
        <?php
        include 'head.php';
        $titlename_id = $_GET['id'];

        $sql = "SELECT * FROM sp_titlename_dt WHERE titlename_id='$titlename_id'";
        $res_tn = mysqli_query($dbcon, $sql);
        $row_tn = mysqli_fetch_assoc($res_tn);
        ?>
    </head>

    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
                        <a href="index.html" class="logo"><i class="icon-magnet icon-c-logo"></i><span>Sport to you</span></a>
                        <!-- Image Logo here -->
                        <!--<a href="index.html" class="logo">-->
                        <!--<i class="icon-c-logo"> <img src="assets/images/logo_sm.png" height="42"/> </i>-->
                        <!--<span><img src="assets/images/logo_light.png" height="20"/></span>-->
                        <!--</a>-->
                    </div>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <?php include 'menu_profile.php'; ?>

            </div>
            <!-- Top Bar End -->

            <!-- ========== Left Sidebar Start ========== -->
            <?php include 'sidebar.php'; ?>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container-fluid">

                        <!-- Page-Title -->
                        <?php include 'page_title.php'; ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="portlet">
                                    <div class="portlet-heading bg-purple">
                                        <h3 class="portlet-title">
                                            แก้ไขรายละเอียดคำนำหน้าชื่อ รหัส <?php echo $titlename_id; ?>
                                        </h3>
                                        <div class="portlet-widgets">
                                            <a href="javascript:;" data-toggle="reload"><i class="ion-refresh"></i></a>
                                            <span class="divider"></span>
                                            <a data-toggle="collapse" data-parent="#accordion1" href="#bg-inverse"><i class="ion-minus-round"></i></a>
                                            <span class="divider"></span>
                                            <a href="#" data-toggle="remove"><i class="ion-close-round"></i></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="bg-inverse" class="panel-collapse collapse show">
                                        <div class="portlet-body">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="p-20">
                                                        <form class="form-horizontal" role="form" action="update_titlename.php" method="POST" enctype="multipart/form-data">
                                                            <div class="form-group row">
                                                                <label class="col-2 col-form-label">เนื้อหาคำนำหน้าชื่อ</label>
                                                                <div class="col-10">
                                                                    <input value="<?php echo $row_tn['titlename_detail']; ?>" type="text" class="form-control" placeholder="Enter Titlename" name="titlename_detail" required>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-2">

                                                                </div>
                                                                <div class="col-10">
                                                                    <input type="hidden" name="titlename_id" value="<?php echo $row_tn['titlename_id']; ?>">
                                                                    <button type="submit" class="btn btn-primary">บันทึกการแก้ไข</button>
                                                                    <a href="list_titlename.php" class="btn btn-secondary">ย้อนกลับ</a>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>

                                            </div>
                                            <!-- end row -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- container -->

                </div> <!-- content -->

                <?php include 'footer.php'; ?>

            </div>

            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <?php include 'script.php'; ?>
    </body>
</html>