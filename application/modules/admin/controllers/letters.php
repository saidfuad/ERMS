<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Panel management, includes: 
 * 	- Admin Users CRUD
 * 	- Admin User Groups CRUD
 * 	- Admin User Reset Password
 * 	- Account Settings (for login user)
 */
class letters extends Admin_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_builder');
		$this->load->library('email');
	}

	//categories index
	public function index(){
			$crud = $this->generate_crud('letters');

		//$crud->columns('letter_name','ref_no','sub_cat','file_url','created_at','letter_type','Status');
		$crud->add_fields('title','ref_no','record_index','file_url','created_at','record_type','Status');

		//$crud->add_fields();
		$crud->add_action('Print', '', 'print/single','ui-icon-print');

		$crud->change_field_type('created_at','hidden',date('Y-m-d H:i:s'));
		//	$crud->unset_columns('description');
		$crud->set_relation('record_index','s_a_categories','record_index');
		//	$crud->display_as('record_index','Sub Category');

		$crud->callback_before_insert(array($this,'callback_insert'));
		
		function callback_insert($post_array, $primary_key)
		{
		  $mdate = array(

		  	"id"=> $primary_key,
		  	"created_at" => date('Y-m-d H:i:s')
		  );

		  	$this->db->insert('letters', $mdate);

		  	return true;
		 // $post_array['created'] = date('Y-m-d H:i:s');
 		// $post_array['updated'] = date('Y-m-d H:i:s');
 		// return $post_array;
		}

		$crud->set_field_upload('file_url','assets/uploads');

		$crud->callback_after_insert(array($this, 'email_after_insert'));
		
		function email_after_insert($post_array,$primary_key)
		{
			
			$this->load->library('email');
			$config['protocol'] = 'sendmail';
			$config['mailpath'] = '/usr/sbin/sendmail';
			$config['charset'] = 'iso-8859-1';
			$config['wordwrap'] = TRUE;
 
			$this->email->initialize($config);
			// email config end --------------------
			 
			$this->email->from('saidfuad91@gmail.com','Said');
			$this->email->to('saidfuad91@gmail.com');
			$this->email->subject('testing');
			$this->email->message('Alpha testing');
			 
			$this->email->send();
			echo $this->email->print_debugger();
			//return true;


			/*$this->load->library('email');

			$this->email->from('saidfuad91@gmail.com', 'Said Fuad');
			$this->email->to('saidfuad91@gmail.com');
			//$this->email->cc('another@another-example.com');
			//$this->email->bcc('them@their-example.com');

			$this->email->subject('Email Test');
			$this->email->message('Testing the email class.');

			$this->email->send();*/
		}

		$this->mPageTitle = 'Administration';
		$this->render_crud();
	}



	// Account Settings
	public function account()
	{
		// Update Info form
		$form1 = $this->form_builder->create_form($this->mModule.'/panel/account_update_info');
		$form1->set_rule_group('panel/account_update_info');
		$this->mViewData['form1'] = $form1;

		// Change Password form
		$form2 = $this->form_builder->create_form($this->mModule.'/panel/account_change_password');
		$form1->set_rule_group('panel/account_change_password');
		$this->mViewData['form2'] = $form2;

		$this->mPageTitle = "Account Settings";
		$this->render('panel/account');
	}

	// Submission of Update Info form
	public function account_update_info()
	{
		$data = $this->input->post();
		if ($this->ion_auth->update($this->mUser->id, $data))
		{
			$messages = $this->ion_auth->messages();
			$this->system_message->set_success($messages);
		}
		else
		{
			$errors = $this->ion_auth->errors();
			$this->system_message->set_error($errors);
		}

		redirect($this->mModule.'/panel/account');
	}

	// Submission of Change Password form
	public function account_change_password()
	{
		$data = array('password' => $this->input->post('new_password'));
		if ($this->ion_auth->update($this->mUser->id, $data))
		{
			$messages = $this->ion_auth->messages();
			$this->system_message->set_success($messages);
		}
		else
		{
			$errors = $this->ion_auth->errors();
			$this->system_message->set_error($errors);
		}

		redirect($this->mModule.'/panel/account');
	}
	
	
}
