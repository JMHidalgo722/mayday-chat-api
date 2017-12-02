<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ChatController extends CI_Controller {

  public function __construct() {
    parent::__construct();
  }

  public function get_all() {
    $messages = $this->db
                ->select('m.id, m.nodeId, m.timestamp, m.content, u.senderName, c.channelName')
                ->from('users u')
                ->order_by('timestamp', 'desc')
                ->limit(50)
                ->join('messages m', 'm.senderId = u.id')
                ->join('channel c', 'c.id = m.channelId')
                ->get()->result();
    
    echo json_encode($messages);
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
    $res = $this->get_all();

    echo json_encode($res);
  }

  public function send() {
    $data = json_decode($this->input->post('data'));

    $values = array();

    foreach ($data as $message) {
      $values[] = array(
        'id'          => $message->id,
        'nodeId'      => $message->nodeId,
        'timestamp'   => $message->timestamp,
        'channelId' => $this->checkChannel($message->channelName),
        'senderId'  => $this->checkSender($message->senderName),
        'content'     => $message->content
      );
    }

    foreach ($values as $value) {
      $check = $this->db->where('id', $value['id'])
        ->get('messages')
        ->result();

      if (count($check) == 0) {
        $this->db->insert('messages', $value);
      }
    }

    $res['status'] = 1;

    echo json_encode($res);
  }
}