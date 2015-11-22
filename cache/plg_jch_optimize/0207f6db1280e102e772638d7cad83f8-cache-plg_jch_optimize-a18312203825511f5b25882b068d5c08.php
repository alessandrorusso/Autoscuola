<?php die("Access Denied"); ?>#x#a:2:{s:6:"output";s:0:"";s:6:"result";s:5304:"/**************************************************************************************/
/*
/*		Web: http://www.asdesigning.com
/*		Web: http://www.astemplates.com
/*		License: GNU/GPL
/*
/**************************************************************************************/
    
#as-menu .as-menu,
#as-menu .as-menu *
{
	margin: 0;
	padding: 0;
	list-style: none;
}
.navigation #as-menu
{
	background: transparent;
	border-radius: 0;
	position: relative;
	min-height: 60px;
	float: right;	
}


#as-menu ul.as-menu
{
	position: relative;
	z-index: 150;
	line-height: 1.0;
}

#as-menu ul.as-menu a
{
	display: block;
	position: relative;
}

#as-menu ul.as-menu li:hover
{
	visibility: inherit;
}

#as-menu ul.as-menu li
{
	float: left;
	position: relative;
}

.navigation #as-menu ul.as-menu > li

{
	padding: 0;
	margin: 0;
	width: auto !important;
	text-align: center;
	background: url(/Autoscuola/templates/as002059/images/bg-li.gif) left top no-repeat;
	list-style:none;
}

.navigation #as-menu ul.as-menu > li.active > a,
.navigation #as-menu ul.as-menu > li:hover > a,
.navigation #as-menu ul.as-menu > li.asHover > a,
.navigation #as-menu ul.as-menu > li.current > a,
.navigation #as-menu ul.as-menu > li.active > span,
.navigation #as-menu ul.as-menu > li.asHover > span,
.navigation #as-menu ul.as-menu > li.current > span
{
	background-color: #2594BA;
    border: 0 ;
    border-radius: 0 0 25px 25px;
	color: #fff;        
}

#as-menu ul.as-menu > li + li
{
	margin-left: 2px !important;
}

#as-menu ul.as-menu > li.firstItem,
#as-menu ul.as-menu > li:first-child
{
	background: none repeat scroll 0 0 transparent
}

.navigation #as-menu ul.as-menu > li > a,
#as-menu ul.as-menu > li > span
{
    color: #121212;
    display: block;
    font-size: 12px;
    padding: 90px 25px 10px !important;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    width: auto;   
 	height: 34px;
}

#as-menu ul.as-menu > li > a:hover,
#as-menu ul.as-menu > li > span:hover
{
	background: none;
}

#as-menu ul.as-menu > li > a:hover > span,
#as-menu ul.as-menu > li > span:hover > span
{
	background-position: center bottom !important;
}

#as-menu ul.as-menu > li.deeper > a
{
	position: relative;
	font-family: Tahoma, Geneva, sans-serif;
	color: #121212;
}

#as-menu ul.as-menu > li.deeper > a:after
{
	display: inline-block;
	width: 7px;
	height: 5px;
	position: relative;
	left: 12px;
	top: -3px;
	content: none;
	/* content: ""; show arrow */
}

#as-menu ul.as-menu li:hover > ul,
#as-menu ul.as-menu li.asHover > ul
{
	top: 75px;
}

#as-menu ul.as-menu ul
{
	width: 191px;
	display: none;	
}

.navigation #as-menu ul.as-menu ul
{
	position: absolute;
	background: #89DAF4;
	-webkit-border-radius: 25px !important;
	-moz-border-radius: 25px !important;
	border-radius: 25px !important;	
}


#as-menu ul.as-menu li:hover ul,
#as-menu ul.as-menu li.asHover ul
{
	left: 50%;
	top: 112px;
	z-index: 100;
}

#as-menu ul.as-menu li:hover li ul,
#as-menu ul.as-menu li.asHover li ul
{
	top: -999em;
}

#as-menu ul.as-menu ul li
{
	width: 100%;
	margin: 0 0 1px 0;
	list-style: none;	
}

#as-menu ul.as-menu ul > li.deeper > a:after
{
	display: inline-block;
	background: url(/Autoscuola/templates/as002044free/images/dds.arrow.png) left top no-repeat;
	width: 5px;
	height: 7px;
	position: relative;
	left: -20px;
	top: 9px;
	float: right;
	content: "";
}

.navigation #as-menu ul.as-menu ul ul
{
	left: 192px !important;
	top: -12px !important;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;		
}

#as-menu ul.as-menu ul li.firstItem
{
	border: none;
}


.navigation #as-menu ul.as-menu ul li a
{
    color: #121212;
    font-size: 12px;
    line-height: 26px;
    padding: 0 0 0 30px;
    text-align: left;
    text-decoration: none;
    

}

#as-menu ul.as-menu ul li a:hover,
#as-menu ul.as-menu ul li span:hover,
#as-menu ul.as-menu ul li.active > a,
#as-menu ul.as-menu ul li.asHover > a,
#as-menu ul.as-menu ul li.active > span,
#as-menu ul.as-menu ul li.asHover > span
{
	color: #121212;
}

#as-menu ul.as-menu > li.active > a, 
#as-menu ul.as-menu > li.asHover > a, 
#as-menu ul.as-menu > li.current > a, 
#as-menu ul.as-menu > li.active > span, 
#as-menu ul.as-menu > li.asHover > span, 
#as-menu ul.as-menu > li.current > span, 
#as-menu ul.as-menu > li > a:hover, 
#as-menu ul.as-menu > li > span:hover, 
#as-menu ul.as-menu ul li a:hover, 
#as-menu ul.as-menu ul li span:hover, 
#as-menu ul.as-menu ul li.active > a, 
#as-menu ul.as-menu ul li.asHover > a, 
#as-menu ul.as-menu ul li.active > span, 
#as-menu ul.as-menu ul li.asHover > span
{
	color: #fff;
}


#as-menu ul.as-menu li li:hover ul,
#as-menu ul.as-menu li li.asHover ul
{
	left: 10em;
	top: 0;
}

#as-menu ul.as-menu li li:hover li ul,
#as-menu ul.as-menu li li.asHover li ul
{
	top: -999em;
}

#as-menu ul.as-menu li li:hover ul,
#as-menu ul.as-menu li li.asHover ul
{
	top: -1em;
	left: 191px;
}

#as-menu ul.as-menu li li li:hover ul,
#as-menu ul.as-menu li li li.asHover ul
{
	top: -1em;
	left: 191px;
}";}