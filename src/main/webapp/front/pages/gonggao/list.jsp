    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <title>公告</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <link rel="stylesheet" href="../../xznstatic/css/common.css"/>
    <link rel="stylesheet" href="../../xznstatic/css/style.css"/>
    <script type="text/javascript" src="../../xznstatic/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../../xznstatic/js/jquery.SuperSlide.2.1.1.js"></script>
    <link rel="stylesheet" href="../../xznstatic/css/bootstrap.min.css" />

    <link rel="stylesheet" href="../../css/theme.css"/>
</head>
<style>
    .list-item1B {
        flex: 0 0 100%;
    }
    .list-item2B {
        flex: 0 0 50%;
    }
    .list-item3B {
        flex: 0 0 32%;
    }
    .list-item4B {
        flex: 0 0 24%;
    }
    .list-item5B {
        flex: 0 0 20%;
    }

    ul.short_ls li a {
        color: #333;
        text-decoration: none;
    }

    ul.short_ls li {
        list-style: none;
        display: inline-block;
        letter-spacing: 1px;
        font-size: 14px;
    }

    .blog_section {
        margin-bottom: 58px;
    }

    .blog_img-3:nth-child(2) {
        margin: 35px 0;
    }

    .blog_con {
        box-shadow: 0px 1px 4px 1px rgba(0, 0, 0, 0.15);
        background: #fff;
    }

    .event-right.wthree-event-right {
        width: 70%;
        margin: 0 auto;
    }

    .event-right.wthree-event-right {
        width: 96%;
    }

    .event-right.wthree-event-right {
        width: 85%;
    }

    .event-right.wthree-event-right {
        width: 100%;
    }

    .tags1 h3{
        font-size: 25px;
        color: #212121;
        position: relative;
        letter-spacing: 1px;
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.27);
        font-weight: 500;
    }

    .tags1 {
        margin-top: 30px;
    }

    .tags1 {
        padding: 30px;
        border: 1px solid rgba(56, 54, 54, 0.32);
        background: #fff;
    }

    .tags1 ul {
        padding: 5px 0 0 0 !important;
        margin-bottom: 10px !important;
    }

    .tags ul li {
        margin: 2px 0;
        display: inline-block;
    }

    .tags ul li a {
        padding: 7px 10px;
        border: 1px solid rgba(153, 153, 153, 0.4);
        color: #212121;
        text-decoration: none;
        margin: 0 5px 0 0em;
        display: block;
        font-size: 14px;
    }

    .thisTableType-search-hover {
        background-color: var(--publicMainColor);
        border: 1px solid var(--publicMainColor);
        color: #fff;
    }

    .thisTableErjiType-search-hover {
        background-color: var(--publicMainColor);
        border: 1px solid var(--publicMainColor);
        color: #fff;
    }

    @media (max-width: 1080px) {
        .posts, .categories, .tags1 {
            padding: 20px;
        }
    }

    .button-submit {
        font-family: 'Montserrat', sans-serif;
        transition: 0.5s all;
        -webkit-transition: 0.5s all;
        -moz-transition: 0.5s all;
        -o-transition: 0.5s all;
        -ms-transition: 0.5s all;
        letter-spacing: 1px;
    }

    .button-submit {
        transition: 0.5s all;
        -webkit-transition: 0.5s all;
        -moz-transition: 0.5s all;
        -o-transition: 0.5s all;
        -ms-transition: 0.5s all;
        letter-spacing: 1px;
        font-family: 'Montserrat', sans-serif;
    }

    .event-right .button-submit{
        width: 100px;
        outline: none;
        padding: 12px 12px;
        text-align: center;
        color: #fff;
        border: none;
        font-size: 1em;
        margin: 1em 0 0;
        letter-spacing: 1px;
        background: #111;
    }

    .event-right .button-submit:hover {
        background: var(--publicMainColor);
    }

    .event-right .search-input {
        margin: 5px 0;
        outline: none;
        padding: 12px;
        text-align: center;
        color: #333;
        border: 1px solid rgba(56, 54, 54, 0.32);
        font-size: 16px;
        width: 100%;
        background: #fff;
        letter-spacing: 1px;
    }

    input::-webkit-input-placeholder {
        color: #333 ;
    }    .news22 .new_box ul li{
        width: 100%;
        height: 224px;
        background: #EEEDF1;
        margin-bottom: 10px;
    }
    .news22 .new_box ul li .new_p .p1{
        font-size: 36px;
        color: #333;
        margin-top: 35px;
        margin-bottom: 20px;
    }
    .news22 .new_box ul li .new_p .p1 span{
        font-size: 16px;
        color: #666;
    }
    .news22 .new_box ul li .new_p .p2{
        font-size: 20px;
        color: #333;
        margin-bottom: 10px;
    }
    .news22 .new_box ul li .new_p .p3{
        font-size: 14px;
        color: #333;
        line-height: 30px;
    }
    .news22 .new_box ul li:hover{
        background: var(--publicMainColor,orange);
    }
    .news22 .new_box ul li:hover .new_p .p1,
    .news22 .new_box ul li:hover .new_p .p1 span,
    .news22 .new_box ul li:hover .new_p .p2,
    .news22 .new_box ul li:hover .new_p .p3{
        color: #fff ;
    }
</style>
<body class='bodyClass'>
<div id="app">
    <el-dialog title="弹出内容" :visible.sync="showContentModal" :modal-append-to-body="false">
        <div class="content" style="word-break: break-all;" v-html="showContent">
        </div>
        <div slot="footer" class="dialog-footer">
            <el-button @click="showContentModal = false">关 闭</el-button>
        </div>
    </el-dialog>
<section class="blog-one ">
    <div class="container py-3">
        <!-- left side -->
        <div class="row">
            <!--数据展示方式  开始-->
            <div style="width: 760px;margin-top: 13px">
                                        <div class="news22" style="height: auto;overflow:hidden;margin: 0 auto;text-align: center;">
                <div style="width: 100%;height: auto;overflow: hidden;" class="new_box">
                    <ul style="width: 100%;height: auto;overflow: hidden;margin-top: 40px;">
                        <a @click="jump('../gonggao/detail.jsp?id='+item.id);" v-for="(item,index) in dataList">
                            <li>
                                <img :src="baseUrl+item.gonggaoPhoto" style="float: left;display: block;height:221px;width:20%;" v-if="index%2==0"/>
                                <img :src="baseUrl+item.gonggaoPhoto" style="float: right;display: block;height:221px;width:20%;" v-if="index%2==1"/>
                                <div class="new_p" style="width: 75%;float: right;text-align: left;margin-left: 25px;">
                                    <p class="p1">{{item.insertTime.split(' ')[0]}}<span>{{item.insertTime.split(' ')[1]}}</span></p>
                                    <p class="p2">{{item.gonggaoName}}</p>
                                    <p class="p3">{{myFilters(item.gonggaoContent)}}</p>
                                </div>
                            </li>
                        </a>
                    </ul>
                </div>
            </div>
                <div class="pager" id="pager" :style="{textAlign:'center'}"></div>
            </div>
            <!--数据展示方式  结束-->

            <div class="col-lg-4 event-right wthree-event-right">
                <ul class="short_ls" style="margin: 5px">
                    <li style="font-size: 20px">
                        <a href="../home/home.jsp">首页</a>
                        <span>/</span>
                    </li>
                    <li>公告</li>
                </ul>
                <form>
         
                <input type="text" v-model="searchForm.gonggaoName" placeholder="公告名称" autocomplete="off"
                       class="search-input">         
                                <div style="display: flex;justify-content: space-evenly;align-items: center;">
                        <div id="btn-search" class="button-submit"><i class="layui-icon layui-icon-search"></i>搜索</div>
                        <div v-if="isAuth('gonggao','新增')"  @click="jump('../gonggao/add.jsp')" class="button-submit"><i class="layui-icon">&#xe654;</i>添加</div>
                    </div>
                </form>
                <div class="tags tags1">
                    <h3>公告类型</h3>
                    <ul>
                        <li class="thisTableType-search">
                            <a :class='searchForm.gonggaoTypes=="" || searchForm.gonggaoTypes==null?"thisTableType-search-hover":""'>全部</a>
                        </li>
                        <li v-for="(item,index) in gonggaoTypesList" :key="item.codeIndex" :index="item.codeIndex" class="thisTableType-search" >
                            <a :class='searchForm.gonggaoTypes==item.codeIndex?"thisTableType-search-hover":""'>{{item.indexName}}</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section></div>

<script src="../../xznstatic/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../xznstatic/js/echarts.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../layui/layui.js"></script>
<script src="../../js/vue.js"></script>
<!-- 引入element组件库 -->
<script src="../../xznstatic/js/element.min.js"></script>
<!-- 引入element样式 -->
<link rel="stylesheet" href="../../xznstatic/css/element.min.css">
<script src="../../js/config.js"></script>
<script src="../../modules/config.js"></script>
<script src="../../js/utils.js"></script>

<script type="text/javascript">
    Vue.prototype.myFilters = function (msg) {
        if(msg==null || msg==""){
            return "";
        }else if (msg.length>20){
            msg.replace(/\n/g, "<br>");
            return msg.substring(0,30)+"......";
        }else{
            return msg.replace(/\n/g, "<br>");
        }
    };
    var vue = new Vue({
        el: '#app',
        data: {
            userId: localStorage.getItem("userid"),//当前登录人的id
            sessionTable: localStorage.getItem("userTable"),//登录账户所在表名
            role: localStorage.getItem("role"),//权限
            user:{},//当前登录用户信息
            //小菜单
            centerMenu: centerMenu,
            //项目路径
            baseUrl:"",
            //弹出内容模态框
            showContentModal:false,
            showContent:"",
            gonggaoTypesList: [],
            //查询条件
            searchForm: {
                page: 1
                ,limit: 8
                ,sort: "id"//字段
                ,order: "desc"//asc desc
                        ,gonggaoName: ""
                ,gonggaoPhoto: ""
                ,gonggaoTypes: ""
                ,gonggaoContent: ""
            },

            dataList: [],
        },
        filters: {
            subString: function(val) {
                if (val) {
                    val = val.replace(/<[^<>]+>/g, '').replace(/undefined/g, '');
                    if (val.length > 60) {
                        val = val.substring(0, 60);
                        val+='...';
                    }
                    return val;
                }
                return '';
            }
        },
        computed: {
        },
        methods: {
            isAuth(tablename, button) {
                return isFrontAuth(tablename, button);
            },
            jump(url) {
                jump(url);
            },
            jumpCheck(url,check1,check2) {
                if(check1 == "2" || check1 == 2){//级联表的逻辑删除字段[1:未删除 2:已删除]
                    layui.layer.msg("已经被删除", {
                        time: 2000,
                        icon: 2
                    });
                    return false;
                }
                if(check2 == "2"  || check2 == 2){//是否下架[1:上架 2:下架]
                    layui.layer.msg("已经下架", {
                        time: 2000,
                        icon: 2
                    });
                    return false;
                }
                this.jump(url);
            },
            showContentFunction(content) {
                this.showContentModal=true;
                this.showContent=content.replaceAll("src=\"upload/","src=\""+this.baseUrl+"upload/");
            },
            wuyong(id) {
                var mymessage = confirm("确定要    吗？");if(!mymessage){return false;}
                layui.http.requestJson(`gonggao/update`, 'post', {
                    id:id,
//                    gonggaoTypes:1,
                }, function (res) {
                    if(res.code == 0){
                        layui.layer.msg('操作成功', {time: 2000, icon: 6 }, function () {window.location.reload();});
                    }else{
                        layui.layer.msg(res.msg, {time: 5000,icon: 5});
                    }
                });
            },
            deleteData(data){
                var mymessage = confirm("确定要删除这条数据吗？");
                if(!mymessage){
                    return false;
                }
                // 删除信息
                layui.http.requestJson(`gonggao/delete`, 'post', [data.id], (res) => {
                    if(res.code==0){
                        layer.msg('操作成功', {
                            time: 2000,
                            icon: 6
                        });
                        window.location.reload();
                    }else{
                        layer.msg(res.msg, {
                            time: 2000,
                            icon: 2
                        });
                    }
                });
            },

        }
    });

    layui.use(['layer', 'element', 'carousel', 'laypage', 'http', 'jquery', 'laydate', 'tinymce'], function() {
        var layer = layui.layer;
        var element = layui.element;
        var carousel = layui.carousel;
        var laypage = layui.laypage;
        var http = layui.http;
        var laydate = layui.laydate;
        var tinymce = layui.tinymce;
        window.jQuery = window.$ = jquery = layui.jquery;

        localStorage.setItem("goUtl","./pages/gonggao/list.jsp")

        vue.baseUrl = http.baseurl

        let table = localStorage.getItem("userTable");
        if(table){
            http.request(table+"/session", 'get', {}, function (data) {
                vue.user = data.data;
            });
        }



        //公告类型的动态搜素
        $(document).on("click", ".thisTableType-search", function (e) {
            vue.searchForm.gonggaoTypes = $(this).attr('index');
            pageList();
        });


            //当前表的 公告类型 字段 字典表查询
            gonggaoTypesSelect();
                                           //当前表的 公告类型 字段 字典表查询方法
           function gonggaoTypesSelect() {
               http.request("dictionary/page?page=1&limit=100&sort=&order=&dicCode=gonggao_types", 'get', {}, function (res) {
                   if(res.code == 0){
                       vue.gonggaoTypesList = res.data.list;
                   }
               });
           }
                        

            // 分页列表
            pageList();

            // 搜索按钮
            jquery('#btn-search').click(function (e) {
                pageList();
            });

            function pageList() {
                // 获取列表数据
                http.request('gonggao/list', 'get', vue.searchForm, function (res) {
                    vue.dataList = res.data.list;
                    // 分页
                    laypage.render({
                        elem: 'pager',
                        count: res.data.total,
                        limit: vue.searchForm.limit,
                        groups: 3,
                        layout: ["prev", "page", "next"],
                        jump: function (obj, first) {
                            vue.searchForm.page = obj.curr;//翻页
                            //首次不执行
                            if (!first) {
                                http.request('gonggao/list', 'get', vue.searchForm, function (res1) {
                                    vue.dataList = res1.data.list;
                                })
                            }
                        }
                    });
                });
            }
    });

    window.xznSlide = function () {
        jQuery(".banner").slide({mainCell: ".bd ul", autoPlay: true, interTime: 5000});
        jQuery("#ifocus").slide({
            titCell: "#ifocus_btn li",
            mainCell: "#ifocus_piclist ul",
            effect: "leftLoop",
            delayTime: 200,
            autoPlay: true,
            triggerTime: 0
        });
        jQuery("#ifocus").slide({titCell: "#ifocus_btn li", mainCell: "#ifocus_tx ul", delayTime: 0, autoPlay: true});
        jQuery(".product_list").slide({
            mainCell: ".bd ul",
            autoPage: true,
            effect: "leftLoop",
            autoPlay: true,
            vis: 5,
            trigger: "click",
            interTime: 4000
        });
    };
</script>
</body>
</html>
