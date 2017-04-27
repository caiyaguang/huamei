<?php
class invalAction extends FrontAction {
    public function index() {
        $id = I('id', '', 'intval');
        !$id && $this->_404();
        $union_mod = D('union');
        $user_mod = D('user');
        $user = $user_mod->where(array( 'id' => $id ))->find();
        $date['uid'] = $user['id'];
        $date['username'] = $user['username'];
        $date['score'] = C('ftx_score_rule.union_visit');
        if (false === $zym_8 = $union_mod->create($date)) {
            $this->error($union_mod->getError());
        }
        if (!$union_mod->where(array( 'ip' => get_client_ip() ))->count()) {
            $setting = D('setting')->where(array('name' => 'score_rule' ))->find();
            $score_data = unserialize($setting['data']);
            $s_time = strtotime(date('Y-m-d 00:00:00', time()));
            $e_time = strtotime(date('Y-m-d 23:59:59', time()));
            $time = array(
                'uid' => $date['uid'],
                'add_time' => array(
                    array( 'egt', $s_time ) ,
                    array( 'elt', $e_time ) ) );
            $score_log = M('score_log')->where($time)->count();
            if ($score_log < $score_data['union_visit_nums']) {
                $score_data = array(
                    'score' => array( 'exp','score+' . C('ftx_score_rule.union_visit') ) ,
                    'sign_time' => strtotime(date('Ymd')) );
                D('user')->where(array('id' => $user['id'] ))->setField($score_data);
                $score_log_data['uid'] = $user['id'];
                $score_log_data['uname'] = $user['username'];
                $score_log_data['action'] = 'union_visit';
                $score_log_data['score'] = C('ftx_score_rule.union_visit');
                D('score_log')->create($score_log_data);
                D('score_log')->add();
                $union_mod->add();
            }
        }
        redirect(C('ftx_site_url'));
    }
} 
?>
