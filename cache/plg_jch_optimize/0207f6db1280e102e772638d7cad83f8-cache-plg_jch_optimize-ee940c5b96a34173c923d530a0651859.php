<?php die("Access Denied"); ?>#x#a:2:{s:6:"output";s:0:"";s:6:"result";s:10196:"/**************************************************************************************/
/*
/*		Web: http://www.asdesigning.com
/*		Web: http://www.astemplates.com
/*		License: GNU/GPL
/*
/**************************************************************************************/


#camera-slideshow
{
	
}

.camera_wrap a,
.camera_wrap img,
.camera_wrap ol,
.camera_wrap ul,
.camera_wrap li,
.camera_wrap table,
.camera_wrap tbody,
.camera_wrap tfoot,
.camera_wrap thead,
.camera_wrap tr,
.camera_wrap th,
.camera_wrap td .camera_thumbs_wrap a,
.camera_thumbs_wrap img,
.camera_thumbs_wrap ol,
.camera_thumbs_wrap ul,
.camera_thumbs_wrap li,
.camera_thumbs_wrap table,
.camera_thumbs_wrap tbody,
.camera_thumbs_wrap tfoot,
.camera_thumbs_wrap thead,
.camera_thumbs_wrap tr,
.camera_thumbs_wrap th,
.camera_thumbs_wrap td
{
	background: none;
	border: 0;
	font: inherit;
	font-size: 100%;
	margin: 0;
	padding: 0;
	vertical-align: baseline;
	list-style: none
}

.camera_wrap
{
	direction: ltr;
	display: none;
	float: left;
	position: relative;
	z-index: 0;
}

.camera_wrap img
{
	max-width: none!important;
}

.camera_fakehover
{
	height: 100%;
	min-height: 60px;
	position: relative;
	width: 100%;
	z-index: 1;
}

.camera_wrap
{
	width: 100%;
}

.camera_src
{
	display: none;
}

.cameraCont,
.cameraContents
{
	height: 100%;
	position: relative;
	width: 100%;
	z-index: 1;
}

.cameraSlide
{
	bottom: 0;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
	width: 100%;
}

.cameraContent
{
	bottom: 0;
	display: none;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
	width: 100%;
}

.camera_target
{
	bottom: 0;
	height: 100%;
	left: 0;
	overflow: hidden;
	position: absolute;
	right: 0;
	text-align: left;
	top: 0;
	width: 100%;
	z-index: 0;
}

.camera_overlayer
{
	bottom: 0;
	height: 100%;
	left: 0;
	overflow: hidden;
	position: absolute;
	right: 0;
	top: 0;
	width: 100%;
	z-index: 0;
}

.camera_target_content
{
	bottom: 0;
	left: 0;
	overflow: hidden;
	position: absolute;
	right: 0;
	top: 0;
	z-index: 2;
}

.camera_target_content .camera_link
{
	background: url(/Autoscuola/templates/as002044free/images/blank.gif);
	display: block;
	height: 100%;
	text-decoration: none;
}

.camera_loader
{
	background: url(/Autoscuola/templates/as002044free/images/loader.gif) no-repeat center;
	background-color: transparent;
	border: none;
	-webkit-border-radius: 18px;
	-moz-border-radius: 18px;
	border-radius: 18px;
	height: 36px;
	left: 50%;
	overflow: hidden;
	position: absolute;
	margin: -18px 0 0 -18px;
	top: 50%;
	width: 36px;
	z-index: 3;
}

.camera_bar
{
	bottom: 0;
	left: 0;
	overflow: hidden;
	position: absolute;
	right: 0;
	top: 0;
	z-index: 3;
}

.camera_thumbs_wrap.camera_left .camera_bar,
.camera_thumbs_wrap.camera_right .camera_bar
{
	height: 100%;
	position: absolute;
	width: auto;
}

.camera_thumbs_wrap.camera_bottom .camera_bar,
.camera_thumbs_wrap.camera_top .camera_bar
{
	height: auto;
	position: absolute;
	width: 100%;
}

.camera_nav_cont
{
	height: 65px;
	overflow: hidden;
	position: absolute;
	right: 9px;
	top: 15px;
	width: 120px;
	z-index: 4;
}

.camera_caption
{
	display: none;
	position: absolute;
	width: 40%;
	text-align: left !important;
	top: 0 !important;
	left: 0 !important;
}


.camera_caption .slide_title
{
	font-size: 22px;
	line-height: 26px;	
	text-transform: uppercase;
	font-weight: bold;
	margin-bottom: 0px !important;
	padding-bottom: 0px !important;
	font-family: Arial, Helvetica, sans-serif !important;
	color: #2594BA;
}

.camera_caption .slide_title span
{
	display: inline;
}

.camera_caption h2
{
	font-weight: bold !important;
	font-size: 20px !important;
	color: #ffffff;
	font-family: Arial, Helvetica, sans-serif !important;
	margin-bottom: 15px;
}

.camera_caption p
{
	padding:0 !important;
	margin:0 !important;
	font-size: 12px !important;
	line-height: 20px;
	text-align: right;
	color: #555;
	text-transform: uppercase;	
	text-shadow: 0px 0px 0px #ccc;
}

.camera_caption a.readmore
{
	position: absolute;
	right: 15px;
	top: auto;
	padding: 10px 45px 10px 30px;
	font-size: 12px;
	font-weight: bold;
	line-height: 24px;
	text-transform: uppercase;
	background-repeat: repeat-x;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

.camera_caption a.readmore .arrow
{
	background: url(/Autoscuola/templates/as002044free/images/arrow.png) left top no-repeat;
	display: block;
	height: 11px;
	width: 8px;
	right: 25px;
	top: 16px;
	position: absolute;
}

.camera_caption a.readmore:hover
{
	background-repeat: repeat-x;
}

.camera_caption > div
{
	padding: 10px 20px;
}

.camerarelative
{
	overflow: hidden;
	position: relative;
}

.imgFake
{
	cursor: pointer;
}

.camera_prevThumbs
{
	bottom: 4px;
	cursor: pointer;
	left: 0;
	position: absolute;
	top: 4px;
	visibility: hidden;
	width: 30px;
	z-index: 10;
}

.camera_prevThumbs div
{
	background: url(/Autoscuola/templates/as002044free/images/prev.png) no-repeat center;
	display: block;
	height: 40px;
	margin-top: -20px;
	position: absolute;
	top: 50%;
	width: 30px;
}

.camera_nextThumbs
{
	bottom: 4px;
	cursor: pointer;
	position: absolute;
	right: 0;
	top: 4px;
	visibility: hidden;
	width: 30px;
	z-index: 10;
}

.camera_nextThumbs div
{
	background: url(/Autoscuola/templates/as002044free/images/next.png) no-repeat center;
	display: block;
	height: 40px;
	margin-top: -20px;
	position: absolute;
	top: 50%;
	width: 30px;
}

.camera_command_wrap .hideNav
{
	display: none;
}

.camera_command_wrap
{
	left: 0;
	position: relative;
	right:0;
	z-index: 4;
}

#camera-slideshow
{
	margin: 0 !important;
	min-height: 200px;
}

.camera_pag
{
	position: absolute;
	bottom: 29%;
	left: 0 !important;
}

.camera_wrap .camera_pag .camera_pag_ul
{
	list-style: none;
	margin: 0;
	padding: 0;
	text-align: left;
}

.camera_wrap .camera_pag .camera_pag_ul li
{
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px;
	cursor: pointer;
	display: inline-block;
	height: 16px;
	margin: 20px 5px;
	position: relative;
	text-align: left;
	text-indent: 9999px;
	width: 16px;
}

.camera_commands_emboss .camera_pag .camera_pag_ul li
{
	-moz-box-shadow: 0px 1px 0px #CCCCC;
	-webkit-box-shadow: 0px 1px 0px #CCCCC;
	box-shadow: 0px 1px 0px #CCCCC;
}

.camera_wrap .camera_pag .camera_pag_ul li > span
{
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	height: 8px;
	left: 4px;
	overflow: hidden;
	position: absolute;
	top: 4px;
	width: 8px;
}

.camera_commands_emboss .camera_pag .camera_pag_ul li:hover > span
{
	-moz-box-shadow: 0px 1px 0px #FFFFFF,  inset 0px 1px 1px #CCCCCC;
	-webkit-box-shadow: 0px 1px 0px #FFFFFF,  inset 0px 1px 1px #CCCCCC;
	box-shadow: 0px 1px 0px #FFFFFF,  inset 0px 1px 1px #CCCCCC;
}

.camera_wrap .camera_pag .camera_pag_ul li.cameracurrent > span
{
	-moz-box-shadow: 0;
	-webkit-box-shadow: 0;
	box-shadow: 0;
}

.camera_pag_ul li img
{
	display: none;
	position: absolute;
}

.camera_pag_ul .thumb_arrow
{
	border-left: 4px solid transparent;
	border-right: 4px solid transparent;
	border-top: 4px solid;
	top: 0;
	left: 50%;
	margin-left: -4px;
	position: absolute;
}

.camera_prev,
.camera_next,
.camera_commands
{
	cursor: pointer;
	height: 40px;
	margin-top: -20px;
	position: absolute;
	top: 50%;
	width: 40px;
	z-index: 2;
}

.camera_prev
{
	left: 15px;
}

.camera_prev > span
{
	background: url(/Autoscuola/templates/as002044free/images/prev.png) no-repeat center;
	display: block;
	height: 40px;
	width: 40px;
}

.camera_next
{
	right: 15px;
}

.camera_next > span
{
	background: url(/Autoscuola/templates/as002044free/images/next.png) no-repeat center;
	display: block;
	height: 40px;
	width: 40px;
}

.camera_commands
{
	width: 100%;
	top: 50%;
	left: 48%;	
}

.camera_commands > .camera_play
{
	background: url(/Autoscuola/templates/as002044free/images/play.png) no-repeat center;
	height: 40px;
	width: 40px;
}

.camera_commands > .camera_stop
{
	background: url(/Autoscuola/templates/as002044free/images/pause.png) no-repeat center;
	display: block;
	height: 40px;
	width: 40px;
	text-align: center;
}

.camera_wrap .camera_pag .camera_pag_ul li
{
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	cursor: pointer;
	display: inline-block;
	height: 12px;
	margin: 0 5px 0 0;
	position: relative;
	text-indent: 9999px;
	width: 12px;
	background: #fff;
	border: 3px solid #56C5EB;
}

.camera_wrap .camera_pag .camera_pag_ul li.cameracurrent, 
.camera_wrap .camera_pag .camera_pag_ul li:hover
{
	background: #2594BA;
	border: 3px solid #fff;
}



.camera_thumbs_cont
{
	-webkit-border-bottom-right-radius: 4px;
	-webkit-border-bottom-left-radius: 4px;
	-moz-border-radius-bottomright: 4px;
	-moz-border-radius-bottomleft: 4px;
	border-bottom-right-radius: 4px;
	border-bottom-left-radius: 4px;
	overflow: hidden;
	position: relative;
	width: 100%;
}

.camera_commands_emboss .camera_thumbs_cont
{
	-moz-box-shadow: 0px 1px 0px #FFFFFF,  inset 0px 1px 1px #CCCCCC;
	-webkit-box-shadow: 0px 1px 0px #FFFFFF,  inset 0px 1px 1px #CCCCCC;
	box-shadow: 0px 1px 0px #FFFFFF,  inset 0px 1px 1px #CCC;
}

.camera_thumbs_cont > div
{
	float: left;
	width: 100%;
}

.camera_thumbs_cont ul
{
	overflow: hidden;
	padding: 3px 4px 8px;
	position: relative;
	text-align: center;
}

.camera_thumbs_cont ul li
{
	display: inline;
	padding: 0 4px;
}

.camera_thumbs_cont ul li > img
{
	border: 1px solid;
	cursor: pointer;
	margin-top: 5px;
	vertical-align:bottom;
}

.camera_clear
{
	display: block;
	clear: both;
}

.showIt
{
	display: none;
}

.camera_clear
{
	clear: both;
	display: block;
	height: 1px;
	margin: -1px 0 25px;
	position: relative;
}";}