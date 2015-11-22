<?php die("Access Denied"); ?>#x#a:2:{s:6:"output";s:0:"";s:6:"result";s:13121:"/**
* @copyright	Copyright (C) 2012 JoomSpirit. All rights reserved.
* Slideshow based on the JQuery script Flexslider
* @license		GNU General Public License version 2 or later
*/

/**		 Overwrite original style 		**/

.flexslider {
margin: 0 ;
background-color : transparent;
border: none;
position: relative;
-webkit-border-radius: 0px;
-moz-border-radius: 0px;
-o-border-radius: 0px;
border-radius: 0px;
box-shadow: none;
-webkit-box-shadow: none;
-moz-box-shadow: none;
-o-box-shadow: none;
zoom: 1;
}


.slides, .flex-control-nav, .flex-direction-nav {
list-style: none outside none !important;
}

.flexslider li {
margin-top:0 !important;
margin-bottom:-1px !important;  		/** 	to fixed a bug **/
padding:0 !important;
background-image:none !important;
background-color : transparent ;
list-style:none !important;
}


/**					Control nav				 		**/

.flex-direction-nav .flex-next {
opacity: 0;
right: 5px;
-webkit-transition : all 0.4s ease-in-out;
-moz-transition : all 0.4s ease-in-out;
-ms-transition : all 0.4s ease-in-out;
-o-transition : all 0.4s ease-in-out;
transition : all 0.4s ease-in-out;
}

.flex-direction-nav .flex-prev {
opacity: 0;
left: 5px;
-webkit-transition : all 0.4s ease-in-out;
-moz-transition : all 0.4s ease-in-out;
-ms-transition : all 0.4s ease-in-out;
-o-transition : all 0.4s ease-in-out;
transition : all 0.4s ease-in-out;
}

.flexslider:hover .flex-next {
opacity: 0.6;
}

.flexslider:hover .flex-prev {
opacity: 0.6;
}

.flexslider:hover .flex-next:hover, .flexslider:hover .flex-prev:hover {
opacity: 0.8;
}

.flex-control-nav li {
padding:8px !important;
margin:0 !important;
}

.flexslider.position-nav-under .flex-control-nav {
position : absolute;
bottom:-30px;
}

.flexslider.position-nav-under {
margin-bottom:30px;
}

.flexslider.position-nav-bottom .flex-control-nav {
position : absolute;
bottom:9px;
}

.flexslider.position-nav-top .flex-control-nav {
position : absolute;
top:9px;
}


.color-nav-dark .flex-control-paging li a {
background-color : #aaa;
background-color: rgba(0,0,0,0.3);
box-shadow: inset -1px 1px 1px rgba(0,0,0,0.5);
}
.color-nav-dark .flex-control-paging li a:hover {
background-color: #888;
background-color: rgba(0,0,0,0.4);
}

.color-nav-light .flex-control-paging li a {
background-color : #999;
background-color: rgba(255,255,255,0.55);
box-shadow: inset -1px 1px 1px rgba(0,0,0,0.5);
}
.color-nav-light .flex-control-paging li a:hover {
background-color: #bbb;
background-color: rgba(255,255,255,0.70);
}

.color-nav-active-black .flex-control-paging li a.flex-active {
background-color: #111;
}
.color-nav-active-green .flex-control-paging li a.flex-active {
background-color: #98c138;
}
.color-nav-active-orange .flex-control-paging li a.flex-active {
background-color: #ec6104;
}
.color-nav-active-blue .flex-control-paging li a.flex-active {
background-color: #3bb8e8;
}
.color-nav-active-red .flex-control-paging li a.flex-active {
background-color: #c61013;
}
.color-nav-active-white .flex-control-paging li a.flex-active {
background-color: #fff;
}



/**					Slide theme 							**/

.flex-slide-theme-horizontal {
margin-top:0px;
margin-bottom:30px;
border-left:1px solid #555;
border-right:1px solid #555;
border-color:rgba(0,0,0,0.6);
}

.flex-slide-theme-horizontal .slide-theme {
display: block;
height: 100%;
top:0;
left: 0;
position: absolute;
width:100%;
z-index:-1;
}


.flex-slide-theme-horizontal .slide-theme-side {
background: transparent url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/slide-border.png) left top no-repeat;
display: block;
height: 26px;
position: absolute;
width: 45px;
}

.flex-slide-theme-horizontal .slide-theme-side.slide-bottom-left {
background-position: -2px -28px;
bottom: -26px;
left: -1px;
}
.flex-slide-theme-horizontal .slide-theme-side.slide-top-left {
background-position: -2px 0px;
top: -26px;
left: -1px;
}
.flex-slide-theme-horizontal .slide-theme-side.slide-bottom-right {
background-position: -64px -28px;
bottom: -26px;
right: -2px;
}
.flex-slide-theme-horizontal .slide-theme-side.slide-top-right {
background-position: -64px 0px;
top: -26px;
right: -2px;
}


.flex-slide-theme-vertical {
margin-left:25px;
margin-right:25px;
/*border-top:1px solid #555;
border-bottom:1px solid #555;
border-color:rgba(0,0,0,0.6);*/
}

.flex-slide-theme-vertical .slide-theme {
display: block;
height: 100%;
top:0;
left: 0;
position: absolute;
width:100%;
z-index:-1;
}


.flex-slide-theme-vertical .slide-theme-side {
//background: transparent url(images/slide-border.png) left top no-repeat;
display: block;
height: 40px;
position: absolute;
width: 25px;
}

.flex-slide-theme-vertical .slide-theme-side.slide-bottom-left {
background-position: -111px -13px;
bottom: -1px;
left: -25px;
}
.flex-slide-theme-vertical .slide-theme-side.slide-top-left {
background-position: -167px -16px;
top: -1px;
left: -25px;
}
.flex-slide-theme-vertical .slide-theme-side.slide-bottom-right {
background-position: -139px -13px;
bottom: -1px;
right: -25px;
}
.flex-slide-theme-vertical .slide-theme-side.slide-top-right {
background-position: -195px -16px;
top: -1px;
right: -25px;
}




/**					Custom theme 							**/


.theme-border-radius-01, .theme-border-radius-01 ul.slides li img {
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
-o-border-radius: 4px;
border-radius: 4px;
}
.theme-border-radius-01.position-caption-bottom-left .flex-caption, .theme-border-radius-01.position-caption-bottom-right .flex-caption, .theme-border-radius-01.position-caption-bottom-centered .flex-caption {
-webkit-border-radius: 0 0 4px 4px;
-moz-border-radius: 0 0 4px 4px;
-o-border-radius: 0 0 4px 4px;
border-radius: 0 0 4px 4px;
}
.theme-border-radius-01.position-caption-top-left .flex-caption, .theme-border-radius-01.position-caption-top-right .flex-caption, .theme-border-radius-01.position-caption-top-centered .flex-caption {
-webkit-border-radius: 4px 4px 0 0;
-moz-border-radius: 4px 4px 0 0;
-o-border-radius: 4px 4px 0 0;
border-radius: 4px 4px 0 0;
}

.theme-border-radius-02, .theme-border-radius-02 ul.slides li img {
-webkit-border-radius: 8px;
-moz-border-radius: 8px;
-o-border-radius: 8px;
border-radius: 8px;
}
.theme-border-radius-02.position-caption-bottom-left .flex-caption, .theme-border-radius-02.position-caption-bottom-right .flex-caption, .theme-border-radius-02.position-caption-bottom-centered .flex-caption {
-webkit-border-radius: 0 0 8px 8px;
-moz-border-radius: 0 0 8px 8px;
-o-border-radius: 0 0 8px 8px;
border-radius: 0 0 8px 8px;
}
.theme-border-radius-02.position-caption-top-left .flex-caption, .theme-border-radius-02.position-caption-top-right .flex-caption, .theme-border-radius-02.position-caption-top-centered .flex-caption {
-webkit-border-radius: 8px 8px 0 0;
-moz-border-radius: 8px 8px 0 0;
-o-border-radius:8px 8px 0 0;
border-radius: 8px 8px 0 0;
}

.theme-border-radius-03, .theme-border-radius-03 ul.slides li img {
-webkit-border-radius: 12px;
-moz-border-radius: 12px;
-o-border-radius: 12px;
border-radius: 12px;
}
.theme-border-radius-03.position-caption-bottom-left .flex-caption, .theme-border-radius-03.position-caption-bottom-right .flex-caption, .theme-border-radius-03.position-caption-bottom-centered .flex-caption {
-webkit-border-radius: 0 0 12px 12px;
-moz-border-radius: 0 0 12px 12px;
-o-border-radius: 0 0 12px 12px;
border-radius: 0 0 12px 12px;
}
.theme-border-radius-03.position-caption-top-left .flex-caption, .theme-border-radius-03.position-caption-top-right .flex-caption, .theme-border-radius-03.position-caption-top-centered .flex-caption {
-webkit-border-radius: 12px 12px 0 0;
-moz-border-radius: 12px 12px 0 0;
-o-border-radius: 12px 12px 0 0;
border-radius: 12px 12px 0 0;
}

.theme-border-radius-04, .theme-border-radius-04 ul.slides li img {
-webkit-border-radius: 24px;
-moz-border-radius: 24px;
-o-border-radius: 24px;
border-radius: 24px;
}
.theme-border-radius-04.position-caption-bottom-left .flex-caption, .theme-border-radius-04.position-caption-bottom-right .flex-caption, .theme-border-radius-04.position-caption-bottom-centered .flex-caption {
-webkit-border-radius: 0 0 24px 24px;
-moz-border-radius: 0 0 24px 24px;
-o-border-radius: 0 0 24px 24px;
border-radius: 0 0 24px 24px;
}
.theme-border-radius-04.position-caption-top-left .flex-caption, .theme-border-radius-04.position-caption-top-right .flex-caption, .theme-border-radius-04.position-caption-top-centered .flex-caption {
-webkit-border-radius: 24px 24px 0 0;
-moz-border-radius: 24px 24px 0 0;
-o-border-radius: 24px 24px 0 0;
border-radius: 24px 24px 0 0;
}

.theme-border-01 {
padding: 2px;
}
.theme-border-02 {
padding: 4px;
}
.theme-border-03 {
padding: 7px;
}
.theme-border-04 {
padding: 10px;
}

.theme-shadow-normal {
-webkit-box-shadow: 0 1px 4px rgba(0,0,0,0.6);
-moz-box-shadow: 0 1px 4px rgba(0,0,0,0.6);
-o-box-shadow: 0 1px 4px rgba(0,0,0,0.6);
box-shadow: 0 1px 4px rgba(0,0,0,0.6);
margin:3px;
}

.theme-shadow-large {
-webkit-box-shadow: 0 1px 15px rgba(0,0,0,0.4);
-moz-box-shadow: 0 1px 15px rgba(0,0,0,0.4);
-o-box-shadow: 0 1px 15px rgba(0,0,0,0.4);
box-shadow: 0 1px 15px rgba(0,0,0,0.4);
margin:10px;
}


/** 	Custom CSS by JoomSpirit		**/

.flexslider {
overflow:visible !important;
}

.flexslider ul.slides {
background-color: transparent;
}

.flexslider .slides > li {
position:relative;
}

.flexslider ul.slides li a {
display:block;
}

.flexslider.white-arrow .flex-direction-nav a {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/bg_direction_nav_white.png);
}

.flexslider.black-arrow .flex-direction-nav a {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/bg_direction_nav_black.png);
}

.flexslider .flex-caption {
position : absolute ;
left:0;
right:0;
margin:0;
padding:10px 10px;
background : transparent url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/white-70.png) 0 0 repeat;
z-index:10;
}

.flexslider ul.slides li a, .flexslider ul.slides li a:hover {
color : inherit;
}

.flexslider ul.slides li .flex-caption a {
display:inline;
color : inherit;
text-decoration:none;
}

.flexslider ul.slides li a .flex-caption:hover {
text-decoration: none;
color : inherit;
cursor:pointer;
}

.flexslider.position-caption-bottom-left .flex-caption{
bottom:0;
text-align:left;
}
.flexslider.position-caption-bottom-right .flex-caption {
bottom:0;
text-align:right;
}
.flexslider.position-caption-bottom-centered .flex-caption {
bottom:0;
text-align:center;
}
.flexslider.position-caption-top-left .flex-caption {
top:0;
text-align:left;
}
.flexslider.position-caption-top-right .flex-caption {
top:0;
text-align:right;
}
.flexslider.position-caption-top-centered .flex-caption {
top:0;
text-align:center;
}



.flexslider.bg-caption-black-00 .flex-caption {
background-color : #000;
background-image : none;
}

.flexslider.bg-caption-white-00 .flex-caption {
background-color : #fff;
background-image : none;
}

.flexslider.bg-caption-white-09 .flex-caption, .flexslider.bg-caption-black-09 .flex-caption {
background-color : transparent;
background-image : none;
}

.flexslider.bg-caption-black-01 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/black-80.png);
}
.flexslider.bg-caption-black-02 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/black-75.png);
}
.flexslider.bg-caption-black-03 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/black-70.png);
}
.flexslider.bg-caption-black-04 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/black-50.png);
}
.flexslider.bg-caption-black-05 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/black-30.png);
}
.flexslider.bg-caption-black-06 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/black-20.png);
}

.flexslider.bg-caption-white-01 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/white-93.png);
}
.flexslider.bg-caption-white-02 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/white-88.png);
}
.flexslider.bg-caption-white-03 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/white-80.png);
}
.flexslider.bg-caption-white-04 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/white-70.png);
}
.flexslider.bg-caption-white-05 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/white-55.png);
}
.flexslider.bg-caption-white-06 .flex-caption {
background-image : url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/white-40.png);
}



/**
**
**
**			Maximum width of the browser to clear the height of the slideshow
**
**			If the width of screen resolution is smaller than 980 pixels , the height of the slideshow will be a ratio of this width. It's essential for responsive design.
**
**/

@media screen and (max-width: 980px) {

	.flexslider .slides {
	min-height:0 !important;
	}
}";}