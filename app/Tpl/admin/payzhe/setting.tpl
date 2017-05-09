<include file="public:header" />
<!--模板样式-->
<div class="subnav">
    <h1 class="title_2 line_x">在线客服设置</h1>
</div>

<div class="pad_lr_10">
<form id="info_form" action="{:u('setting/edit')}" method="post">
    <table width="100%" class="table_form contentWrap">
        <tr>
            <th width="100"></th>
            <td>
   <!--              <label><input type="radio" <if condition="C('ftx_kefu_open') eq '1'">checked="checked"</if> value="1" name="setting[kefu_open]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" <if condition="C('ftx_kefu_open') eq '0'">checked="checked"</if> value="0" name="setting[kefu_open]"> {:L('close')}</label> -->
            </td>
        </tr>


        <tr>
                <th>卖家退款客服1 :</th>
                <td>
                <input type="text" name="setting[tuikuan_Kefu]" size="20" class="input-text" value="{:C('ftx_tuikuan_Kefu')}" />
                &nbsp;    <span class="gray">退款客服1 QQ </span>
            </td>
        </tr>
        <tr>
                <th>卖家退款客服2 :</th>
                <td>
                <input type="text" name="setting[tuikuan_Kefu2]" size="20" class="input-text" value="{:C('ftx_tuikuan_Kefu2')}" />
                &nbsp;    <span class="gray">退款客服1 QQ </span>
            </td>
        </tr>
        <tr>
                <th>卖家退款客服3 :</th>
                <td>
                <input type="text" name="setting[tuikuan_Kefu3]" size="20" class="input-text" value="{:C('ftx_tuikuan_Kefu3')}" />
                &nbsp;    <span class="gray">退款客服1 旺旺 </span>
            </td>
        </tr>
        <tr>
                <th>卖家退款客服4 :</th>
                <td>
                <input type="text" name="setting[tuikuan_Kefu4]" size="20" class="input-text" value="{:C('ftx_tuikuan_Kefu4')}" />
                &nbsp;    <span class="gray">退款客服1 旺旺 </span>
            </td>
        </tr>





        <tr>
                <th></th>
                <td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/></td>
            </tr>
    </table>
</form>
</div>
<include file="public:footer" />
</body>
</html>