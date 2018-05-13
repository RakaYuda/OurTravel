<?php

class User extends CI_Controller
{
	function __construct(){
		parent::__construct();

		$this->load->model('m_user');
	}
	public function form()
	{
		$this->load->view('form_user');
	}
	public function add()
	{
		$data = array(
			"username" => $this->input->post("username"),
			"password" => $this->input->post("password"),
			"fullname" => $this->input->post("fullname"),
			"level" => $this->input->post("level") 
		);
		$this->m_user->add($data);
		redirect('user/show');
	}
	public function show()
	{
		$data['username'] = $this->m_user->gets();
		$this->load->view('form_tampil', $data);
	}
	public function edit($id)
	{
		$where = array('id' => $id);
		$data['user'] = $this->m_user->get($where,'user');
		$this->load->view('edituser',$data);
	}
	public function delete($id)
	{
		$where = array('id' => $id);
		$this->m_user->delete($where,'user');
		redirect('user/show');
	}
	public function update()
	{
		$data = array(
			"username" => $this->input->post("username"),
			"password" => $this->input->post("password"),
			"fullname" => $this->input->post("fullname"),
			"level" => $this->input->post("level") 
		);
		$where = array(
			'id' => $id
		);
		$this->m_user->edit($where,$data,'user');
		redirect('user/show');
	}

}
