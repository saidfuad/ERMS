<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Admin_Controller {

	public function index()
	{
		$this->load->model('memos_model', 'memos');
		$this->load->model('letters_model', 'letters');
		$this->load->model('Admin_user_model', 'users');
		$this->load->model('reports_model', 'reports');
		$this->mViewData['count'] = array(
			'admin-users' => $this->users->count_all(),
			'letters' => $this->letters->count_all(),
			'reports' => $this->reports->count_all(),
			'memos' => $this->memos->count_all(),
			//'admin_users' => $this->admin_users->count_all(),
		);
		$this->render('home');
	}
}
