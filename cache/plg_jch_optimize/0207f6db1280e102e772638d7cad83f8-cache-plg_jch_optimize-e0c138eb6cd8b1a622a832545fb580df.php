<?php die("Access Denied"); ?>#x#a:2:{s:6:"output";s:0:"";s:6:"result";s:4025:"/*
 * jQuery FlexSlider v2.0
 * http://www.woothemes.com/flexslider/
 *
 * Copyright 2012 WooThemes
 * Free to use under the GPLv2 license.
 * http://www.gnu.org/licenses/gpl-2.0.html
 *
 * Contributing author: Tyler Smith (@mbmufffin)
 */

 
/* Browser Resets */
.flex-container a:active,
.flexslider a:active,
.flex-container a:focus,
.flexslider a:focus  {outline: none;}
.slides,
.flex-control-nav,
.flex-direction-nav {margin: 0; padding: 0; list-style: none;} 

/* FlexSlider Necessary Styles
*********************************/ 
.flexslider {margin: 30px; padding: 0;}
.flexslider .slides > li {display: none; -webkit-backface-visibility: hidden;} /* Hide the slides before the JS is loaded. Avoids image jumping */
.flexslider .slides img {width: 100%; display: block; -webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;}
.flex-pauseplay span {text-transform: capitalize;}

/* Clearfix for the .slides element */
.slides:after {content: "."; display: block; clear: both; visibility: hidden; line-height: 0; height: 0;} 
html[xmlns] .slides {display: block;} 
* html .slides {height: 1%;}

/* No JavaScript Fallback */
/* If you are not using another script, such as Modernizr, make sure you
 * include js that eliminates this class on page load */
.no-js .slides > li:first-child {display: block;}


/* FlexSlider Default Theme
*********************************/
.flexslider {margin: 0 0 60px 0; background: #fff; border: 4px solid #fff; position: relative; -webkit-border-radius: 4px; -moz-border-radius: 4px; -o-border-radius: 4px; border-radius: 4px; box-shadow: 0 1px 4px rgba(0,0,0,.2); -webkit-box-shadow: 0 1px 4px rgba(0,0,0,.2); -moz-box-shadow: 0 1px 4px rgba(0,0,0,.2); -o-box-shadow: 0 1px 4px rgba(0,0,0,.2); zoom: 1;}
.flex-viewport {max-height: 2000px; -webkit-transition: all 1s ease; -moz-transition: all 1s ease; transition: all 1s ease;}
.loading .flex-viewport {max-height: 300px;}
.flexslider .slides {zoom: 1;}

.carousel li {margin-right: 5px}


/* Direction Nav */
.flex-direction-nav {*height: 0;}
.flex-direction-nav a {width: 30px; height: 30px; margin: -20px 0 0; display: block; background: url(/Autoscuola/modules/mod_js_flexslider/assets/css/images/bg_direction_nav.png) no-repeat 0 0; position: absolute; top: 50%; cursor: pointer; text-indent: -9999px; opacity: 0; -webkit-transition: all .3s ease;}
.flex-direction-nav .flex-next {background-position: 100% 0; right: -36px; }
.flex-direction-nav .flex-prev {left: -36px;}
.flexslider:hover .flex-next {opacity: 0.6; right: 5px;}
.flexslider:hover .flex-prev {opacity: 0.6; left: 5px;}
.flexslider:hover .flex-next:hover, .flexslider:hover .flex-prev:hover {opacity: 0.8;}
.flex-direction-nav .flex-disabled {opacity: .3 !important; filter:alpha(opacity=30); cursor: default;}

/* Control Nav */
.flex-control-nav {width: 100%; position: absolute; text-align: center;}
.flex-control-nav li {margin: 0 6px; display: inline-block; zoom: 1; *display: inline;}
.flex-control-paging li a {width: 11px; height: 11px; display: block; background: #666; background: rgba(0,0,0,0.5); cursor: pointer; text-indent: -9999px; -webkit-border-radius: 20px; -moz-border-radius: 20px; -o-border-radius: 20px; border-radius: 20px; box-shadow: inset 0 0 3px rgba(0,0,0,0.3);}
.flex-control-paging li a:hover { background: #333; background: rgba(0,0,0,0.7); }
.flex-control-paging li a.flex-active { background: #000; background: rgba(0,0,0,0.9); cursor: default; }

.flex-control-thumbs {margin: 5px 0 0; position: static; overflow: hidden;}
.flex-control-thumbs li {width: 25%; float: left; margin: 0;}
.flex-control-thumbs img {width: 100%; display: block; opacity: .7; cursor: pointer;}
.flex-control-thumbs img:hover {opacity: 1;}
.flex-control-thumbs .flex-active {opacity: 1; cursor: default;}

@media screen and (max-width: 860px) {
  .flex-direction-nav .flex-prev {opacity: 1; left: 0;}
  .flex-direction-nav .flex-next {opacity: 1; right: 0;}
}";}