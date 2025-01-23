<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }

            ,{
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                    ,
                    {
                        "buttons":[
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"科目管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryKemu"
                    }
                    ,
                    {
                        "buttons":[
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"组卷方式管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryZujuan"
                    }
                ],
                "menu":"基础数据管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"论坛管理",
                        "menuJump":"列表",
                        "tableName":"forum"
                    }
                ],
                "menu":"论坛管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "添加考题",
                            "修改",
                            "删除"
                        ],
                        "menu":"试卷管理",
                        "menuJump":"列表",
                        "tableName":"exampaper"
                    }
                ],
                "menu":"试卷管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"试题管理",
                        "menuJump":"列表",
                        "tableName":"examquestion"
                    }
                ],
                "menu":"试题管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "批改",
                            "删除"
                        ],
                        "menu":"考试记录",
                        "menuJump":"列表",
                        "tableName":"examrecord"
                    },
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"错题本",
                        "menuJump":"列表",
                        "tableName":"examrewrongquestion"
                    }
                ],
                "menu":"考试管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
<%--	,{--%>
<%--	    "backMenu":[--%>
<%--	        {--%>
<%--	            "child":[--%>
<%--                    {--%>
<%--	                    "buttons":[--%>
<%--	                        "查看"--%>
<%--	                    ],--%>
<%--	                    "menu":"试卷管理",--%>
<%--	                    "menuJump":"列表",--%>
<%--	                    "tableName":"exampaper"--%>
<%--	                },--%>
<%--	                {--%>
<%--	                    "buttons":[--%>
<%--	                        "查看"--%>
<%--	                    ],--%>
<%--	                    "menu":"考试记录",--%>
<%--	                    "menuJump":"列表",--%>
<%--	                    "tableName":"examrecord"--%>
<%--	                },--%>
<%--	                {--%>
<%--	                    "buttons":[--%>
<%--	                        "查看"--%>
<%--	                    ],--%>
<%--	                    "menu":"错题本",--%>
<%--	                    "menuJump":"列表",--%>
<%--	                    "tableName":"examrewrongquestion"--%>
<%--	                }--%>
<%--	            ],--%>
<%--	            "menu":"考试管理"--%>
<%--	        }--%>
<%--	    ],--%>
<%--	    "frontMenu":[--%>

<%--	    ],--%>
<%--        "roleName":"用户",--%>
<%--        "tableName":"yonghu"--%>

<%--	}--%>
];

var hasMessage = '';
