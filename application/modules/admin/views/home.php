<div class="row">
                

                <section class="content">
                  
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-yellow"><i class="fa fa-folder"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Registry</span>
                                    <span class="info-box-number"><?php echo $count['letters']?></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-green"><i class="fa fa-edit"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Memos</span>
                                    <span class="info-box-number"><?php echo $count['memos'] ?></span>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix visible-sm-block"></div>

                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-aqua"><i class="fa fa-user"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Users</span>
                                    <span class="info-box-number"><?php echo $count['admin-users'] ?></span>
                                </div>
                            </div>
                        </div>
						
						<div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-aqua"><i class="fa fa-clone"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Reports</span>
                                    <span class="info-box-number"><?php echo $count['reports'] ?></span>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="row">
                        <div class="col-md-12">
<?php
/*
if ($url_exist) {
    echo 'OK';
} else {
    echo 'KO';
}
*/
?>
                        </div>

                        <div class="col-md-12">
                            <div class="box">
                                <div class="box-header with-border">
                                    <h3 class="box-title">E-Records Management System</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                    </div>
                                </div>
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="text">Welcome <?php echo $user->first_name; ?></p>
											<p class="text" align="justify"> Records management, also known as records and information management, is an organizational function devoted to the management of information in an organization throughout its life cycle, from the time of creation or inscription to its eventual disposition. This includes identifying, classifying, storing, securing, retrieving, tracking and destroying or permanently preserving records.[1] The ISO 15489-1: 2001 standard ("ISO 15489-1:2001") defines records management as "[the] field of management responsible for the efficient and systematic control of the creation, receipt, maintenance, use and disposition of records, including the processes for capturing and maintaining evidence of and information about business activities and transactions in the form of records"</p>
											
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

<div class="row">

	<div class="col-md-12">
		<?php echo modules::run('adminlte/widget/box_open', 'Shortcuts'); ?>
			<?php echo modules::run('adminlte/widget/app_btn', 'fa fa-user', 'Account', 'panel/account'); ?>
			<?php echo modules::run('adminlte/widget/app_btn', 'fa fa-sign-out', 'Logout', 'panel/logout'); ?>
		<?php echo modules::run('adminlte/widget/box_close'); ?>
	</div>

	<!--<div class="col-md-4">
		<?php echo modules::run('adminlte/widget/info_box', 'yellow', $count['users'], 'Reports', 'fa fa-folder', 'user'); ?>
	</div> -->
	
</div>
