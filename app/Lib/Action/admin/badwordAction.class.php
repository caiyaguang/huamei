<?php global $zym_decrypt;$zym_decrypt['����֯�����ֈ�å���������įï�ֈ']=base64_decode('X2luaXRpYWxpemU=');$zym_decrypt['�֎���������Ĉ���å������ċ�־��']=base64_decode('TA==');$zym_decrypt['���ĥ�Î���������ċ�ֈ���ÈľĈ�']=base64_decode('VQ==');$zym_decrypt['��֮���������֋������Ô���������']=base64_decode('RA=='); ?>

<?php
 class badwordAction extends BackendAction {public function _initialize(){parent::$GLOBALS['zym_decrypt']['����֯�����ֈ�å���������įï�ֈ']();$this->_mod =D(base64_decode('YmFkd29yZA=='));}public function _before_index(){$����֯���Ë������þ���Ô���֯��� =array('title' => $GLOBALS['zym_decrypt']['�֎���������Ĉ���å������ċ�־��']('添加敏感词'), 'iframe' => $GLOBALS['zym_decrypt']['���ĥ�Î���������ċ�ֈ���ÈľĈ�']('badword/add'), 'id' => 'add', 'width' => '500', 'height' => '130' );$this->assign(base64_decode('YmlnX21lbnU='), $����֯���Ë������þ���Ô���֯���);}protected function _search(){$������ֈþ��ĥ���֋��ĥ��֥����� =array();($����ïľ���ֈ�֎�������È����Ď� =$this->_request(base64_decode('d29yZF90eXBl'), base64_decode('dHJpbQ==')))&& $������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('d29yZF90eXBl')] =array(base64_decode('ZXE='), $����ïľ���ֈ�֎�������È����Ď�);($��Ô��åÔ���Ĉ������å��Į���Î =$this->_request(base64_decode('a2V5d29yZA=='), base64_decode('dHJpbQ==')))&& $������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('YmFkd29yZA==')] =array(base64_decode('bGlrZQ=='), '%'.$��Ô��åÔ���Ĉ������å��Į���Î.'%');$this->assign(base64_decode('c2VhcmNo'), array(base64_decode('a2V5d29yZA==') => $��Ô��åÔ���Ĉ������å��Į���Î, base64_decode('d29yZF90eXBl') => $����ïľ���ֈ�֎�������È����Ď�, ));return $������ֈþ��ĥ���֋��ĥ��֥�����;}public function ajax_check_name(){$���֯���������֋î�������È��֯� =$this->_get('badword', 'trim');$�֎��������֔��Ĕ֎�֯�����Î�֔ =$this->_get(base64_decode('aWQ='), base64_decode('aW50dmFs'));if ($GLOBALS['zym_decrypt']['��֮���������֋������Ô���������'](base64_decode('YmFkd29yZA=='))->name_exists($���֯���������֋î�������È��֯�, $�֎��������֔��Ĕ֎�֯�����Î�֔)){$this->ajaxReturn(0, L(base64_decode('6K+l5pWP5oSf6K+N5bey5a2Y5Zyo')));}else {$this->ajaxReturn(1);}}}