<?php
class orderModel extends Model
{
    public function checkTime() {
		$map['add_time'] = array('lt',time()-(86400*3));
		$map['status'] = '待填写订单号';
		$list = M('order')->where($map)->select();
		foreach($list as $key => $val){
		M('free')->where("id = ".$val['items_id'])->setInc('remain',1);
		}
		M('order')->where($map)->delete();
		$where['order_time'] = array('lt',time()-(86400*15));
		$where['status'] = '待审核订单号';
		$data = M('order')->where($where)->select();
		foreach($data as $key => $val){
			//自动返款
			$result = M('user')->where("id = ".$val['uid'])->setInc('money',$val['price']);
			//改变订单状态
			M('order')->where("id =".$val['id'])->setField('status','已返还');
			if($result){
			//增加财务记录
			$finance['uid'] = $val['uid'];
			$finance['money'] = $val['price'];
			$finance['add_time'] = time();
			$finance['memo'] = $val['title'].'返还款项【自动确认】';
			M('finance')->add($finance);
			}
		}
	}
}