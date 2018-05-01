<?php

/**
* 
*/
class M_user extends CI_model
{
	
	/*public function gets(f)
	{
		# code...
	}

	public function get(f)
	{
		# code...
	}*/

	public function add($data)
	{
		$this->db->insert("user", $data);
	}

	/*public function edit(f)
	{
		# code...
	}

	public function delete(f)
	{
		# code...
	}*/
}


?>