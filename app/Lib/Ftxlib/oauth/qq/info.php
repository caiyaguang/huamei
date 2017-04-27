<?php

return array(
    'code'      => 'qq',
    'name'      => 'QQ登录',
    'desc'      => '申请地址：http://connect.qq.com/',
    'author'    => '华美网络',
    'version'   => '1.0',
    'config'    => array(
        'app_key'   => array(
            'text'  => 'APP ID',
            'desc'  => '申请：http://connect.qq.com/',
            'type'  => 'text',
        ),
        'app_secret'=> array(
            'text'  => 'APP KEY',
            'desc'  => '申请：http://connect.qq.com/',
            'type'  => 'text',
        )
    )
);