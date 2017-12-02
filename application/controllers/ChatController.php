<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ChatController extends CI_Controller {

  public function __construct() {
    parent::__construct();
  }

  public function get_all() {
    
  }

  public function get($id) {
    $messages = $this->db
                ->select('m.id, m.nodeId, m.timestamp, m.content, u.senderName, c.channelName')
                ->from('users u')
                ->order_by('timestamp', 'desc')
                ->limit(20)
                ->join('messages m', 'm.senderId = u.id')
                ->join('channel c', 'c.id = m.channelId')
                ->where('m.channelId', $id)
                ->get()->result();
    return $messages;
  }

  public function checkChannel($channelName) {
    $channel = $this->db
                ->where('channelName', $channelName)
                ->get('channel')
                ->row();

    if($channel) {
      $channelId = $channel->id;
    } else {
      $this->db->insert('channel', array('channelName' => $channelName));
      $channelId = $this->db->insert_id();
    }

    return $channelId;
  }

  public function checkSender($senderName) {
    $sender = $this->db
                 ->where('senderName', $senderName)
                 ->get('users')
                 ->row();
    
    if($sender) {
      $senderId = $sender->id;
    } else {
      $this->db->insert('users', array('senderName' => $senderName));
      $senderId = $this->db->insert_id();
    }

    return $senderId;
  }

  public function login() {
    $data = json_decode($this->input->post('data'));

    $channelId = $this->checkChannel($data->channelName);
    $senderId = $this->checkSender($data->senderName);

    $res = $this->get($channelId);

    echo json_encode($res);
  }

  public function send() {
    $data = json_decode($this->input->post('data'));
    $this->db->insert('messages', array(
      'id'         => $data->id,
      'nodeId'     => $data->nodeId,
      'timestamp'  => $data->timestamp,
      'channelId'  => $this->checkChannel($data->channelName),
      'senderId'   => $this->checkSender($data->senderName),
      'content'    => $data->content
    ));

    $res['status'] = 1;

    echo json_encode($res);
  }
}