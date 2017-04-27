KISSY.use('uri,node', function(S,Uri,Node){

    function returnJson(s) {
        return (new Function('return ' + s))();
    }

    var pageConfig = returnJson("{version:'0.17.01', root:'http://g.tbcdn.cn/mm/yellowstone'}");
    
    var uri = new Uri(window.location.href);
    
    var DEBUG = window.DEBUG || pageConfig.debug; //false
    if(uri.getQuery().get('debug')){
        DEBUG = true;
    }
    
    // DEBUG = true;
    //pageConfig.root = 'http://local.taobao.com/gitlib/yellowstone';
    
    //css文件拆分
    if(DEBUG){
        var link = S.all('link');
        S.each(link, function(item){
            var linkNode = Node(item);
            var href = linkNode.attr('href');
            if(href.indexOf('??') > 0){
                split_link(href);
                linkNode.remove();
            }
        });
    }

    function split_link(href){
        var url  = href.split('??');
        var subUrl = url[1].split(',');
        S.each(subUrl, function(item){
            var linkNode = Node('<link rel="stylesheet" type="text/css"/>');
            linkNode.attr('href', url[0] + item);
            S.one('head').append(linkNode);
        });
    }

    var version = '0.17.01';
    
    var kConfig = {
        packages:[
            {
                name : "app",
                tag : "20.4.245",
                path : "http://g.tbcdn.cn/mm/yellowstone/0.17.01",
                charset : "utf-8"
            },
            {
                name : "blackstone_components",
                tag : "20130711",
                path : "http://g.tbcdn.cn/mm/yellowstone/0.17.01",
                charset : "utf-8"
            }

        ],
        modules:{
          io:{
            alias:['ajax']
          }
        }
    };
    
    if(DEBUG){
        S.mix(kConfig, {
            combine:false,
            map:[
                [/(.+app\/.+)-min.js(\?[^?]+)?$/, "$1.js$2"],
                [/(.+components\/.+)-min.js(\?[^?]+)?$/, "$1.js$2"],
                [/(.+ai_pub\/.+)-min.js(\?[^?]+)?$/, "$1.js$2"],
                [/(.+blackstone_components\/.+)-min.js(\?[^?]+)?$/, "$1.js$2"]
            ],
            debug: true
        });
        
    }else{
        S.mix(kConfig, {
            combine:true
        });
    }
    // debugger
    KISSY.config(kConfig);
    /*
    Brix.config({
        autoPagelet:true,
        componentsPath: pageConfig.root + '/0.11.0/', 
        tag: '20.4.245'
    });
    */
});
KISSY.use('uri,node',function(S,Uri, Node){
    var pageURI = new Uri(window.location.href);
    var pid = pageURI.getQuery().get('pid');
    if(pid){
        if(S.isArray(pid)){
            pid = pid[0];
        }
        window['PID'] = pid;
    }

    function appendTrack(href){
        var check = ['PID', 'UNID', 'SOURCE_ID', 'APP_PVID'];
        // debugger
        var q = href.match(/q=[^&]*/);
        var furl = new Uri(href);
        var query = furl.getQuery();
        S.each(check, function(item){
            var lower = item.toLocaleLowerCase();
            query.set(lower, window[item] || '');
        });
        furl = furl.setQuery(query);
        furl = furl.toString();
        furl = furl.replace(/q=[^&]*/, q);
        return furl;
    }

    function paerntANode(node){

    }

    Node(document).on('click',function(e){
        var node = Node(e.target);

        if(node.attr('hasBindPid')) {
            return;
        }

        if(e.target.tagName.toLocaleLowerCase() != 'a'){
            var node = node.parent('a');//查找是否在a标签内
            if(!node){
                return; //不是在点击链接内
            }
        }

        var href = new Uri(node.attr('href'));
        if( !href.path){
            //空连接
            return;
        }
        if(href.hostname.indexOf('redirect.simba.taobao.com') > -1){
            //跳转链接
            var _href = href.getQuery().get('f');
            // debugger
            var _uri = new Uri(_href);

            _href = appendTrack(_href);
            //_href = decodeURIComponent(_href);
            var query = href.getQuery();
            query.set('f', _href);
            query.set('pid', window.PID);
            query.set('p', window.PID);
            query.set('unid', window.UNID);
            query.set('source_id', window.SOURCE_ID);
            if( window.PVID && !query.get('pvid')){
                query.set('pvid', window.PVID);
            }
            href.setQuery(query);
            node.attr('href', href.toString());
            
            // if(_uri.hostname.indexOf('taobao.com') > -1){
                
            // }
        }else{
            //正常链接
            node.attr('href', appendTrack(node.attr('href')));
        }

        node.attr('hasBindPid', true);
    });
    
    S.ready(function(){
        //从页面中读取pvid
        if( S.one('#J_hidden_pvid') ){
            window.PVID = S.one('#J_hidden_pvid').val();
            window.APP_PVID = window.PVID;
        }
    });


    //发送日志请求
    window.LogApi = {
        send: function(data){
            // var params = S.param(data);
            var params = [];
            for(var i in data){
                if(i == 'extra'){
                    data[i] = encodeURIComponent(data[i]);
                }
                params.push(i + '=' + data[i]);
            }
            var img = new Image();
            img.src = 'http://gm.mmstat.com/aitaobao.1.1?' + params.join('&');
        },

        sendShow: function(data){
            data.acookie =  data.acookie || window.acookie || '';
            data.app_pvid = data.app_pvid || window.pvid || window.PVID || '';
            data.log_type = data.log_type || 'exposure';
            data.time = new Date().getTime();
            data.pid = data.pid || window.PID || '';
            LogApi.send(data);
        }
    };
    

    if(window.top != window){
        (function(){
            function writeTip(){
                document.body.innerHTML = '';
                document.write("您访问的页面无法显示");    
                setTimeout(writeTip, 1000);
            }

            if(window.LogApi){
                var data = {};
                data.log_type = "iframe";
                window.LogApi.sendShow(data);
            }
            writeTip();

        })();
    }
});
