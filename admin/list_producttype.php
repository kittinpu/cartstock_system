<!DOCTYPE html>
<html>
    <head>
        <?php
        include 'head.php';
        $sql = "SELECT * FROM sp_producttype_dt ORDER BY producttype_id DESC";
        $res_pt = mysqli_query($dbcon, $sql);
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
                            <div class="col-sm-12">
                                <div class="card-box">
                                    <div class="row">
                                        <div class="col-6">
                                            <h4 class="m-t-0 header-title"><b>รายการประเภทสินค้า</b></h4>
                                        </div>
                                        <div align="right" class="col-6">
                                            <span class="label label-primary">
                                                มีจำนวนทั้งหมด <?php echo $count_pt['COUNTPT']; ?> รายการ
                                            </span>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="button-list">
                                        <a href="frm_producttype.php" class="btn btn-primary waves-effect waves-light">
                                            <span class="btn-label"><i class="fa fa-cart-plus"></i>
                                            </span>เพิ่มข้อมูล
                                        </a>
                                    </div>
                                    <div style="margin: -55px;"></div>
                                    <table data-toggle="table"
                                           data-search="true"
                                           data-show-toggle="true"
                                           data-show-columns="true"
                                           data-sort-name="id"
                                           data-page-list="[5, 10, 20]"
                                           data-page-size="5"
                                           data-pagination="true" data-show-pagination-switch="true" class="table-bordered ">
                                        <thead>
                                            <tr>
                                                <th data-field="datesave" data-align="center" data-sortable="true">แก้ไขครั้งล่าสุด</th>
                                                <th data-field="ptype_id" data-align="center" data-sortable="true">รหัสประเภทสินค้า</th>
                                                <th data-field="ptype_name" data-align="center" data-sortable="true">ชื่อประเภทสินค้า</th>
                                                <th data-field="tools" data-align="center" data-sortable="true">เครื่องมือ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php while ($row_pt = mysqli_fetch_assoc($res_pt)) {
                                                ?>
                                                <tr>
                                                    <td><font color="blue">#<?php echo $row_pt['producttype_datesave']; ?></font></td>
                                                    <td><?php echo $row_pt['producttype_id']; ?></td>
                                                    <td><?php echo $row_pt['producttype_detail']; ?></td>
                                                    <td>
                                                        <div style="font-size: 20px;">
                                                            <a href="frm_update_producttype.php?id=<?php echo $row_pt['producttype_id']; ?>"><span class="fa fa-pencil-square-o"></span></a>
                                                            <a href="delete_producttype.php?id=<?php echo $row_pt['producttype_id']; ?>"><span class="fa fa-trash-o"></span></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <?php
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                    <div style="margin: 35px;"></div>
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