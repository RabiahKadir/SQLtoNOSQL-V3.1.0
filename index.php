<?php error_reporting(0);?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>SMARTDB ADAPTER Dashboard</title>
        <meta content="Admin SmartDB Adapter Dashboard" name="description" />
        <meta content="Mannatthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- Plugins css -->
        <link href="assets/plugins/timepicker/tempusdominus-bootstrap-4.css" rel="stylesheet" />
        <link href="assets/plugins/timepicker/bootstrap-material-datetimepicker.css" rel="stylesheet">
        <link href="assets/plugins/clockpicker/jquery-clockpicker.min.css" rel="stylesheet" />
        <link href="assets/plugins/colorpicker/asColorPicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/select2/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap-touchspin/css/jquery.bootstrap-touchspin.min.css" rel="stylesheet" /> 
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">

    </head>
    <body>
        <!-- Loader -->
        <div id="preloader"><div id="status"><div class="spinner"></div></div></div>
        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">
                    <div class="menu-extras topbar-custom">
                            <li class="menu-item list-inline-item">
                                <!-- Mobile menu toggle-->
                                <a class="navbar-toggle nav-link">
                                    <div class="lines">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div>
                                </a>
                                <!-- End mobile menu toggle-->
                            </li>
                        </ul>
                    </div>
                    <!-- end menu-extras -->
                    <div class="clearfix"></div>
                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->
            <!-- MENU Start -->
            <div class="navbar-custom">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu text-center">
                            <li class="has-submenu ">
                                <a href=""><i class="mdi mdi-airplay"></i>Dashboard</a>
                            </li>
							<li class="has-submenu ">
                                <a href="#"><i class="mdi mdi-database"></i>Configuration</a>
                                <ul class="submenu">
                                    <li><a href="#" data-toggle="modal" data-target="#database">NoSQL Database Connection</a></li>
									<li><a href="#" data-toggle="modal" data-target="#sqlquery">Input SQL Query Statement</a></li>
                                </ul>
                            </li>
                            <li class="has-submenu ">
                                <a href="#"><i class="mdi mdi-help"></i>Help</a>
                                <ul class="submenu">
                                    <li><a href="#"  data-toggle="modal" data-target="#manual">Manual System</a></li>
                                    <li><a href="#"  data-toggle="modal" data-target="#contact">Contact Us</a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="mdi mdi-bullseye"></i>About SmartDB Adapter</a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="#" data-toggle="modal" data-target="#smartdb">About SmartDB Adapter</a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#programmer">About Programmer</a></li> 
                                        </ul>
                                    </li>   
                                </ul>
                            </li>
                            </li>
                        </ul>
                        <!-- End navigation menu -->
                    </div> <!-- end #navigation -->
                </div> <!-- end container -->
            </div> <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->
        <div class="wrapper">
            <div class="container-fluid">
                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                            <h4 class="page-title">SmartDB Adapter</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->
                <div class="row">
                    <div class="col-lg-6">
                    <form method="post" action="">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title mt-0">SQL TO NOSQL</h4>
                                <p class="text-muted mb-4 font-14"><input type="submit" name="run" class="btn btn-primary btn-lg" value="Run SmartDB Adapter">  </p>
                                <?php
                            if($_POST['run'])
                            {
								exec('java -jar smartdb-adapter.jar -i',$output);
                                ?>
                                <h6 class="sub-title mb-3"><?php print $output[1]; ?></h6> 
								 <input type="text"  name="sql" class="form-control auto1" id="thresholdconfig" placeholder="Please Type or Click Query Statement (SQL) in this Text Box." /><br>
                                 <a href="https://www.w3schools.com/sql/" target="_blank" style="float:right;margin-top:-20px"><i> *View Link Reference SQL Query Standard Tutorial? </i> </a>
								 <input type="submit" name="proses" class="btn btn-warning btn-lg" value="Run SQL">
								
                            <?php
                            }
                            ?> 
		                    <?php
                            if($_POST['proses'])
							
                            {
								$teks=$_POST['sql'];
								?>
								 <h6 class="sub-title mb-3">SQL Query Input :</h6> 
								 <input type="text"  name="sql" class="form-control auto2" id="thresholdconfig" value=<?php echo $teks;?> placeholder="Please Type or Click Query Statement (SQL) in this Text Box." /><br>
                                 <input type="submit" name="proses" class="btn btn-warning btn-lg" value="Run SQL Query">
								<?php
							}
                                ?>							
                            </div>
                        </div>  
                    </form>              
                        <div class="card">
                            <div class="card-body bootstrap-select-1">
                               
                                <div class="m-t-20">
                                    <h6 class="sub-title"><b>NoSQL Query Output :</b></h6>
									<?php
                            if($_POST['proses'])
							
                            {
								$teks=$_POST['sql'];
								exec('java -jar smartdb-adapter.jar -sql '.$teks,$output);
								?>
                            <div class="alert alert-info" role="alert">
							<?php $row= count($output);
							$baris= $row-3;
							for($i=6;$i<=$baris;$i++)
							{
								echo $output[$i];
							}
							?></div>
								<?php
							}
							else
							{ 
							?>
							 <input type="text" maxlength="25" name="thresholdconfig" class="form-control" readonly="true" id="thresholdconfig" />
							<?php
								
							}
							?>  
                            </div>          
                            </div>
                        </div>                         
                    </div> <!-- end col -->
                    <div class="col-lg-6">                                             
                        <div class="card">
                            <div class="card-body">
                                <h6 class="mt-0 header-title">Data Output (Data Json):<br></br></h6>
                                <form action="#">
                                    <div class="form-group mb-0">
                                            <div>
                                            <div class="input-group">
                                          	<?php
						
                            if($_POST['proses'])
							
                            {
								?>
								 <textarea id="textarea" maxlength="225" class="form-control" rows="15"><?php
                            $manager = new MongoDB\Driver\Manager();
                            $query = new MongoDB\Driver\Query( [] );
                            #$cursor = $manager->executeQuery("db_testingsql.table_student", $query);
							$cursor = $manager->executeQuery("dbtransportation.roadmap33", $query);
                            $dat = array();
							$no=0;
							$col =0;
							foreach ($cursor as $document) {
                            echo ': ';
                            
						    $data = json_encode($document);
							print_r($data);
								$hasil[]=$data;			
                               $no++;
                            }?>
							
							<?php
							//$x = json_encode($hasil[1]);
							//echo $no;
							
							$yy= $hasil[1];
							
							$xy=explode(",",$yy);
							$col = count($xy);
							//echo $col;
							?>
							</textarea>
							
						
							
								 <?php
								
							}
							else{
								?>
								 <textarea id="textarea" maxlength="225" class="form-control" rows="15"></textarea>
								<?php
							}
							 
							?>
										</div><!-- input-group -->
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div> <!-- end col -->
                </div> <!-- end row --> 
              <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                           <div class="card-body">
						   <h6 class="header-title mt-0">Data Output (Data Table):</h6>
                            <div class="ctable table-bordered" style="overflow:scroll;">
                              
								<table width="60%" class="table">
									<tr>
										<?php
											for($i=0; $i<=$col; $i++){
											echo "<th>Column ".$i."</th>";
											}
										?>
										
									</tr>

									<?php
										for($i=0; $i<=$no; $i++){
											$yy= $hasil[$i];
											$xy=explode(",",$yy);
											//$col = count($xy);
											//echo $xy[0];
											
											
										echo "<tr>";
										for($x=0; $x<=$col; $x++){
											$data=str_replace('{"_id":{"$oid":"','',$xy[$x]);
											$ee = '"';
											$we = strlen($x);
											$data=str_replace($ee,'',$data);
											
											//$data=substr($data,$we);
											//$data=str_replace("$we",'',$data);
											$data=str_replace('"}','',$data);
											$data=str_replace('}','',$data);
											//$data=str_replace('"'.$x.'":"','',$data);
											$data1=explode(':', $data);
											if(empty($data1[1])){
												echo "<td>".$data."</td>";
											}else{
												echo "<td>".$data1[1]."</td>";
											}
											
										}
										echo "</tr>";
										}
									?>

								</table>
								
							</div></div>
                        </div>
                    </div>
                </div>				
            </div> <!-- end container -->
        </div>
        <?php include("modal.php");?>
        <!-- end wrapper -->
        <!-- Footer -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        Copyright © 2022 - by: | IIR4.0 - The National University of Malaysia |
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->
        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/modernizr.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <!-- Plugins js -->
        <script src="assets/plugins/timepicker/moment.js"></script>
        <script src="assets/plugins/timepicker/tempusdominus-bootstrap-4.js"></script>
        <script src="assets/plugins/timepicker/bootstrap-material-datetimepicker.js"></script>
        <script src="assets/plugins/clockpicker/jquery-clockpicker.min.js"></script>
        <script src="assets/plugins/colorpicker/jquery-asColor.js"></script>
        <script src="assets/plugins/colorpicker/jquery-asGradient.js"></script>
        <script src="assets/plugins/colorpicker/jquery-asColorPicker.min.js"></script>
        <script src="assets/plugins/select2/select2.min.js"></script>
        <script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
        <script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="assets/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
        <script src="assets/plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.min.js"></script>
        <!-- Plugins Init js -->
        <script src="assets/pages/form-advanced.js"></script> 
        <!-- App js -->
        <script src="assets/js/app.js"></script>
		<script src="assets/js/jquery-1.10.2.js"></script>
		<script src="assets/js/jquery-ui.js"></script>
		<script>
            $(function() {
                $(".auto1").autocomplete({
                    source: 'conf/autocomplete.php'
                });
            });
			$(function() {
                $(".auto2").autocomplete({
                    source: 'conf/autocomplete.php'
                });
            });
        </script>
    </body>
</html>