<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ChatController extends CI_Controller {

  public function __construct() {
    parent::__construct();
  }

  public function get_all() {
    /*$res = $this->db
          ->select('*')
          ->from('intern_supervisor is')
          ->join('interns i', 'i.id = is.intern_id', 'left')
          ->join('supervisors s', 's.id = is.supervisor_id', 'left')
          ->get()
          ->result();
    echo json_encode($res);*/
  }

  public function get($id) {
    $messages = $this->db
                ->where('channel_id', $id)
                ->get('messages')
                ->result();
    return $messages;
  }

  public function login() {
    $data = json_decode($this->input->post('data'));
    $channelName = $data->channel;
    $channel = $this->db
                ->where('name', $channelName)
                ->get('channel')
                ->row();
                
    if($channel) {
      $res = array(
        'channelID' => $channel->id,
        'messages'  => $this->get($channel->id)
      );
    } else {
      $this->db->insert('channel', array('name' => $channelName));
      $channelID = $this->db->insert_id();
      $res = array(
        'channelID' => $channelID,
        'messages'  => $this->get($channelID)
      );
    }

    echo json_encode($res);
  }

  public function send() {
    $data = json_decode($this->input->post('data'));
    $this->db->insert('messages', array(
      'channel_id'  => $data->channelID,
      'username'    => $data->username,
      'message'     => $data->message
    ));

    $res['status'] = 1;

    echo json_encode($res);
  }

   /*public function update($id) {
    $data = json_decode($this->input->post('data'));
    $this->db->where('id', $id)
             ->update('interns', $data);
    
    $res['status'] = '1';
    echo json_encode($res);
  }

  public function delete($id) {
    $this->db->where('id', $id)->delete('interns');
    $res['status'] = '1';
    echo json_encode($res);
  }*/
}