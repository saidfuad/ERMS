<?php
defined('BASEPATH') OR exit('No direct script access allowed');

?>

            <div class="content-wrapper">
                <section class="content-header">
                    <?php echo $pagetitle; ?>
                    <?php echo $breadcrumb; ?>
                </section>

                <section class="content">
                    <div class="row">
                        <div class="col-md-12">
                             <div class="box">
                                <div class="box-header with-border">
                                   <div class="col-xs-6">
                            <p class="lead">Employee Count </p>
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th style="width:50%">Supervisors</th>
                                            <td><?php echo $count_admin; ?></td>
                                        </tr>
                                        <tr>
                                            <th>Normal Staff</th>
                                            <td>1</td>
                                        </tr>                                    
                                    </tbody>
                                </table>
                            </div>
                        </div> 
                                </div>
                                
								
								
                            </div>
                         </div>
                    </div>
                </section>
            </div>
