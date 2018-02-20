<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reports extends Admin_Controller {

    public function __construct()
    {
        parent::__construct();

		/* Load :: Common */
        $this->lang->load('admin/users');
		
        /* Title Page :: Common */
        $this->page_title->push(lang('menu_reports'));
        $this->data['pagetitle'] = $this->page_title->show();

        /* Breadcrumbs :: Common */
        $this->breadcrumbs->unshift(1, lang('menu_reports'), 'admin/reports');
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

            

            /* Load Template */
            $this->template->admin_render('admin/reports/index', $this->data);
        }
	}
}
