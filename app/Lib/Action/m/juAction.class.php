<?php global $zym_decrypt;$zym_decrypt['����֯�����ֈ�å���������įï�ֈ']=base64_decode('X2luaXRpYWxpemU=');$zym_decrypt['ïï�����������þ���Į�Ĕ��Î���']=base64_decode('TQ==');$zym_decrypt['����������î��������î����ĥ����']=base64_decode('SQ==');$zym_decrypt['֋������Ĕ������������Ĉ������־']=base64_decode('b2JqZWN0X3RvX2FycmF5');$zym_decrypt['��þ���������֥�î����ċ��������']=base64_decode('TmV3aWNvbnY=');$zym_decrypt['֮���þ�Ô���î���Î������������']=base64_decode('dXJsZGVjb2Rl');$zym_decrypt['������������î��î���þ������å�']=base64_decode('c3RyX3JlcGxhY2U=');$zym_decrypt['����ĮË�������Î�����֮��î��å']=base64_decode('dmVuZG9y');$zym_decrypt['�֔�����������������ľ������ľ��']=base64_decode('VG9wQ2xpZW50'); ?>
<?php
class juAction extends FrontAction {public function _initialize(){parent::$GLOBALS['zym_decrypt']['����֯�����ֈ�å���������įï�ֈ']();$֋�Į����þ֥��֥��֎ï���ֈ���� =$GLOBALS['zym_decrypt']['ïï�����������þ���Į�Ĕ��Î���'](base64_decode('aXRlbXNfc2l0ZQ=='))->where(array(base64_decode('Y29kZQ==') => base64_decode('ZnR4aWE=')))->getField(base64_decode('Y29uZmln'));$this->_tbconfig =unserialize($֋�Į����þ֥��֥��֎ï���ֈ����);}public function index(){$֮��������Į�֯�ֈ�������������� =$GLOBALS['zym_decrypt']['����������î��������î����ĥ����']('p',1, 'intval');$������ï��î��þ�����È�������È =$GLOBALS['zym_decrypt']['����������î��������î����ĥ����'](base64_decode('Y2lk'),'', base64_decode('aW50dmFs'));$��֮�����������������������֯��� =$this->_get_top();$���Î�þ����å���������֎������� =$��֮�����������������������֯���->load_api(base64_decode('RnR4aWFKdUNhdHNHZXRSZXF1ZXN0'));$���Î�þ����å���������֎�������->setFields(base64_decode('Y2lkLG5hbWU='));$���Ë���֥��������Ĕ���È������� =$��֮�����������������������֯���->execute($���Î�þ����å���������֎�������);$�֮���֎����î�֮�ֈ�֯���Į���� =$GLOBALS['zym_decrypt']['֋������Ĕ������������Ĉ������־']($���Ë���֥��������Ĕ���È�������->cats);$this->assign(base64_decode('Y2F0cw=='),$�֮���֎����î�֮�ֈ�֯���Į����);$����å�������Î�þ�����������Ĉ� =$this->_get_top();$���Î�þ����å���������֎������� =$����å�������Î�þ�����������Ĉ�->load_api(base64_decode('RnR4aWFKdUxpc3RzR2V0UmVxdWVzdA=='));$���Î�þ����å���������֎�������->setPage($֮��������Į�֯�ֈ��������������);$���Î�þ����å���������֎�������->setCid($������ï��î��þ�����È�������È);$���Î�þ����å���������֎�������->setTime(date(base64_decode('eS1tLWQtaA=='),time()));$���Ë���֥��������Ĕ���È������� =$����å�������Î�þ�����������Ĉ�->execute($���Î�þ����å���������֎�������);$È�����È����įċ�����Ĉ�������� =$GLOBALS['zym_decrypt']['֋������Ĕ������������Ĉ������־']($���Ë���֥��������Ĕ���È�������->lists);$count =$È�����È����įċ�����Ĉ��������[base64_decode('dG90YWxQYWdl')];$���������þ��ï��ï�֮����������=$GLOBALS['zym_decrypt']['��þ���������֥�î����ċ��������'](base64_decode('R0JL'),base64_decode('VVRGLTg='),$GLOBALS['zym_decrypt']['֮���þ�Ô���î���Î������������']($È�����È����įċ�����Ĉ��������[base64_decode('aHRtbA==')]));$���������þ��ï��ï�֮���������� =$GLOBALS['zym_decrypt']['������������î��î���þ������å�'](base64_decode('ZGF0YS1rcy1sYXp5bG9hZA=='),base64_decode('c3Jj'),$���������þ��ï��ï�֮����������);$���������þ��ï��ï�֮���������� =$GLOBALS['zym_decrypt']['������������î��î���þ������å�'](base64_decode('JmFtcDtpZD0='),base64_decode('JnRtPQ=='),$���������þ��ï��ï�֮����������);$���������þ��ï��ï�֮���������� =$GLOBALS['zym_decrypt']['������������î��î���þ������å�'](base64_decode('aHR0cDovL2RldGFpbC5qdS50YW9iYW8uY29tL2hvbWUuaHRtP2l0ZW1faWQ9'),base64_decode('P209anVtcCZhPWluZGV4JmlpZD0='),$���������þ��ï��ï�֮����������);$���������þ��ï��ï�֮���������� =$GLOBALS['zym_decrypt']['������������î��î���þ������å�'](base64_decode('JnRtPQ=='),base64_decode('JmZyb209b3Blbi5mdHhpYS5jb20='),$���������þ��ï��ï�֮����������);$�Ô��������������ľ������֋����� =$this->_pager($count, '1');$this->assign(base64_decode('cGFnZQ=='), $�Ô��������������ľ������֋�����->kshow());$this->assign(base64_decode('aHRtbA=='),$���������þ��ï��ï�֮����������);$this->assign(base64_decode('Y2lk'),$������ï��î��þ�����È�������È);$this->assign(base64_decode('bmF2X2N1cnI='), base64_decode('anU='));$this->_config_seo(array(base64_decode('dGl0bGU=') => base64_decode('IOaxh+iBmuacgOWIkueul+eahOWboui0reWVhuWTgSAtIA==') , ));$this->display();}private function _get_top(){$GLOBALS['zym_decrypt']['����ĮË�������Î�����֮��î��å']('Ftxia.TopClient');$GLOBALS['zym_decrypt']['����ĮË�������Î�����֮��î��å'](base64_decode('RnR4aWEuUmVxdWVzdENoZWNrVXRpbA=='));$GLOBALS['zym_decrypt']['����ĮË�������Î�����֮��î��å'](base64_decode('RnR4aWEuTG9nZ2Vy'));$��֮�����������������������֯��� =new $GLOBALS['zym_decrypt']['�֔�����������������ľ������ľ��'];$��֮�����������������������֯���->appkey =$this->_tbconfig[base64_decode('YXBwX2tleQ==')];$��֮�����������������������֯���->secretKey =$this->_tbconfig[base64_decode('YXBwX3NlY3JldA==')];return $��֮�����������������������֯���;}}