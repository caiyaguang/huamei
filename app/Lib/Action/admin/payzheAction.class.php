<?php
class payzheAction extends BackendAction  {
    public function _initialize()
    {
        parent::_initialize();
        $this->_pageCount = 50; //每页显示数量
        $this->member = D('user');
        $this->payzhe = D('haopinzhefk');
        $this->payitems = D('payitems');
        $this->payaudithpz = D('payaudithpz');
    }

    public function index() {
        $count = $this->payzhe->count(); //总数
        $pager = new Page($count, $this->_pageCount); //对象
        $list = $this->payzhe->order('id desc')->limit($pager->firstRow.','.$pager->listRows)->select();
        // print_r($list);
        $username = array();
        $user = $this->member->select();
        foreach ($user as $key => $value) {
             $username[$value['id']] = $value['username'];
        }
        $this->assign('memberInfo',$username);
        $this->assign('list',$list);
        $this->assign("page", $pager->show());
        $this->display();

    }

    public function delete() {
        $id = I('id') ;
        $result = $this->payzhe->where(array('id'=>$id))->delete();
        if ($result) {
            $this->ajaxReturn(1,'删除成功！');
        } else  {
            $this->ajaxReturn(0,'删除失败！');
        }
    }

    public function edit() {
        $result = $this->payzhe->where(array('id'=>I('id')))->find();
        $this->assign('info',$result);
        $resp = $this->fetch('edit');
        $this->ajaxReturn(1, '', $resp);
    }

    public function subEdit() {
        if (IS_POST) {
            $id = I('id');
            $result =  $this->payzhe->where(array('id'=>$id))->save(array('status'=>I('status')));
            if ($result) {
                $this->success('操作成功');
            } else  {
                $this->error('操作失败');
            }
        }
    }

    public function setting ( )  {
        $this->display();
    }

    public function items() {

        $tree = new Tree();
        $tree->icon = array('│ ','├─ ','└─ ');
        $tree->nbsp = '&nbsp;&nbsp;&nbsp;';
        $result = $this->payitems->select();
        $array = array();
        foreach($result as $r) {
            $r['str_status'] = '<img data-tdtype="toggle" data-id="'.$r['id'].'" data-field="status" data-value="'.$r['status'].'" src="__STATIC__/images/admin/toggle_' . ($r['status'] == 0 ? 'disabled' : 'enabled') . '.gif" />';
            $r['str_manage'] = '
                                <a href="javascript:;" class="J_showdialog" data-uri="'.U('payzhe/payedit',array('id'=>$r['id'])).'" data-title="'.L('edit').' - '. $r['name'] .'" data-id="edit" data-width="500" data-height="20">'.L('edit').'</a> |
                                <a href="javascript:;" class="J_confirmurl" data-acttype="ajax" data-uri="'.U('payzhe/ajax_delete',array('id'=>$r['id'])).'" data-msg="'.sprintf(L('confirm_delete_one'),$r['name']).'">'.L('delete').'</a>';

            $r['parentid_node'] = ($r['pid'])? ' class="child-of-node-'.$r['pid'].'"' : '';
            $array[] = $r;
        }

        $str  = "<tr id='node-\$id' \$parentid_node>
                <td align='center'><input type='checkbox' value='\$id' class='J_checkitem'></td>
                <td align='center'>\$id</td>
                <td align='center'>\$spacer<span data-tdtype='edit' data-field='name' data-id='\$id' class='tdedit'  style='color:\$fcolor'>\$name</span></td>
                <td align='center'>
                    <span data-tdtype='edit' data-field='price' data-id='\$id' class='tdedit'>\$price</span>
                </td>
                <td align='center'><span data-tdtype='edit' data-field='days' data-id='\$id' class='tdedit'>\$days</span></td>
                <td align='center'>\$str_manage</td>
                </tr>";
        $tree->init($array);
        $list = $tree->get_tree(0, $str);
        
        $this->assign('list', $list);
        //bigmenu (标题，地址，弹窗ID，宽，高)
        $big_menu = array(
            'title' => L('add_item_cate'),
            'iframe' => U('payzhe/add'),
            'id' => 'add',
            'width' => '520',
            'height' => '80'
        );
        $this->assign('big_menu', $big_menu);
        $this->assign('list_table', true);
        $this->display();
    }

    /**
     * 添加子菜单上级默认选中本栏目
     */
    public function add() {
        $typeList = M('items_orig')->where(array('pass' => 1))->select();
        $this->assign('typeList', $typeList);
        $resp = $this->fetch('add');
        $this->ajaxReturn(1, '', $resp);
    }
    public function addSubmit() {
        if (IS_POST) {
            $type = I('type');
            $typewhere = '';
            if (!empty($type[0])) {
                $typewhere .=  $type[0].',';
            }
            if (!empty($type[1])) {
                $typewhere .=  $type[1].',';
            }
            if (!empty($type[2])) {
                $typewhere .=  $type[2];
            }
            $data['type']       = trim($typewhere,',');
            $data['status']     =I('status');
            $data['alipay']     = I('alipay');
            $data['requirement']=I('requirement');
            $data['booth']      = I('booth');
            $data['pic_url']    = I('pic_url');
            $data['paytype']    = I('paytype');
            $data['days']       = I('days');
            $data['price']      = I('price');
            $data['name']       = I('name');
            $result = $this->payitems->add($data);
            if ($result) {
                $this->success(L('operation_success'));
            } else {
                $this->error(L('operation_failure'));
            }
        }
    }

    // ajax修改
    public function ajax_edit() {
        $this->haopinAjax_edit('payitems');   
    }
    //ajax删除
    public function ajax_delete(){
        $this->haopinAjax_delete('payitems');
    }
    //修改
    public function payedit(){
        $id = I('id');
        $info =  $this->payitems->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $resp = $this->fetch('payedit');
        $this->ajaxReturn(1, '', $resp);
    }
    //提交修改
    public function editSubmitPay(){
        $id = I('id');
        if (!empty($id)) {
            $data['type']       = trim($typewhere,',');
            $data['status']     =I('status');
            $data['alipay']     = I('alipay');
            $data['requirement']=I('requirement');
            $data['booth']      = I('booth');
            $data['pic_url']    = I('pic_url');
            $data['paytype']    = I('paytype');
            $data['days']       = I('days');
            $data['price']      = I('price');
            $data['name']       = I('name');
            $result = $this->payitems->where(array('id'=>$id))->save($data);
             if ($result) {
                $this->success(L('operation_success'));
            } else {
                $this->error(L('operation_failure'));
            }
        }
    }

    /**
     * 上传二维码
     * @author HaoPinzhe
     */
    public function ajax_upload( ){
        if(!empty( $_FILES['img']['name'])){
            $result = $this->_upload( $_FILES['img'], "paytype/" );
            if ( $result['error']){
                $this->error( $result['info'] );
            }else{
                $data['img'] = $result['info'][0]['savename'];
                $this->ajaxReturn( 1, L( "operation_success" ), C( "ftx_attach_path" )."paytype/".$data['img'] );
            }
        }else{
            $this->ajaxReturn( 0, L( "illegal_parameters" ) );
        }
    }

    /**
     * 审核中心
     * @author HaoPinzhe
     */
    public function audit() {
        $tree = new Tree();
        $tree->icon = array('│ ','├─ ','└─ ');
        $tree->nbsp = '&nbsp;&nbsp;&nbsp;';
        $result = $this->payaudithpz->order('id desc')->select();
        $array = array();
        foreach($result as $r) {

            $r['str_status'] = '<img data-tdtype="toggle" data-id="'.$r['id'].'" data-field="status" data-value="'.$r['status'].'" src="__STATIC__/images/admin/toggle_' . ($r['status'] == 0 ? 'disabled' : 'enabled') . '.gif" title="点击直接审核通过[商品也会自动上线]" />';
            $r['str_manage'] = '
                                <a href="javascript:;" class="J_showdialog" data-uri="'.U('payzhe/paytypeEdit',array('id'=>$r['id'])).'" data-title="'.L('edit').' - '. $r['name'] .'" data-id="edit" data-width="500" data-height="20">'.L('审核').'</a> |
                                <a href="javascript:;" class="J_confirmurl" data-acttype="ajax" data-uri="'.U('payzhe/ajaxDeletepay',array('id'=>$r['id'])).'" data-msg="'.sprintf(L('confirm_delete_one'),$r['name']).'">'.L('delete').'</a>';

            $r['parentid_node'] = ($r['pid'])? ' class="child-of-node-'.$r['pid'].'"' : '';
            $array[] = $r;
        }

        $str  = "<tr id='node-\$id' \$parentid_node>
                <td align='center'><input type='checkbox' value='\$id' class='J_checkitem'></td>
                <td align='center'>\$id</td>
                <td align='center'>\$itemurl</td>
                <td align='center'>\$relname</td>
                <td align='center'>\$username</td>
                <td align='center'>\$typename</td>
                <td align='center' style='color: red'>\$typeprice</td>
                <td align='center'>\$alipay</td>
                <td align='center'>\$alipaynumber</td>
                <td align='center'>\$numberid</td>
                <td align='center'>\$str_status</td>
                <td align='center'>\$add_time</td>
                <td align='center'>\$str_manage</td>
                </tr>";
        $tree->init($array);
        $list = $tree->get_tree(0, $str);
        
        $this->assign('list', $list); 
        $this->assign('list_table', true);
        $this->display();
    }

    // ajax修改
    public function ajaxEditpay() {
        $this->haopinAjax_edit('payaudithpz',$app = '2');   
    }
    //ajax删除
    public function ajaxDeletepay(){
        $this->haopinAjax_delete('payaudithpz');
    }

    public function paytypeEdit() {
        $id = I('id');
        $this->assign('id',$id);
        $resp = $this->fetch('paytypeEdit');
        $this->ajaxReturn(1, '', $resp);
    }

    /**
     * @author HaoPinzhe 
     */
    public function paytypeEditSubmit() {
        $data['status'] = I('status','','trim');
        $data['id']    = I('id');
        $paytype  = I('paytype');  //2 1 0
        $where['id'] = $data['id'];
        $setField['status'] = $data['status'];

        $typeInfo = D('payaudithpz')->where($where)->find();

        if ($paytype == 0 || $paytype == 1 ) {
            $result['items'] = D('items')->where(array('id'=>$typeInfo['itemsId']))->setField('pass',$paytype);
        }

            $result['type'] = D('payaudithpz')->where($where)->setField($setField);
        if ($result['type']) {
            $this->success('操作成功');
        } else {
            $this->error('操作失败');
        }

    }

    //好品折新增修改方法 $module_name = 数据表名
    public function haopinAjax_edit($module_name , $app = '1'){
        $module_name = empty($module_name)?'404': $module_name;
        $zym_22 = D($module_name);
        $zym_34 = $zym_22->getPk();
        $zym_35 = $this->_get($zym_34, 'intval');
        $zym_31 = $this->_get('field', 'trim');
        $zym_20 = $this->_get('val', 'trim');
        $zym_22->where(array($zym_34 => $zym_35))->setField($zym_31, $zym_20);
        if ($app == '2') {
            $typeInfo = $zym_22->where(array('id'=>$zym_35))->find();
            $resultInfo = D('items')->where(array('id'=>$typeInfo['itemsId']))->setField('pass',$zym_20);
        }
        $this->ajaxReturn(1);
    }
    public function haopinAjax_delete( $module_name ) {
        $module_name = empty($module_name)?'404': $module_name;
        $zym_22 = D($module_name);
        $zym_34 = $zym_22->getPk();
        $zym_29 = trim($this->_request($zym_34), ',');
        if ($zym_29) {
            if (false !== $zym_22->delete($zym_29)) {
                IS_AJAX && $this->ajaxReturn(1, L('operation_success'));
                $this->success(L('operation_success'));
            } else {
                IS_AJAX && $this->ajaxReturn(0, L('operation_failure'));
                $this->error(L('operation_failure'));
            }
        } else {
            IS_AJAX && $this->ajaxReturn(0, L('illegal_parameters'));
            $this->error(L('illegal_parameters'));
        }
    }
    

}
 ?>