<?php

/**
* 
*/
class M_user extends CI_model
{
	
	public function gets()
	{
		return $this->db->get('user');
	}

	public function get($where,$table)
	{
		return $this->db->get_where($table,$where);
	}

	public function add($data)
	{
		$this->db->insert("user", $data);
	}

	public function edit()
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	}

	public function delete()
	{
		$this->db->where($where);
		$this->db->delete($table);
	}
}


?>