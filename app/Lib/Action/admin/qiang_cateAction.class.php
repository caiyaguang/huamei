<?php global $zym_decrypt;$zym_decrypt['����֯�����ֈ�å���������įï�ֈ']=base64_decode('X2luaXRpYWxpemU='); ?>
<?php
class qiang_cateAction extends BackendAction {public function _initialize(){parent::$GLOBALS['zym_decrypt']['����֯�����ֈ�å���������įï�ֈ']();$this->_mod =D(base64_decode('cWlhbmdfY2F0ZQ=='));}public function ajax_getchilds(){$�֎��������֔��Ĕ֎�֯�����Î�֔ =$this->_get('id', 'intval');$������ֈþ��ĥ���֋��ĥ��֥����� =array(base64_decode('cGlk')=>$�֎��������֔��Ĕ֎�֯�����Î�֔);$return =$this->_mod->field(base64_decode('aWQsbmFtZQ=='))->where($������ֈþ��ĥ���֋��ĥ��֥�����)->select();if ($return){$this->ajaxReturn(1, L(base64_decode('b3BlcmF0aW9uX3N1Y2Nlc3M=')), $return);}else {$this->ajaxReturn(0, L(base64_decode('b3BlcmF0aW9uX2ZhaWx1cmU=')));}}}