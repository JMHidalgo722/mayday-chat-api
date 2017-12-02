<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ChatController extends CI_Controller {

  public function __construct() {
    parent::__construct();
  }

  public function get_all() {
    
  }

  public function get($id) {
    $messages = $this->db
                ->select('u.username as username, c.name as channel, m.channel_id as channel_id, m.user_id as user_id, m.message as message')
                ->from('users u')
                ->join('messages m', 'user_id = u.id')
                ->join('channel c', 'c.id = channel_id')
                ->where('channel_id', $id)
                ->get()->result();
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
      $channel_id = $channel->id;
    } else {
      $this->db->insert('channel', array('name' => $channelName));
      $channel_id = $this->db->insert_id();
    }

    $username = $data->username;
    $user = $this->db
                 ->where('username', $username)
                 ->get('users')
                 ->row();
    
    if($user) {
      $user_id = $user->id;
    } else {
      $this->db->insert('users', array('username' => $username));
      $user_id = $this->db->insert_id();
    }

    $res = array(
      'channel_id'  => $channel_id,
      'user_id'     => $user_id,
      'messages'    => $this->get($channel_id)
    );

    echo json_encode($res);
  }

  public function send() {
    $data = json_decode($this->input->post('data'));
    $this->db->insert('messages', array(
      'channel_id'  => $data->channel_id,
      'user_id'     => $data->user_id,
      'message'     => $data->message
    ));

    $res['status'] = 1;

    echo json_encode($res);
  }
}