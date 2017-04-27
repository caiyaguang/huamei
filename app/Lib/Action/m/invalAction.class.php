<?php

class invalAction extends FrontAction {
 
    public function index() {
		$id = I('id','', 'intval');
		$union_mod = D('union');
		$user_mod = D('user');
		$user = $user_mod->where(array('id' => $id))->find();
        !$user && $this->_404();
		$date['uid']		= $user['id'];
		$date['username']	= $user['username'];
		$date['score']		= C('ftx_score_rule.union_visit');
		if (false === $data = $union_mod->create($date)) {
            $this->error($union_mod->getError());
        }
        if (!$union_mod->where(array('ip'=>get_client_ip()))->count()) {
			$score_data = array('score'=>array('exp','score+'.C('ftx_score_rule.union_visit')), 'sign_time'=>strtotime(date('Ymd')));
			D('user')->where(array('id'=>$user['id']))->setField($score_data); //�ı��û����
			//���һ����ּ�¼
			$score_log_data['uid']		=	$user['id'];
			$score_log_data['uname']	=	$user['username'];
			$score_log_data['action']	=	'union_visit';
			$score_log_data['score']	=	C('ftx_score_rule.union_visit');
			D('score_log')->create($score_log_data);
			D('score_log')->add();
			$union_mod->add();
        } 
		redirect(U('user/index'));
    }
}