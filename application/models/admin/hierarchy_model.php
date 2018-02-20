<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class hierarchy_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
    }

public function get_count_record($table)
    {
        $query = $this->db->count_all($table);

        return $query;
    }
    
}
