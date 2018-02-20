<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hierarchy extends Admin_Controller {

    public function __construct()
    {
        parent::__construct();

		/* Load :: Common */
        $this->lang->load('admin/hierarchy');
		$this->load->model('admin/hierarchy_model');
		
        /* Title Page :: Common */
        $this->page_title->push(lang('menu_hierarchy'));
        $this->data['pagetitle'] = $this->page_title->show();

        /* Breadcrumbs :: Common */
        $this->breadcrumbs->unshift(1, lang('menu_hierarchy'), 'admin/hierarchy');
    }


	public function index()
	{
        if ( ! $this->ion_auth->logged_in() OR ! $this->ion_auth->is_admin())
        {
            redirect('auth/login', 'refresh');
        }
        else
        {
            /* Breadcrumbs */
            $this->data['breadcrumb'] = $this->breadcrumbs->show();

             $this->data['count_admin']= $this->hierarchy_model->get_count_record('users_groups');

            /* Load Template */
            $this->template->admin_render('admin/hierarchy/index', $this->data);
        }
	}
}
