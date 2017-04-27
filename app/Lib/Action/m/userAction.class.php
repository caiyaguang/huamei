<?php

class userAction extends UsersAction {

	public function _initialize() {
        parent::_initialize();
		$info = $this->visitor->get();
        $this->assign('info', $info);
		D('order')->checkTime();
    }

	public function additem(){
		if($this->info['login_type']==1){
				$this->error('非商家用户！');
		}
		if(IS_POST){
			$data = I('post.info');
			$data['add_time'] = time();
			$data['start_time'] = strtotime($data['start_time']);
			$data['end_time'] = strtotime($data['end_time']);
			$data['remain'] = $data['num'];
			$data['deposit'] = $data['num'] * $data['price'];
			$data['seller'] = $this->info['id'];
			$data['status'] = 1;
			$result = M('free')->add($data);
            if ($result) {
				$this->success('发布成功，请联系管理员审核并支付保证金！');
            } else {
				$this->error('发布失败');
            }
		}
				$this->_config_seo(array(
					'title' => '发布活动	-	' . C('ftx_site_name'),
				));
		$this->display();
	}
	public function edititem(){
		if($this->info['login_type']==1){
				$this->error('非商家用户！');
		}
		$id = I('get.id');
		$item = M('free')->where("id = $id and seller =".$this->info['id'])->find();
		if($item['status'] == 1){
			if(IS_POST){
				$data = I('post.info');
				$data['add_time'] = time();
				$data['start_time'] = strtotime($data['start_time']);
				$data['end_time'] = strtotime($data['end_time']);
				$data['remain'] = $data['num'];
				$data['deposit'] = $data['num'] * $data['price'];
				$data['status'] = 1;
				$result = M('free')->save($data);
				if ($result) {
					$this->success('编辑成功，请联系管理员审核并支付保证金！');
				} else {
					$this->error('编辑失败');
				}
			}
				$this->_config_seo(array(
					'title' => '编辑活动	-	' . C('ftx_site_name'),
				));
			$this->item = $item;
			$this->display('additem');
		}else{
			$this->error('操作错误！');
		}
	}
	public function delitem(){
		if($this->info['login_type']==1){
				$this->error('非商家用户！');
		}
		$id = I('get.id');
		$result = M('free')->where("id = $id and seller =".$this->info['id'])->setfield('status','3');
		if($result){
			$this->success('撤销成功');
		}else{
			$this->error('撤销活动出错');
		}
	}
	public function item(){
		if($this->info['login_type']==1){
				$this->error('非商家用户！');
		}
        $map = array();
        $map['seller'] = $this->visitor->info['id'];
        $free_item_mod = M('free');
        $pagesize = 5;
        $count = $free_item_mod->where($map)->count('id');
        $pager = $this->_pager($count, $pagesize);
        $items = $free_item_mod->where($map)->limit($pager->firstRow.','.$pager->listRows)->order('id DESC')->select();
		foreach($items as $key=>$val){
			$items[$key]['baoming'] = $val['num']-$val['remain'];
		}
        $this->assign('items', $items);
        $this->assign('page', $pager->fshow());
		$this->_config_seo(array(
			'title' => '活动管理	-	' . C('ftx_site_name'),
		));
		$this->display();
	}
    public function info() {
        $do = I('do');
        if (IS_POST && $do = 'myinfo') {
            $oldpassword = I('old_password');
            $qq = I('qq');
            $email = I('email');
            $mobile = I('mobile');
            $realname = I('realname');
            $address = I('address');
            $passport = $this->_user_server();
            $result = $passport->edit($this->visitor->info['id'], $oldpassword, array(
                'qq' => $qq,
                'email' => $email,
                'mobile' => $mobile,
                'realname' => $realname,
                'address' => $address
            ));
            if ($result) {
                header('Content-type: text/html; charset=utf-8');
                die('<script language="javascript">alert("资料修改成功！");this.location.href="' . U('user/info') . '";</script>');
            } else {
                $this->success(L('edit_failed') , U('user/info'));
            }
        }
        $this->_config_seo(array('title' => '账号资料	-	' . C('ftx_site_name') , ));
        $this->display();
    }
	public function complain(){
		if($this->info['login_type'] != 1){
			$complain = M('complain')->where('sid ='.$this->info['id'])->select();
		}else{
			$complain = M('complain')->where('uid ='.$this->info['id'])->select();
		}
		$this->nowtime = time();
		$this->complain = $complain;
				$this->_config_seo(array(
					'title' => '申诉管理	-	' . C('ftx_site_name'),
				));
		$this->display();
	}
	public function inputOrderID(){
		if($this->info['login_type'] != 1) $this->error('非普通用户不能访问');
		if(IS_POST){
			$data['items_id'] = I('post.items_id');
			$data['order_id'] = I('post.order_id');
			$data['uid'] = $this->info['id'];
			$orderStatus = D('order')->where("uid = ".$data['uid']." and items_id =".$data['items_id'])->getfield('status');
			$data['order_time'] = time();
			if($orderStatus == '待填写订单号'){
				if(is_numeric($data['order_id'])){
					$data['status'] = '待审核订单号';
					$result = D('order')->where("uid = ".$data['uid']." and items_id =".$data['items_id'])->save($data);
					if($result){
					$this->success('提交成功');
					}else{
					$this->error('提交失败');
					}
				}else{
					$this->error('单号必须是数字');
				}
			}else{
					$this->error('提交有误');
			}
		}
	}
	public function cash(){
		if($this->info['login_type'] != 1) $this->error('非普通用户不能访问');
		$cashlist = M('apply_order')->where("status = '已提现'")->order('add_time desc')->limit(30)->select();
		foreach($cashlist as $key => $val){
			$cashlist[$key]['username'] = "**".substr(getTableValue($val['uid'],'id','user','username'),2,3)."**";
		}
		$this->cashlist = $cashlist;
		$this->tixianzhong = M('apply_order')->where("(status = '申请中') and uid =".$this->info['id'])->sum('money');
				$this->_config_seo(array(
					'title' => '账户提现	-	' . C('ftx_site_name'),
				));
		$this->financeList = M('finance')->where("uid = ".$this->info['id'])->order("add_time desc")->select();
		$this->display();
	}
	public function zhifu(){
		if($this->info['login_type'] == 1) $this->error('非商家用户！');
		if(IS_POST){
			$did = I('post.did');
			$deposit = M('free')->where("id = $did and seller =".$this->info['id'])->getField('deposit');
			IS_AJAX && $this->ajaxReturn(1, 'success',$deposit);
		}
	}
    public function checkOrder() {
		if($this->info['login_type'] == 1) $this->error('非商家用户！');
		$order_mod = D('order');
		$id = I('get.id');
		$check = I('get.check');
		$order = $order_mod->find($id);
		if($order['seller'] != $this->info['id'])  $this->error('非法操作');
		if(!$order)  $this->error('数据有误');
		if($order['status'] != '待审核订单号')  $this->error('数据有误');
		if($check == 1){
			$order['status']  = '已返还';
			$result = M('user')->where("id = ".$order['uid'])->setInc('money',$order['price']);
				$finance['uid'] = $order['uid'];
				$finance['money'] = $order['price'];
				$finance['memo'] = $order['title'].'返款';
				$finance['add_time'] = time();
				M('finance')->add($finance);
			$order_mod->save($order);
			if($result){
				 $this->success('处理成功！');
			}else{
				 $this->error('提交失败');
			}
		}else{
			$order['status'] = '订单号有误';
			M('free')->where("id = ".$order['items_id'])->setInc('remain',1);
			$result = $order_mod->save($order);
			if($result){
				$this->success('处理成功！');
			}else{
				$this->error('提交失败');
			}
		}
	}
	public function orderManage(){
		if($this->info['login_type'] == 1) $this->error('非商家用户！');
		$p = I('p',1);
		$page_size = 20;
		$start = $page_size * ($p - 1) ;
 
        $count = D('order')->where("seller = ".$this->info['id'])->count('id');
        $pager = $this->_pager($count, $page_size);
		$this->orderList = M('order')->where("seller = ".$this->info['id'])->order("id desc")->select();
		$this->assign('page', $pager->fshow());
		$this->display();
	}
	public function ConfirmPay(){
		if($this->info['login_type'] == 1) $this->error('非商家用户！');
		if(IS_POST){
			$did = I('post.did');
			$item = M('free')->where("id = $did and seller =".$this->info['id'])->find();
			if(!$item)$this->error('该商品不存在！请刷新页面重新提交！');
			if($item['paid'] >= $item['deposit']){
				$this->error('已经成功支付！请刷新页面！');
			}elseif($item['deposit'] > $this->info['money']){
				$this->error('余额不够，请联系客服充值！');
			}else{
				$needpay = $item['deposit'] - $item['paid'];
				$result = M('user')->where("id = ".$this->info['id'])->setDec('money',$needpay);
				if($result){
				$item['paid'] = $item['deposit'];
				$item['status'] = 4;
				M('free')->where("id = $did and seller =".$this->info['id'])->save($item);
					$this->success('支付成功！请耐心等待审核上线！');
				}else{
					$this->error('扣费失败！');
				}
			}
		}
	}
	public function apply_cash(){
		if($this->info['login_type'] != 1) $this->error('非普通用户不能访问');
		if(IS_POST){
			$yanzheng = md5($_POST['yanzheng']);
			$jine = $_POST['jine'];
			if($yanzheng != $this->info['password']) $this->error('输入密码有误，请重新输入');
			if($this->info['money'] < $jine) $this->error('提款额度不能大于账户余额！');
			$data['uid'] = $this->info['id'];
			$data['alipay'] = $this->info['alipay'];
			$data['name'] = $this->info['name'];
			$data['add_time'] = time();
			$data['status'] = '申请中';
			$data['money'] = $jine;
			$result = M('apply_order')->add($data);
			if($result){
				M('user')->where('id ='.$this->info['id'])->setDec('money',$jine);
				$finance['uid'] = $this->info['id'];
				$finance['money'] = -$jine;
				$finance['memo'] = '申请提款';
				$finance['add_time'] = time();
				M('finance')->add($finance);
				$this->success('申请成功，请耐心等候！');
			}else{
				$this->error('提交失败！');
			}
		}else{
			if($this->info['alipay'] == '' || $this->info['name'] == '') $this->error('请先设置您的支付宝信息');
			$cashlist = M('apply_order')->where("status = '已提现'")->order('add_time desc')->limit(30)->select();
			foreach($cashlist as $key => $val){
				$cashlist[$key]['username'] = "**".substr(getTableValue($val['uid'],'id','user','username'),2,3)."**";
			}
			$this->cashlist = $cashlist;
			$this->tixianzhong = M('apply_order')->where("(status = '申请中') and uid =".$this->info['id'])->sum('money');
					$this->_config_seo(array(
						'title' => '账户提现	-	' . C('ftx_site_name'),
					));
			$this->display();
		}
	}
	public function order(){
		if($this->info['login_type'] != 1) $this->error('非普通用户不能访问');
		$p = I('p',1);
		$page_size = 20;
		$start = $page_size * ($p - 1) ;
 
        $count = D('order')->where('uid ='.$this->info['id'])->count('id');
        $pager = $this->_pager($count, $page_size);
		$orderList = D('order')->where('uid ='.$this->info['id'])->order('add_time DESC')->limit($start . ',' . $page_size)->select();
		$this->assign('page', $pager->fshow());

		foreach($orderList as $key => $val){
			if($val['status'] == '待填写订单号'){
			$orderList[$key]['stop_time'] = $val['add_time'] + (86400*3);
			}elseif($val['status'] == '待审核订单号'){
			$orderList[$key]['stop_time'] = $val['order_time'] + (86400*15);
			}
		}
		$this->nowtime = time();
		$this->orderList = $orderList;
				$this->_config_seo(array(
					'title' => '订单管理	-	' . C('ftx_site_name'),
				));
		$this->display();
	}
	public function chashen(){
		if(IS_POST){
			$orid = I('post.orid');
			$result = M('complain')->where("order_id = $orid")->find();
				if($this->info['login_type'] != 1){
				if($result['sid'] != $this->info['id']) $this->error('error');
				}else{
				if($result['uid'] != $this->info['id']) $this->error('error');
				}
			if($result){
					$result['title'] = getTableValue($result['item_id'],'id','free','title');
					$result['username'] = $this->info['username'];
					$result['add_time'] = date('Y-m-d H:i:s',$result['add_time']);
					if($result['reply_time'] != '')$result['reply_time'] = date('Y-m-d H:i:s',$result['reply_time']);
					IS_AJAX && $this->ajaxReturn(1, 'success',$result);
			}else{
					IS_AJAX && $this->ajaxReturn(0, 'error',$result);
			}
		}
	}
	public function shensu(){
		if($this->info['login_type'] != 1) $this->error('非普通用户不能访问');
		if(IS_POST){
			$data['order_id'] = I('post.order_id');
			$data['ss_content'] = I('post.ss_content');
			$data['qq'] = I('post.qq');
			$data['wangwang'] = I('post.wangwang');
			$data['phone'] = I('post.phone');
			$order = D('order')->where("id = ".$data['order_id'])->find();
			if(!$order) $this->error('提交失败');
			if($data['ss_content'] == '') $this->error('申诉内容不能为空！');
			$data['add_time'] = time();
			$data['status'] = '等待回复';
			$data['item_id'] = $order['items_id'];
			$data['uid'] = $this->info['id'];
			$data['sid'] = getTableValue($order['items_id'],'id','free','seller');
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = 3145728 ;// 设置附件上传大小
			$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
			$upload->savePath  = './data/upload/complain/';
			if($_FILES['ss_pz']){
				$info =  $upload->uploadOne($_FILES['ss_pz']);
				$data['ss_pz'] = $info[0]['savepath'].$info[0]['savename'];
				if(!$info) $this->error("上传出错");
			}
			if($_FILES['ss_pz2']){
				$info2 =  $upload->uploadOne($_FILES['ss_pz2']);
				$data['ss_pz2'] = $info2[0]['savepath'].$info2[0]['savename'];
				if(!$info2) $this->error("上传出错");
			}
			$result = M('complain')->add($data);
			if($result){
				 D('order')->where("id = ".$data['order_id'])->setField('status','申诉中');
				$this->success('提交申诉成功');
			}else{
				$this->error('提交失败');
			}
		}
	}
	public function reply_complain(){
		if($this->info['login_type'] != 2) $this->error('非商家用户不能访问');
		if(IS_POST){
			$data['id'] = I('post.id');
			$data['reply_content'] = I('post.reply_content');
			if($data['reply_content'] == '') $this->error('申诉内容不能为空！');
			$data['reply_time'] = time();
			$data['status'] = '等待裁决';
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = 3145728 ;// 设置附件上传大小
			$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
			$upload->savePath  = './data/upload/complain/';
			if($_FILES['reply_pz']){
				$info =  $upload->uploadOne($_FILES['reply_pz']);
				$data['reply_pz'] = $info[0]['savepath'].$info[0]['savename'];
				if(!$info) $this->error("上传出错");
			}
			$result = M('complain')->save($data);
			if($result){
				$this->success('提交成功');
			}else{
				$this->error('提交失败');
			}
		}
	}
	public function reply_complain2(){
		if($this->info['login_type'] != 2) $this->error('非商家用户不能访问');
		if(IS_POST){
			$data['order_id'] = I('post.id');
			$data['id'] = M('complain')->where("order_id = ".$data['order_id'])->getField('id');
			$data['reply_content'] = I('post.reply_content');
			if($data['reply_content'] == '') $this->error('申诉内容不能为空！');
			$data['reply_time'] = time();
			$data['status'] = '等待裁决';
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = 3145728 ;// 设置附件上传大小
			$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
			$upload->savePath  = './data/upload/complain/';
			if($_FILES['reply_pz']){
				$info =  $upload->uploadOne($_FILES['reply_pz']);
				$data['reply_pz'] = $info[0]['savepath'].$info[0]['savename'];
				if(!$info) $this->error("上传出错");
			}
			$result = M('complain')->save($data);
			if($result){
				$this->success('提交成功');
			}else{
				$this->error('提交失败');
			}
		}
	}
	public function inputOrder(){
		if($this->info['login_type'] != 1) $this->error('非普通用户不能访问');
		if(IS_POST){
			$data['id'] = I('post.id');
			$data['order_id'] = I('post.order_id');
			$orderStatus = D('order')->where("id =".$data['id'])->getfield('status');
			$data['order_time'] = time();
				if(is_numeric($data['order_id'])){
					$data['status'] = '待审核订单号';
					$result = D('order')->save($data);
					if($result){
					$this->success('提交成功');
					}else{
					$this->error('提交失败');
					}
				}else{
					$this->error('单号必须是数字');
				}
		}
	}
	public function alipay(){
		$do = I('do');
		if(IS_POST && $do='myalipay'){
			$oldpassword = I('old_password');
			$alipay = I('alipay');
			$name = I('name');
			$passport = $this->_user_server();
            $result = $passport->edit($this->visitor->info['id'], $oldpassword, array('alipay'=>$alipay,'name'=>$name));
         
		             if ($result) {
                header('Content-type: text/html; charset=utf-8');
                die('<script language="javascript">alert("修改成功！");this.location.href="' . U('user/password') . '";</script>');
				exit($re);
            }
		}
				$this->_config_seo(array(
					'title' => '提现账号	-	' . C('ftx_site_name'),
				));
		$this->display();
	}

 
    /**
     * 用户登陆
     */
    public function login() {
        $this->visitor->is_login && $this->redirect('user/index');
        if (IS_POST) {
            $username = $this->_post('username', 'trim');
            $password = $this->_post('password', 'trim');
            $remember = $this->_post('remember');
            if (empty($username)) {
                IS_AJAX && $this->ajaxReturn(0, L('please_input').L('password'));
                $this->error(L('please_input').L('username'));
            }
            if (empty($password)) {
                IS_AJAX && $this->ajaxReturn(0, L('please_input').L('password'));
                $this->error(L('please_input').L('password'));
            }
            //连接用户中心
            $passport = $this->_user_server();
            $uid = $passport->auth($username, $password);
            if (!$uid) {
                IS_AJAX && $this->ajaxReturn(0, $passport->get_error());
                $this->error($passport->get_error());
            }
            //登陆
            $this->visitor->login($uid, $remember);

            //登陆完成钩子
            $tag_arg = array('uid'=>$uid, 'uname'=>$username, 'action'=>'login');
            tag('login_end', $tag_arg);
            //同步登陆
            $synlogin = $passport->synlogin($uid);
            if (IS_AJAX) {
                $this->ajaxReturn(1, L('login_successe').$synlogin);
            } else {
                //跳转到登陆前页面（执行同步操作）
                $from = $this->_post('from', 'trim');
				redirect( $from);
                $this->success(L('login_successe').$synlogin, $from);
            }
        } else {
            /* 同步退出外部系统 */
            if (!empty($_GET['synlogout'])) {
                $passport = $this->_user_server();
                $synlogout = $passport->synlogout();
            }
            if (IS_AJAX) {
                $resp = $this->fetch('dialog:login');
                $this->ajaxReturn(1, '', $resp);
            } else {
                //来路
                $from = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : __APP__;
                $this->assign('from', $from);
                $this->assign('synlogout', $synlogout);
				$this->_config_seo(array(
					'title' => C('ftx_site_name').'登录,登陆'. C('ftx_site_name').'    -    '.C('ftx_site_name'),
				));
                $this->display();
            }
        }
    }

    /**
     * 用户退出
     */
    public function logout() {
        $this->visitor->logout();
        //同步退出
        $passport = $this->_user_server();
        $synlogout = $passport->synlogout();
        //跳转到退出前页面（执行同步操作）
		redirect($_SERVER['HTTP_REFERER']);
        //$this->success(L('logout_successe').$synlogout, U('index/index'));
    }

    /**
     * 用户绑定
     */
    public function binding() {
        $user_bind_info = object_to_array(cookie('user_bind_info'));
        $this->assign('user_bind_info', $user_bind_info);
        $this->_config_seo();
        $this->display();
    }

    /**
    * 用户注册类型选择
    */
    public function bf_register() {
        $this->visitor->is_login && $this->redirect('user/index');
		$this->_config_seo(array(
			'title' => '注册	-	' . C('ftx_site_name'),
		));
        $this->display();
    }
    /**
    * 用户注册
    */
    public function register() {
        $this->visitor->is_login && $this->redirect('user/index');
        if (IS_POST) {
            //方式
            $login_type = $this->_post('type', 'trim', 'reg');
            if ($login_type == 'reg') {
                //验证
                $agreement = $this->_post('agreement');
                !$agreement && $this->error(L('agreement_failed'));

               // $captcha = $this->_post('captcha', 'trim');
                //if(session('captcha') != md5($captcha)){
                //    $this->error(L('captcha_failed'));
                //}
            }
            $username = $this->_post('username', 'trim');
            $email = $this->_post('email','trim');
            $login_type = $this->_post('login_type','trim');
            $qq = $this->_post('qq','trim');
            $password = $this->_post('password', 'trim');
            $repassword = $this->_post('repassword', 'trim');
            if ($password != $repassword) {
                $this->error(L('inconsistent_password')); //确认密码
            }
            $gender = $this->_post('gender','intval', '0');
            //用户禁止
            $ipban_mod = D('ipban');
            $ipban_mod->clear(); //清除过期数据
            $is_ban = $ipban_mod->where("(login_type='name' AND name='".$username."') OR (login_type='email' AND name='".$email."')")->count();
            $is_ban && $this->error(L('register_ban'));
            //连接用户中心
            $passport = $this->_user_server();
            //注册
            $uid = $passport->register($username, $password, $email, $gender, $login_type, $qq);
            !$uid && $this->error($passport->get_error());
            //第三方帐号绑定
            if (cookie('user_bind_info')) {
                $user_bind_info = object_to_array(cookie('user_bind_info'));
                $oauth = new oauth($user_bind_info['login_type']);
                $bind_info = array(
                    'ftx_uid' => $uid,
					'ftx_username' => $username,
                    'keyid' => $user_bind_info['keyid'],
                    'bind_info' => $user_bind_info['bind_info'],
                );
                $oauth->bindByData($bind_info);
                $this->_save_avatar($uid, $user_bind_info['temp_avatar']);
                cookie('user_bind_info', NULL);
            }
            $tag_arg = array('uid'=>$uid, 'uname'=>$username, 'action'=>'register');
            tag('register_end', $tag_arg);
			//邀请注册奖励
			$union_date = array('uid'=>$uid, 'username'=>$username);
			D('user')->union_reg($union_date);
            //登陆
            $this->visitor->login($uid);
            //登陆完成
            $tag_arg = array('uid'=>$uid, 'uname'=>$username, 'action'=>'login');
            tag('login_end', $tag_arg);
            //同步登陆
            $synlogin = $passport->synlogin($uid);
            $this->success(L('register_successe').$synlogin, U('user/index'));
        } else {
            //关闭注册
            if (!C('ftx_reg_status')) {
                $this->error(C('ftx_reg_closed_reason'));
            }
			$this->login_type = I('get.login_type');
		 /**	if(I('get.login_type')==1){
				$this->formtitle = '用户注册';
				$this->_config_seo(array(
					'title' => ' 用户注册	-	' . C('ftx_site_name'),
				));
			}elseif(I('get.login_type')==2){
				$this->formtitle = '商家注册';
				$this->_config_seo(array(
					'title' => ' 商家注册	-	' . C('ftx_site_name'),
				));
			}else{
				$this->redirect('user/bf_register');
			} */
            $this->display();
        }
    }

    /**
     * 第三方头像保存
     */
    private function _save_avatar($uid, $img) {
        //获取后台头像规格设置
        $avatar_size = explode(',', C('ftx_avatar_size'));
        //会员头像保存文件夹
        $avatar_dir = C('ftx_attach_path') . 'avatar/' . avatar_dir($uid);
        !is_dir($avatar_dir) && mkdir($avatar_dir,0777,true);
        //生成缩略图
        $img = C('ftx_attach_path') . 'avatar/temp/' . $img;
        foreach ($avatar_size as $size) {
            Image::thumb($img, $avatar_dir.md5($uid).'_'.$size.'.jpg', '', $size, $size, true);
        }
        @unlink($img);
    }
    
    /**
     * 用户消息提示 
     */
    public function msgtip() {
        $result = D('user_msgtip')->get_list($this->visitor->info['id']);
        $this->ajaxReturn(1, '', $result);
    }

    /**
    * 基本信息修改
    */
    public function index() {
        if( IS_POST ){
            foreach ($_POST as $key=>$val) {
                $_POST[$key] = Input::deleteHtmlTags($val);
            }
            $data['gender'] = $this->_post('gender', 'intval');
            $data['province'] = $this->_post('province', 'trim');
            $data['city'] = $this->_post('city', 'trim');
            $data['intro'] = $this->_post('intro', 'trim');
            $data['truename'] = $this->_post('truename', 'trim');
            $data['mobile'] = $this->_post('mobile', 'intval');
            $data['telephone'] = $this->_post('telephone', 'trim');
            $data['address'] = $this->_post('address', 'trim');
            $data['qq'] = $this->_post('qq', 'intval');
            $data['wangwang'] = $this->_post('wangwang', 'trim');
            $birthday = $this->_post('birthday', 'trim');
            $birthday = explode('-', $birthday);
            $data['byear'] = $birthday[0];
            $data['bmonth'] = $birthday[1];
            $data['bday'] = $birthday[2];
            if (false !== M('user')->where(array('id'=>$this->visitor->info['id']))->save($data)) {
                $msg = array('status'=>1, 'info'=>L('edit_success'));
            }else{
                $msg = array('status'=>0, 'info'=>L('edit_failed'));
            }
            $this->assign('msg', $msg);
        }
        $info = $this->visitor->get();
		$notice = M('article')->where(array('cate_id'=>'1'))->select();
		$this->assign('notice', $notice);
        $this->assign('info', $info);
        $this->_config_seo(array(
            'title' => L('base_setting') . '	-	' . C('ftx_site_name'),
        ));
        $this->display();
    }

    /**
     * 修改头像
     */
    public function upload_avatar() {
        if (!empty($_FILES['avatar']['name'])) {
            //会员头像规格
            $avatar_size = explode(',', C('ftx_avatar_size'));
            //回去会员头像保存文件夹
            $uid = abs(intval($this->visitor->info['id']));
            $suid = sprintf("%09d", $uid);
            $dir1 = substr($suid, 0, 3);
            $dir2 = substr($suid, 3, 2);
            $dir3 = substr($suid, 5, 2);
            $avatar_dir = $dir1.'/'.$dir2.'/'.$dir3.'/';
            //上传头像
            $suffix = '';
            foreach ($avatar_size as $size) {
                $suffix .= '_'.$size.',';
            }
            $result = $this->_upload($_FILES['avatar'], 'avatar/'.$avatar_dir, array(
                'width'=>C('ftx_avatar_size'), 
                'height'=>C('ftx_avatar_size'),
                'remove_origin'=>true, 
                'suffix'=>trim($suffix, ','),
                'ext' => 'jpg',
            ), md5($uid));
            if ($result['error']) {
                $this->ajaxReturn(0, $result['info']);
            } else {
                $data = __ROOT__.'/data/upload/avatar/'.$avatar_dir.md5($uid).'_'.$size.'.jpg?'.time();
                $this->ajaxReturn(1, L('upload_success'), $data);
            }
        } else {
            $this->ajaxReturn(0, L('illegal_parameters'));
        }
    }



    /**
     * 修改密码
    */
    public function password() {
        if (IS_POST) {
            $oldpassword = $this->_post('oldpassword', 'trim');
            $password = $this->_post('password', 'trim');
            $repassword = $this->_post('repassword', 'trim');
            !$password && $this->error(L('no_new_password'));
            $password != $repassword && $this->error(L('inconsistent_password'));
            $passlen = strlen($password);
            if ($passlen < 6 || $passlen > 20) {
                $this->error('password_length_error');
            }
			//连接用户中心
            $passport = $this->_user_server();
            $result = $passport->edit($this->visitor->info['id'], $oldpassword, array(
                'password' => $password
            ));
            if ($result) {
                header('Content-type: text/html; charset=utf-8');
                die('<script language="javascript">alert("修改成功！");this.location.href="' . U('user/password') . '";</script>');
            } else {
                $msg = array('status' => 0, 'info' => $passport->get_error() );
            }
            $this->assign('msg', $msg);
        }
        $this->_config_seo(array( 'title' => L('edit_password') . '	-	' . C('ftx_site_name') , ));
        $this->display();
    }
    public function union() {
        $info = $this->visitor->get();
        $union_url = C('ftx_site_url') . U('inval/index', array( 'id' => $info['id']));
        $share_url = '{\'url\':\'' . $union_url . '\'}';
        $union['per_visit'] = C('ftx_score_rule.union_visit');
        $union['count_visit'] = C('ftx_score_rule.union_visit') * C('ftx_score_rule.union_visit_nums');
        $union['per_reg'] = C('ftx_score_rule.union_reg');
        $union['count_reg'] = C('ftx_score_rule.union_reg') * C('ftx_score_rule.union_reg_nums');
        $this->assign('union', $union);
        $this->assign('union_url', $union_url);
        $this->assign('share_url', $share_url);
        $this->_config_seo(array(
            'title' => '邀请好友访问 -	' . C('ftx_site_name') ,
        ));
        $this->display();
    }
	
	/**
	 * 邀请好友
	 */
	public function unionlist() {
		$p = I('p',1);
		$page_size = 20;
		$start = $page_size * ($p - 1) ;
 
        $count = M('union')->where(array('uid'=>$this->visitor->info['id']))->count('id');
        $pager = $this->_pager($count, $page_size);


		$union_list = M('union')->field('id,uid,username,ip,score,ouid,ousername,add_time')->where(array('uid'=>$this->visitor->info['id']))->limit($start . ',' . $page_size)->order('add_time DESC')->select();
		$this->assign('union_list', $union_list);
		$this->assign('page', $pager->fshow());
		$this->_config_seo(array(
            'title' => L('user_union') . '	-	' . C('ftx_site_name'),
        ));
		$this->display();
	}
	
	 
	 public function gift() {
        $map = array();
        $map['uid'] = $this->visitor->info['id'];
        $score_order_mod = M('score_order');
		$p = I('p',1);
		$page_size = 20;
		$start = $page_size * ($p - 1) ;
 
        $count = $score_order_mod->where($map)->count('id');
        $pager = $this->_pager($count, $page_size);
        $order_list = $score_order_mod->where($map)->limit($start . ',' . $page_size)->order('id DESC')->select();
        $this->assign('order_list', $order_list);
        $this->assign('page', $pager->fshow());
        $this->_curr_menu('order');
        $this->_config_seo(array(
            'title' => L('my_gift') . '	-	' . C('ftx_site_name'),
        ));
        $this->display();
    }
	
	public function mingxi() {
        $map = array();
        $map['uid'] = $this->visitor->info['id'];
        //当前积分
        $score_total = $this->visitor->get('score');
        $score_log_mod = M('score_log');
        $pagesize = 15;
        $count = $score_log_mod->where($map)->count('id');
        $pager = $this->_pager($count, $pagesize);
        $logs_list = $score_log_mod->field('id,action,score,add_time')->where($map)->limit($pager->firstRow.','.$pager->listRows)->order('id DESC')->select();
        $this->assign('logs_list', $logs_list);
        $this->assign('page', $pager->fshow());
        $this->assign('score_total', $score_total);
        $this->_config_seo(array(
            'title' => L('user_score') . '	-	' . C('ftx_site_name'),
        ));
        $this->display();
    }
	
    /**
     * 帐号绑定
     */
    public function bind() {
        //获取已经绑定列表
        $bind_list = M('user_bind')->field('type')->where(array('uid'=>$this->visitor->info['id']))->select();
        $binds = array();
        if ($bind_list) {
            foreach ($bind_list as $val) {
                $binds[] = $val['type'];
            }
        }
        
        //获取网站支持列表
        $oauth_list = $this->oauth_list;
        foreach ($oauth_list as $type => $_oauth) {
            $oauth_list[$type]['isbind'] = '0';
            if (in_array($type, $binds)) {
                $oauth_list[$type]['isbind'] = '1';
            }
        }
        $this->assign('oauth_list', $oauth_list);
        $this->_config_seo(array(
            'title' => L('user_bind') . '	-	' . C('ftx_site_name'),
        ));
        $this->display();
    }

	public function like() {
		$p = I('p',1);
		$page_size = 20;
		$start = $page_size * ($p - 1) ;		
		$ids_list = D('items_like')->field('id,num_iid')->limit($start . ',' . $page_size)->where(array('uid'=>$this->visitor->info['id']))->order('id desc')->select();
		$ids=array(); 
		if($ids_list){
			foreach($ids_list as $val){
				$ids[] = $val['num_iid'];				
			}
		}
		$where['num_iid'] = array('in',$ids);
		$where['pass'] = '1';
		$items = D('items')->field('id,num_iid,ems,cu,title,price,coupon_price,pic_url,likes,status,coupon_start_time,coupon_end_time,shop_type,volume')->where($where)->select();
		$count = D('items_like')->where(array('uid'=>$this->visitor->info['id']))->count();
		$pager = $this->_pager($count, $page_size);
		foreach($items as $item){
			$item_list[$item['id']] = $item;
			$item_list[$item['id']]['class']	= D('items')->status($item['status'],$item['coupon_start_time'],$item['coupon_end_time']);
			$item_list[$item['id']]['zk'] = round(($item['coupon_price']/$item['price'])*10, 1); 
		}
		$this->assign('page', $pager->jshow());
		$this->assign('count', $count);
		$this->assign('items', $item_list);
		$this->_config_seo(array(
			'title' =>  '我的收藏	-	' . C('ftx_site_name'),
    ));
		$this->display();
	}

 

    /**
     * 检测用户
     */
    public function ajax_check() {
        $login_type = I('login_type', 'email', 'trim');
        $user_mod = D('user');
        switch ($login_type) {
            case 'email':
                $email = I('J_email','', 'trim');
                $user_mod->email_exists($email) ? $this->ajaxReturn(0) : $this->ajaxReturn(1);
                break;
            
            case 'username':
                $username = I('J_username','', 'trim');
                $user_mod->name_exists($username) ? $this->ajaxReturn(0) : $this->ajaxReturn(1);
                break;
        }
    }

	/**
	 * 收件箱
	 */
	public function msg(){
		$uid = $this->visitor->info['id'];
        $msg_mod = M('msg');
		$do = I('do','in','trim');
		//p($do);
		$tpl ='msg_in';
		if('in' == $do){
			$map['tuid']  = array('in',array($uid,'0'));//array('eq',array($uid,0),'OR');//$uid;
			$pagesize = 10;
			$count = $msg_mod->where($map)->order('id DESC')->count('id');
			$pager = $this->_pager($count, $pagesize);
			$msg_list = $msg_mod->where($map)->order('id DESC')->limit($pager->firstRow.','.$pager->listRows)->select();
			$this->assign('msg_list', $msg_list);
			$this->assign('page_bar', $pager->fshow());
			$tpl ='msg_in';
		}else if('out' == $do){
			$map['fuid']  = $uid;
			$pagesize = 10;
			$count = $msg_mod->where($map)->order('id DESC')->count('id');
			$pager = $this->_pager($count, $pagesize);
			$msg_list = $msg_mod->where($map)->order('id DESC')->limit($pager->firstRow.','.$pager->listRows)->select();
			$this->assign('msg_list', $msg_list);
			$this->assign('page_bar', $pager->fshow());
			$tpl ='msg_out';
		}else if('send' == $do){
			$tpl ='msg_send';
		}else if('savemsg' == $do){
			 
			$content = I('content');
			$data['fuid'] = $this->visitor->info['id'];
			$data['fname'] = $this->visitor->info['username'];
			$data['tuid'] = 999999;
			$data['tname'] = 'SYSTEM';
			$data['info'] = $content;
			$data['status'] = 0;
			$data['add_time'] = time();
			$msg_mod->add($data);
			$this->redirect('user/msg');
		}else if('del' == $do){
			$ids = I('ids');
			$t = I('t','in');
			foreach($ids as $id){
				$map['id'] = $id;
				if('in'){
					$map['tuid']  = $uid;
				}else if('out' == $t){
					$map['fuid']  = $uid;
				}
				$msg_mod->where($map)->delete();
			}
			$this->redirect('user/msg');
		}

        $this->_config_seo(array('title' => '站内信   -  ',));
		$this->display($tpl);
	}

	/**
	 * 快递
	 */
	public function kuaidi(){
		$this->_config_seo(array('title' => '快递查询   -  ',));
		$this->display();
	}

	public function avatar(){
		$this->display();
	}
 

}