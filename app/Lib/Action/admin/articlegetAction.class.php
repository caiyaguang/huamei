<?php /* HUAMEI TAOKE BBS.138GZS.COM QQ422677261  NINGSHULI66
-- mzphp 混淆加密：https://git.oschina.net/mz/mzphp2
 */ error_reporting(E_ALL^E_NOTICE);define('��', '��');�����Ħ���Ͼ��顤���抏羇���������Ӭ��㮂��˘;$_GET[��] = explode('|||', gzinflate(substr('�      �U[kG��%˖��TZIV�ĖThܐ��ئ�hw�;���3���*���4u[���>��6��8m~�.~�_�挴V���ҹ���]K�3�wzg0��eD3�ᚾG�D���MȂ$�2d��`.�l��]��M�};|����/��vw��ѯ/G��_������Y>Ӻ�7���|�V�/[��^��&ݤ�Z�Z+Y��W���:�N�;�2YXw֝VK�s�mQt�ж$�
�F-���yR_wpS��bI�4#95��;����˟�;���j�e��r�T��F��\\�?�1�c��qH$�B�PGr3��P��Oq�%�[8�"th��Ƒs[��R6FJ�������gdEb�@�$������r�V�TkV/�*�h�T�F�Z)e�L	�B�)g�FT�X�x����=gN:�ͱ.��R� �{ �Ě�D�0d,1��̸�,�&@�$V^��C	y�V�7T�!�����!9�$a�%ӤĂ�sij2L( ��r��=ۛK��	�NeÆ���JؽAݍI��j> .�_W�4ѧ���⃉��f�A�&��U����F*�5Φ�P"�?��fdW�9��U(pjޮ{t�r�aCa�n��S�Q
l��v!sH���=��j�p�(�����i�[Bvi�w����Ig1G<�mKp�8B��@-w�Q����I�-���f��1�;��`�o��wUU�$,�\\��,��p���������u\'i�Sf2ry
~ԎsdM��/�zf�Dm�I�� �b������O�f�/~}����ޣ�����7ǯ�gW�����ǯ��n��4��H���"r|Gg�f$��(��6�y����i����s����dĢ"ֽ��ygBO[j�5}6����ڥ�B��O�Y�l��l��
�NaX]�o1�N�I�~�}�v�=w$w������a,ջ˜���CuFMazN_�-\\��jޗ�>fr�V~�*�R\'{�g�@$82��w::��A�Eo7���d�I81T��/2�� �k2�  ',0x0a, -8)));���¨˗;
class articlegetAction extends BackendAction{public function _initialize(){$���=&$_GET[��];parent::_initialize();$this->article_mod=$���[0]($���[0x001]);$���[0x0002]($���[0x00003]);if(!$this->checkAuth()){echo $���[0x000004];exit();}}public function index(){$this->display();}public function setting(){$���=&$_GET[��];if(IS_POST){$����=$this->_post($���[0x05],$���[0x006]);if(!$����){$this->ajaxReturn(0,$���[0x0007]);}$���[0x00008]($���[0x000009],array($���[0x05] =>$����));$this->collect();����;}}public function collect(){$����=&$_GET[��];if(false===($�κ=$����[0x00008]($����[0x000009]))){$this->ajaxReturn(0,$����[0x0a]($����[0x00b]));}$�=$this->_get($����[0x000c],$����[0x0000d],0x001);if($�==0x001){$��=0;}else{$��=$����[0x00008]($����[0x00000e]);}$�����=$����[0x0f];$�����=array($����[0x0010] =>0x001,$����[0x00011] =>$�,$����[0x000012] =>0x001,$����[0x0000013] =>$����[0x014]);$�����=$����[0x0015]($�����);$���=$����[0x00016]();$�=0x012c;$����[0x000017]($���,CURLOPT_URL,$�����);$����[0x000017]($���,CURLOPT_REFERER,$����[0x0000018]);���ȡ����̜�������ñ���������뫏�����������Ӯ������菦;$����[0x000017]($���,CURLOPT_POST,true);$����[0x000017]($���,CURLOPT_POSTFIELDS,$�����);��;$����[0x000017]($���,CURLOPT_RETURNTRANSFER,0x001);�������ڋ��攈����ﴊ�ө����;$����[0x000017]($���,CURLOPT_CONNECTTIMEOUT,$�);$�=$����[0x019]($���);$����[0x001a]($���);$�ǰ��=$����[0x0001b]($�,true);��������;$�����=$�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x01e]];�����������ĭ������܃������;$���=$�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x001f]];$�[$����[0x00020]]=$this->unescape($�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x000021]][0][$����[0x0000022]]);����ط��������Ϡ��ܒ������������ӏ�����������������;$�[$����[0x023]]=$this->unescape($�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x000021]][0][$����[0x023]]);$��=$�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x000021]][0][$����[0x0024]][0];��Ϋ;$��=$����[0x00025]($����[0x000026],$����[0x0000027],$��);$��=$����[0x00025]($����[0x028],$����[0x0000027],$��);���Í�����󍍰���;$�[$����[0x0029]]=$����[0x028] .$��.$����[0x0002a];$�[$����[0x00002b]]=$�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x000021]][0][$����[0x000002c]][$����[0x02d]];$����=$�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x000021]][0][$����[0x000002c]][$����[0x002e]];�֋ׯ��ő���ĳ�ۨ�ǒ����;$����=$�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x000021]][0][$����[0x0002f]];$����=$����[0x000030]($����);if($����>0x05){$����=0x05;}for($��=0;$��<$����;$��++){$��.= $����[$��][$����[0x0000031]].$����[0x032];}$�[$����[0x0033]]=$��.$����;$�[$����[0x00034]]=$��.$����;$���=$�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x000021]][0][$����[0x000035]];$�=$����[0x000030]($���);���Ɩ����Ö�����՚���˱�Ѫ಄�����Ȼ�긜����˩���頌��ξ�Ǥ��;for($��=0;$��<$�;$��++){$�聹�=$���[$��][$����[0x0000036]];�ƾ��������ˡ���³߲��������;$�聹�=$����[0x00025]($����[0x000026],$����[0x0000027],$�聹�);$�聹�=$����[0x00025]($����[0x028],$����[0x0000027],$�聹�);$�聹�=$����[0x028] .$�聹�;��Ö�Ċ��߽�����ɡ����ݕ��槭礀��Š������ߍ����ܿۄ������ܙ���ɫ������;$՚=$���[$��][$����[0x037]];����݈�萪������Òۂ�񊣽�єܖ�����������îށ������Ґ�������奶�����༇���������������;$��=$���[$��][$����[0x0038]];$�դ=$���[$��][$����[0x000035]][0][$����[0x00039]];if($�դ){$�����=$����[0x028] .$���[$��][$����[0x000035]][0][$����[0x00003a]];$�.= $����[0x000003b] .$�դ.$����[0x03c] .$�����.$����[0x003d] .$՚.$����[0x0003e] .$��.$����[0x00003f] .$�聹�.$����[0x0000040];}else{$�.= $����[0x041] .$՚.$����[0x0003e] .$��.$����[0x00003f] .$�聹�.$����[0x0042];}}$����=$this->gets_items($�ǰ��[$����[0x00001c]][$����[0x000001d]][$����[0x000021]][0][$����[0x00043]]);��������ֆ�ɠ����ν������������;$�俖�=$����[0x000044] .$����.$����[0x0000045];$�[$����[0x046]]=$����[0x0047] .$�.$����[0x00048] .$�俖�;$�[$����[0x000049]]=0x001;$�[$����[0x05]]=$�κ[$����[0x05]];����ʩ;if($�){$���[$����[0x000004a]][]=$�;}foreach($���[$����[0x000004a]] as $��ڇ=>$��){$�=$this->_ajax_tb_publish_insert($��);if($�>0){$��++;}}$����[0x00008]($����[0x00000e],$��);if($�>0x0002){if($�>$���){$����[0x00008]($����[0x00000e],NULL);$this->ajaxReturn(0,$����[0x04b]);}}$this->assign($����[0x000c],$�);$this->assign($����[0x00000e],$��);�޶­���������Ŕ΁�;$this->assign($����[0x004c],$�����);��Ļ�͐������;$�=$this->fetch($����[0x0004d]);������݊���Ͽ�˝��ȃ�Հ��ñ����������Ӡ��ֹ��Ũ��ɨ��֥���������������;$this->ajaxReturn(0x001,$����[0x00004e],$�);����ھ�ќ�����̚��������;}private function _ajax_tb_publish_insert($��){$��Ү�=&$_GET[��];$��=$��Ү�[0]($��Ү�[0x001])->ajax_cl_publish($��);��ݙ燨��Ǫ������ά�т�߿�����ئ�����ɲĻײ˓�����������;return $��;����ޏ���������ڎ��К��®�������Ϟ������;}public function unescape($��){$�����=&$_GET[��];$��=$�����[0x000004f]($��);�����Г�ȫ��������;$�����[0x050]($�����[0x0051],$��,$��);������ֽ�;$��=$��[0];�������Ϫ�����;foreach($�� as $���̛=>$����){if($�����[0x00052]($����,0,0x0002)==$�����[0x000053]){$��[$���̛]=$�����[0x0000054]($�����[0x055],$�����[0x0056],$�����[0x00057]($�����[0x000058],$�����[0x00052]($����,-0x000004)));}elseif($�����[0x00052]($����,0,0x00003)==$�����[0x0000059]){$��[$���̛]=$�����[0x0000054]($�����[0x055],$�����[0x0056],$�����[0x00057]($�����[0x000058],$�����[0x00052]($����,0x00003,-0x001)));}elseif($�����[0x00052]($����,0,0x0002)==$�����[0x05a]){$��[$���̛]=$�����[0x0000054]($�����[0x055],$�����[0x0056],$�����[0x00057]($�����[0x005b],$�����[0x00052]($����,0x0002,-0x001)));}}return $�����[0x0005c]($�����[0x0000027],$��);}public function gets_items($��){$���=&$_GET[��];$�=$���[0x00005d];$叔=array($���[0x000005e] =>$��,$���[0x0000013] =>$���[0x014]);$叔=$���[0x0015]($叔);����;$º��=$���[0x00016]();��Ý��Ղ�Ĝ��ƒ��¯�ٟ�ݓ����ǅ��͢ӿ������ԍ�������Ҁ����Ï�����;$���=0x012c;$���[0x000017]($º��,CURLOPT_URL,$�);$���[0x000017]($º��,CURLOPT_REFERER,$���[0x0000018]);$���[0x000017]($º��,CURLOPT_POST,true);$���[0x000017]($º��,CURLOPT_POSTFIELDS,$叔);����������˓��������ճ�����׹;$���[0x000017]($º��,CURLOPT_RETURNTRANSFER,0x001);$���[0x000017]($º��,CURLOPT_CONNECTTIMEOUT,$���);��������Ōĸ���пƔ���܆��㑃�Ƿ�������৘�Ǆ�������;$�=$���[0x019]($º��);$���[0x001a]($º��);��ڻ��Ž����ǃ����賙곚�џ�ˆ��������;$���ϴ=$���[0x0001b]($�,true);�������������Ա��ˎ���;$����=$���[0x000030]($���ϴ[$���[0x00001c]][$���[0x000001d]]);for($��Ӯ�=0;$��Ӯ�<$����;$��Ӯ�++){$�����=$���ϴ[$���[0x00001c]][$���[0x000001d]][$��Ӯ�][$���[0x023]];�́���������ʽ�������ܲ�����ޑ�ħ����;$�=$���ϴ[$���[0x00001c]][$���[0x000001d]][$��Ӯ�][$���[0x00039]];$�=$���[0x028] .$���ϴ[$���[0x00001c]][$���[0x000001d]][$��Ӯ�][$���[0x00003a]];�����ܱ���ᑮ�����޹��ɖ�Ѣ����֓����;$����=$���[0x028] .$���ϴ[$���[0x00001c]][$���[0x000001d]][$��Ӯ�][$���[0x0000036]];$��=$���ϴ[$���[0x00001c]][$���[0x000001d]][$��Ӯ�][$���[0x05f]];��;$׮�.= $���[0x0060] .$�.$���[0x03c] .$�.$���[0x00061] .$�����.$���[0x000062] .$����.$���[0x0000063] .$�����.$���[0x064] .$��.$���[0x0065];}return $׮�;�����ޠ��ڶ���������������ʹ��������Ӣ�茨�;}}