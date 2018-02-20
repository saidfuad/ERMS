<?php
defined('BASEPATH') OR exit('No direct script access allowed');

?>

            <aside class="main-sidebar">
                <section class="sidebar">
<?php if ($admin_prefs['user_panel'] == TRUE): ?>
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="<?php echo base_url($avatar_dir . '/m_001.png'); ?>" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p><?php echo $user_login['firstname'].$user_login['lastname']; ?></p>
                            <a href="#"><i class="fa fa-circle text-success"></i> <?php echo lang('menu_online'); ?></a>
                        </div>
                    </div>

<?php endif; ?>
<?php if ($admin_prefs['sidebar_form'] == TRUE): ?>
                    <!-- Search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="<?php echo lang('menu_search'); ?>...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>

<?php endif; ?>
                    <!-- Sidebar menu -->
                    <ul class="sidebar-menu">
                        <li class="header text-uppercase"><?php echo lang('menu_main_navigation'); ?></li>
                        <li class="<?=active_link_controller('dashboard')?>">
                            <a href="<?php echo site_url('admin/dashboard'); ?>">
                                <i class="fa fa-dashboard"></i> <span><?php echo lang('menu_dashboard'); ?></span>
                            </a>
                        </li>


                        <li class="header text-uppercase"><?php echo lang('menu_administration'); ?></li>
                        
                        <li class="treeview <?=active_link_controller('prefs')?>">
                            <a href="#">
                                <i class="fa fa-cogs"></i>
                                <span><?php echo lang('menu_preferences'); ?></span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <!-- <li class="<?=active_link_function('interfaces')?>"><a href="<?php echo site_url('admin/prefs/interfaces/admin'); ?>"><?php echo lang('menu_interfaces'); ?></a></li>-->
                                <li class="<?=active_link_controller('users')?>"><a href="<?php echo site_url('admin/users'); ?>"><i class="fa fa-user"></i> <span><?php echo lang('menu_users'); ?></span></a></li>
                                <li class="<?=active_link_controller('org_hierarchy')?>"><a href="<?php echo site_url('admin/hierarchy'); ?>"><i class="fa fa-tree"></i> <span><?php echo lang('menu_hierarchy'); ?></span></a></li>
                                <li class="<?=active_link_controller('geodata')?>"><a href="<?php echo site_url('admin/geodata'); ?>"><i class="fa fa-line-chart"></i> <span><?php echo lang('menu_geodata'); ?></span></a></li>
								<li class="<?=active_link_controller('groups')?>"><a href="<?php echo site_url('admin/groups'); ?>"><i class="fa fa-shield"></i> <span><?php echo lang('menu_security_groups'); ?></span></a></li>
                            </ul>
                        </li>
						
						<li class="<?=active_link_controller('reports')?>">
                            <a href="<?php echo site_url('admin/reports'); ?>">
                                <i class="fa fa-folder"></i> <span><?php echo lang('menu_reports'); ?></span>
                            </a>
                        </li>
						
						<li class="<?=active_link_controller('memos')?>">
                            <a href="<?php echo site_url('admin/memos'); ?>">
                                <i class="fa fa-edit"></i> <span><?php echo lang('menu_memos'); ?></span>
                            </a>
                        </li>
						
						<li class="<?=active_link_controller('b_intel')?>">
                            <a href="<?php echo site_url('admin/b_intel'); ?>">
                                <i class="fa fa-tint"></i> <span><?php echo lang('menu_b_intel'); ?></span>
                            </a>
                        </li>
                        <li class="<?=active_link_controller('database')?>">
                            <a href="<?php echo site_url('admin/database'); ?>">
                                <i class="fa fa-database"></i> <span><?php echo lang('menu_database_utility'); ?></span>
                            </a>
                        </li>


                        <li class="header text-uppercase"><?php echo $title; ?></li>
                        <li class="<?=active_link_controller('license')?>">
                            <a href="<?php echo site_url('admin/license'); ?>">
                                <i class="fa fa-legal"></i> <span><?php echo lang('menu_license'); ?></span>
                            </a>
                        </li>
                        <li class="<?=active_link_controller('resources')?>">
                            <a href="<?php echo site_url('admin/resources'); ?>">
                                <i class="fa fa-cubes"></i> <span><?php echo lang('menu_resources'); ?></span>
                            </a>
                        </li>
						<li class="<?=active_link_controller('files')?>">
                            <a href="<?php echo site_url('admin/files'); ?>">
                                <i class="fa fa-file"></i> <span><?php echo lang('menu_files'); ?></span>
                            </a>
                        </li>
                    </ul>
                </section>
            </aside>
