<?php

class advertAction extends FrontAction {

    public function tgo() {
        $id = I('id',0, 'intval');
        $url = M('ad')->where(array('id'=>$id))->getField('url');
        !$url && $this->_404();
        redirect($url);
    }
}