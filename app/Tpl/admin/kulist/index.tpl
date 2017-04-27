<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">获取阿里妈妈后台选品库 教程<a href="http://bbs.138gzs.com/thread-8446-1-1.html" target="_blank">http://bbs.138gzs.com/thread-8446-1-1.html</a></h1>
</div>

<style>
.add{background: url(/static/css/admin/bgimg/btn_total.gif) no-repeat;color: #FFF;cursor: pointer;display: block;float:right;font-size: 14px;font-weight: bold;height: 30px;line-height: 28px;line-height: 32px \9;padding-bottom: 2px;margin-top:-1px;text-align: center;width: 104px;border: none medium;}
.add:hover{background-position: 0 -34px;text-decoration: none;}
</style>
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
          <tr>
          <td>
          <div class="explain_col"> 	
		  <input type="hidden" name="g" value="admin" />
		  <input type="hidden" name="m" value="kulist" />
		  <input type="hidden" name="a" value="index" />
		  <input type="hidden" name="menuid" value="{$menuid}" />		  
		  &nbsp;&nbsp;排序:
		  <select name="type">
		  <option value="-1" <if condition="$so.type eq '-1'">selected="selected"</if>>全部</option>
		  <option value="1" <if condition="$so.type eq '1'">selected="selected"</if>>普通</option>
		  <option value="2" <if condition="$so.type eq '2'">selected="selected"</if>>高佣</option>			
		  </select>		 
		  <input type="submit" value="获取列表" class="add fb">	
          </div>				 
          </td>		  
          </tr>	
          		  
        </tbody>
    </table>
    </form>
<div class="pad_lr_10" >
        <div class="J_tablelist table_list">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>               
                <th width="20">ID</th>               
                <th width="100">选品库标题</span></th>    
				<th width="70">选品库ID</span></th>
                <th width="70">选品库类型</th>				               
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
         <volist name="list" id="val" key="i" mod="4"> 
            <tr>                
                <td align="center">{$val.id}</td>                
                <td align="center">{$val.title}</td>
                <td align="center">{$val.eventId}</td>
                <td align="center">{$val.type}</td> 
				<td align="center"><a class="showdialog" href="javascript:getck({$val.eventId});" data-uri="{:U('kulist/caiji',array('eventId'=>$val['eventId']))}" data-title="采集" data-id="caiji" data-width="500" data-height="180">采集</a></td>                			
            </tr>
            </volist>
        </tbody>
    </table>
    </div>

    <div class="btn_wrap_fixed">      
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
<script>
var get_url = "{:U('kulist/caiji')}";
function getck(id){
		$.getJSON(get_url, {id:id}, function(result){
            if(result.status == 1){
                $.dialog({id:'caiji', title:result.msg, content:result.data, padding:'', lock:true});
            }else{
                $.yangtata.tip({content:result.msg, icon:'alert'});
            }
        });
    }
</script>
</body>
</html>