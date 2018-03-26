<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| CI Bootstrap 3 Configuration
| -------------------------------------------------------------------------
| This file lets you define default values to be passed into views 
| when calling MY_Controller's render() function. 
| 
| See example and detailed explanation from:
| 	/application/config/ci_bootstrap_example.php
*/

$config['ci_bootstrap'] = array(

	// Site name
	'site_name' => 'ERMS',

	// Default page title prefix
	'page_title_prefix' => '',

	// Default page title
	'page_title' => 'ERMS',

	// Default meta data
	'meta_data'	=> array(
		'author'		=> '',
		'description'	=> '',
		'keywords'		=> ''
	),
	
	// Default scripts to embed at page head or end
	'scripts' => array(
		'head'	=> array(
			'assets/dist/admin/adminlte.min.js',
			'assets/dist/admin/lib.min.js',
			'assets/dist/admin/app.min.js'
		),
		'foot'	=> array(
		),
	),

	// Default stylesheets to embed at page head
	'stylesheets' => array(
		'screen' => array(
			'assets/dist/admin/adminlte.min.css',
			'assets/dist/admin/lib.min.css',
			'assets/dist/admin/app.min.css'
		)
	),

	// Default CSS class for <body> tag
	'body_class' => '',
	
	// Multilingual settings
	'languages' => array(
	),

	// Menu items
	'menu' => array(
		'home' => array(
			'name'		=> 'Home',
			'url'		=> '',
			'icon'		=> 'fa fa-home',
		),
		'Registry' => array(
			'name'		=> 'Registry',
			'url'		=> 'registry',
			'icon'		=> 'fa fa-cubes',
			'children'  => array(
				'Administration'			=> 'rletters',
				'Housing'					=> 'rhletters',
				'Planning'					=> 'rpletters',
				'Chief Officer'				=> 'rcletters',				
				'Executive Commissioner'	=> 'recletters',

			)
		),
		'Admin' => array(
			'name'		=> 'Administration',
			'url'		=> 'letters',
			'icon'		=> 'fa fa-bank',
			'children'  => array(
				'Records'			=> 'letters',
				'Memos'				=> 'amemos',
				
			)
		),
		'plan' => array(
			'name'		=> 'Physical Planning',
			'url'		=> 'pletters',
			'icon'		=> 'fa fa-map',
			'children'  => array(
				'Records'			=> 'pletters',
			 	'Memos'				=> 'pmemos',
			)
		),
		'house' => array(
			'name'		=> 'Housing',
			'url'		=> 'hletters',
			'icon'		=> 'fa fa-book',
			'children'  => array(
				'Records'			=> 'hletters',
				'Memos'				=> 'hmemos',
			)
		),
		'chief' => array(
			'name'		=> 'Chief Officer',
			'url'		=> 'cletters',
			'icon'		=> 'fa fa-book',
			'children'  => array(
				'Records'			=> 'cletters',
				'Memos'				=> 'cmemos',
			)
		),
		'cecm' => array(
			'name'		=> 'Executive Commissioner',
			'url'		=> 'ecletters',
			'icon'		=> 'fa fa-play',
			'children'  => array(
				'Records'			=> 'ecletters',
				'Memos'				=> 'ecmemos',
			)
		),
		
	/*	'cat' => array(
			'name'		=> 'Categories',
			'url'		=> 'categories',
			'icon'		=> 'fa fa-folder',
			'children'  => array(
				'List'			=> 'categories',
				
				
			)
		),
		'letters' => array(
			'name'		=> 'Letters',
			'url'		=> 'letters',
			'icon'		=> 'fa fa-envelope',
			'children'  => array(
				'List'			=> 'letters',
				
				
			)
		),
		'memos' => array(
			'name'		=> 'Memos',
			'url'		=> 'memos',
			'icon'		=> 'fa fa-certificate',
			'children'  => array(
				'List'			=> 'memos',
				
				
			)
		),*/
		'reports' => array(
			'name'		=> 'Reports',
			'url'		=> 'reports',
			'icon'		=> 'fa fa-briefcase',
			'children'  => array(
				'List'			=> 'reports',
				
				
			)
		),
		/*'user' => array(
			'name'		=> 'Users',
			'url'		=> 'user',
			'icon'		=> 'fa fa-users',
			'children'  => array(
				'List'			=> 'user',
				'Create'		=> 'user/create',
				'User Groups'	=> 'user/group',
			)
		),*/
		'util' => array(
			'name'		=> 'Preferences',
			'url'		=> 'util',
			'icon'		=> 'fa fa-cogs',
			'children'  => array(
				'Database Backup'		=> 'util/list_db',
				'Business Intelligence' => 'bi_tool',
				//'Categories' => 'categories',
				'Email Config' => 'email-conf'
			)
		),
		'panel' => array(
			'name'		=> 'Admin Users',
			'url'		=> 'panel',
			'icon'		=> 'fa fa-cog',
			'children'  => array(
				'Admin Users'			=> 'panel/admin_user',
				'Create Admin User'		=> 'panel/admin_user_create',
				'Admin User Groups'		=> 'panel/admin_user_group',
			)
		),
		'docs' => array(
			'name'		=> 'Documentation',
			'url'		=> 'panel',
			'icon'		=> 'fa fa-book',
			'children'  => array(
				
				'Technical Manual'		=> 'manuals',
				'Video Manuals'		=> '',
			)
		),
		//'logout' => array(
		//	'name'		=> 'Sign Out',
		//	'url'		=> 'panel/logout',
		//	'icon'		=> 'fa fa-sign-out',
		//)
	),

	// Login page
	'login_url' => 'admin/login',

	// Restricted pages
	'page_auth' => array(
		'user/create'				=> array('webmaster', 'admin', 'manager'),
		'Admin'						=> array('webmaster', 'admin', 'manager'),
		'Plan'						=> array('webmaster', 'admin', 'manager'),
		'user/group'				=> array('webmaster', 'admin', 'manager'),
		'panel'						=> array('webmaster'),
		'panel/admin_user'			=> array('webmaster'),
		'panel/admin_user_create'	=> array('webmaster'),
		'panel/admin_user_group'	=> array('webmaster'),
		'util'						=> array('webmaster', 'admin', 'manager'),
		'util/list_db'				=> array('webmaster', 'admin', 'manager'),
		'util/remove_db'			=> array('webmaster', 'admin', 'managger'),
		'util/backup_db'			=> array('webmaster', 'admin', 'manager'),
		'util/restore_db'			=> array('webmaster', 'admin', 'manaer'),
		'categories'			    => array('webmaster'),
		'memos'			    		=> array('webmaster','admin', 'manager','staff'),
		'rcletters'			   		=> array('webmaster','staff'),
		'recletters'		    	=> array('webmaster','staff'),
		'rHletters'			    	=> array('webmaster','staff'),
		'rletters'			    	=> array('webmaster','staff'),
		'rpletters'			    	=> array('webmaster','staff'),
		'letters'			    	=> array('webmaster'),
		'pletters'			    	=> array('webmaster'),
		'hletters'			    	=> array('webmaster'),
		'cletters'			    	=> array('webmaster'),
		'ecletters'			    	=> array('webmaster'),
		'cmemos'			    	=> array('webmaster'),
		'ecmemos'			    	=> array('webmaster'),

	),

	// AdminLTE settings
	'adminlte' => array(
		'body_class' => array(
			'webmaster'	=> 'skin-blue',
			'admin'		=> 'skin-blue',
			'manager'	=> 'skin-blue',
			'staff'		=> 'skin-blue',
		)
	),

	// Useful links to display at bottom of sidemenu
	'useful_links' => array(
		array(
			'auth'		=> array('webmaster', 'admin', 'manager', 'staff'),
			'name'		=> 'Frontend Website',
			'url'		=> '',
			'target'	=> '_blank',
			'color'		=> 'text-aqua'
		),
		array(
			'auth'		=> array('webmaster', 'admin', 'manager'),
			'name'		=> 'API Site',
			'url'		=> 'api',
			'target'	=> '_blank',
			'color'		=> 'text-orange'
		),
		array(
			'auth'		=> array('webmaster', 'admin', 'manager', 'staff'),
			'name'		=> 'Github Repo',
			'url'		=> CI_BOOTSTRAP_REPO,
			'target'	=> '_blank',
			'color'		=> 'text-green'
		),
	),

	// Debug tools
	'debug' => array(
		'view_data'	=> FALSE,
		'profiler'	=> FALSE
	),
);

/*
| -------------------------------------------------------------------------
| Override values from /application/config/config.php
| -------------------------------------------------------------------------
*/
$config['sess_cookie_name'] = 'ci_session_admin';