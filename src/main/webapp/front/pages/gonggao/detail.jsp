<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>公告详情页</title>
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <!-- 样式 -->
    <link rel="stylesheet" href="../../css/style.css"/>
    <!-- 主题（主要颜色设置） -->
    <link rel="stylesheet" href="../../css/theme.css"/>
    <!-- 通用的css -->
    <link rel="stylesheet" href="../../css/common.css"/>
    <link rel="stylesheet" href="../../xznstatic/css/bootstrap.min.css">
</head>
<style>
    #swiper {
        overflow: hidden;
    }
    #swiper .layui-carousel-ind li {
        width: 20px;
        height: 10px;
        border-width: 0;
        border-style: solid;
        border-color: rgba(0,0,0,.3);
        border-radius: 6px;
        background-color: #f7f7f7;
        box-shadow: 0 0 6px rgba(255,0,0,.8);
    }
    #swiper .layui-carousel-ind li.layui-this {
        width: 30px;
        height: 10px;
        border-width: 0;
        border-style: solid;
        border-color: rgba(0,0,0,.3);
        border-radius: 6px;
    }

    .index-title {
        text-align: center;
        box-sizing: border-box;
        width: 980px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    .layui-laypage .layui-laypage-count {
        padding: 0 10px;
    }
    .layui-laypage .layui-laypage-skip {
        padding-left: 10px;
    }

    .news-container .content {
        margin: 30px auto;
    }

    .news-container .btn-container {
        display: flex;
        align-items: center;
        box-sizing: border-box;
        width: 100%;
        flex-wrap: wrap;
        width: 980px !important;
        margin: 0 auto !important;
        justify-content: space-between !important;
    }
    .news-container .btn-container button i {
        margin-right: 4px;
    }</style>
<body>

    <div id="app">

        <div class="index-title sub_backgroundColor" :style='{"padding":"10px","boxShadow":"0 0 2px rgba(160, 67, 26, 1)","margin":"10px auto","borderColor":"rgba(0,0,0,.3)","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","borderWidth":"0","fontSize":"20px","borderStyle":"solid","height":"auto"}'>
            <span>NEWS / INFORMATION</span>
            <span>公告</span>
        </div>

        <div class="news-container">
            <h1 class="title">{{detail.gonggaoName}}</h1>
            <div class="auth-container">
                时间：{{detail.insertTime}}
            </div>
            <div style="width: 980px;margin: 0 auto">
                <img width="100%" :src="baseUrl+detail.gonggaoPhoto">
            </div>
            <div class="content" style="word-break: break-all;" v-html="myFilters(detail.gonggaoContent)">
            </div>
            <div class="btn-container main_backgroundColor"  :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"10px 0 10px 0","borderColor":"rgba(0,0,0,.3)","borderRadius":"4px","alignItems":"center","borderWidth":"0","borderStyle":"solid","justifyContent":"flex-end","height":"64px"}'>
                <div class="title" style="font-size: 18px;color:#999;">
                    本篇文章：{{detail.gonggaoName}}
                </div>
                <button class="main_backgroundColor" :style='{"padding":"0 15px","boxShadow":"0 0 8px rgba(0,0,0,0)","margin":"0 0 0 10px","borderColor":"rgba(135, 206, 250, 1)","color":"#fff","borderRadius":"4px","borderWidth":"0","width":"auto","fontSize":"14px","borderStyle":"solid","height":"40px"}' onclick="back()" type="button" class="layui-btn layui-btn-lg btn-theme">
                    <i v-if="true" class="layui-icon">&#xe65c;</i> 返回列表
                </button>
            </div>
        </div>    </div>


    <script src="../../layui/layui.js"></script>
    <script src="../../js/vue.js"></script>
    <!-- 引入element组件库 -->
    <script src="../../xznstatic/js/element.min.js"></script>
    <!-- 引入element样式 -->
    <link rel="stylesheet" href="../../xznstatic/css/element.min.css">
    <!-- 组件配置信息 -->
    <script src="../../js/config.js"></script>
    <!-- 扩展插件配置信息 -->
    <script src="../../modules/config.js"></script>
    <!-- 工具方法 -->
    <script src="../../js/utils.js"></script>

    <script>
        Vue.prototype.myFilters= function (msg) {
            if(msg != null){
                return msg.replace(/\n/g, "<br>");
            }else{
                return "";
            }
        };
        var vue = new Vue({
            el: '#app',
            data: {
                //当前登录用户信息
                user:{},
                // 轮播图
                swiperList: [],//用于当前表的图片
                // 数据详情
                detail: {
                    id: 0
                },
                // 商品标题
                title: '',
                totalScore: 0,//评分
                baseUrl:"",//路径
                storeupFlag: 0,//收藏 [0为收藏 1已收藏]
                //系统推荐
                gonggaoRecommendList: [],
                    // 当前详情页表
                detailTable: 'gonggao',
            },
            methods: {
                //分享
                share(){
                    let element = createElement("http://localhost:8080/wangluozaixiankaoshi/front/index.jsp?url="+"./pages/gonggao/detail.jsp?id="+this.id);
                    element.select();
                    element.setSelectionRange(0, element.value.length);
                    document.execCommand('copy');
                    element.remove();
                    layui.layer.msg('复制分享页面成功,快去分享吧!', {time: 2000,icon: 6});
                },

                jump(url) {
                    jump(url)
                },
                isAuth(tablename, button) {
                    return isFrontAuth(tablename, button)
                },
                //预约
                gonggaoYuyue(){
                    let _this = this;
                    var mymessage = confirm("确定要预约吗？");if(!mymessage){return false;}
                    // localStorage.setItem('gonggaoId', _this.detail.id);
                    // _this.jump("../gonggaoOrder/add.jsp");

                    let data={
                        gonggaoId:_this.detail.id,
                        yonghuId:localStorage.getItem("userid"),
                        gonggaoOrderYesnoTypes:1,
                    }
                    // 提交数据
                    layui.http.requestJson('gonggaoOrder/add', 'post', data, function (res) {
                        if(res.code == 0) {
                            layui.layer.msg('预约成功', {
                                time: 2000,
                                icon: 6
                            }, function () {
                                _this.jump("../gonggaoOrder/list.jsp");
                            });
                        }else{
                            layui.layer.msg(res.msg, {
                                time: 5000,
                                icon: 5
                            });
                        }
                    });
                },

                }
        });

        layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage', 'util'], function () {
            var layer = layui.layer;
            var util = layui.util;
            var element = layui.element;
            var form = layui.form;
            var carousel = layui.carousel;
            var http = layui.http;
            var jquery = layui.jquery;
            var laypage = layui.laypage;
            vue.baseUrl = http.baseurl

            localStorage.setItem("goUtl","./pages/gonggao/detail.jsp?id="+ http.getParam('id'))

            var limit = 10;

            let table = localStorage.getItem("userTable");
            if(table){
                http.request(table+"/session", 'get', {}, function (data) {
                    vue.user = data.data;
                });
            }

            // 数据ID
            var id = http.getParam('id');
            vue.detail.id = id;
            // 详情信息
            http.request('gonggao/detail/' + id, 'get', {}, function(res) {
                vue.detail = res.data;
                vue.title = vue.detail.gonggaoName;
                    vue.detail.gonggaoContent = vue.detail.gonggaoContent.replaceAll("src=\"upload/","src=\""+vue.baseUrl+"upload/").replaceAll(/<img/g,'<img style="width: 100%;"');
            });
        });
    </script>
</body>
</html>
