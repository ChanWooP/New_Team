<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
fhtml, body
{
	height: 100%;
}

body
{
	margin: 0px;
	padding: 0px;
	background: #FFC153;
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 12pt;
	font-weight: 300;
	color: #363636;
}

h1, h2, h3
{
	margin: 0;
	padding: 0;
}

p, ol, ul
{
	margin-top: 0px;
}

p
{
	line-height: 190%;
}

strong
{
}

a
{
	color: #171717;
}

a:hover
{
	text-decoration: none;
}

a img
{
	border: none;
}

.image
{
	display: inline-block;
}

.image img
{
	display: block;
	width: 100%;
	border-radius: 8px;
}

.image-full
{
	display: block;
	width: 100%;
	margin: 0 0 2em 0;
}

.image-left
{
	float: left;
	margin: 0 2em 2em 0;
}

.image-centered
{
	display: block;
	margin: 0 0 2em 0;
}

.image-centered img
{
	margin: 0 auto;
	width: auto;
}

hr
{
	display: none;
}

/*********************************************************************************/
/* List Styles                                                                   */
/*********************************************************************************/

	ul.style1
{
	margin: 0;
	padding: 0;
	list-style: none;
}

ul.style1 li
{
	border-top: 1px solid rgba(0,0,0,.1);
	padding: 0.80em 0;
}

ul.style1 li:first-child
{
	border-top: 0;
	padding-top: 0;
}

ul.style2
{
	margin: 0;
	padding: 0;
	list-style: none;
}

ul.style2 li
{
	border-top: 1px solid rgba(0,0,0,.1);
	padding: 0.80em 0;
}

ul.style2 li:first-child
{
	border-top: 0;
	padding-top: 0;
}

/** LIST STYLE 3 */

ul.style3 {
	margin: 0px;
	padding: 10px 0px 0px 0px;
	list-style: none;
}

ul.style3 li {
	clear: both;
	margin-bottom: 25px;
	padding: 40px 0px 20px 0px;
	border-top: 1px solid #C2C2C2;
}

ul.style3 h3 {
	padding-bottom: 5px;
	font-size: 1.2em;
	color: #262116;
}

ul.style3 p {
	line-height: 150%;
}

ul.style3 .button-style {
	float: left;
	margin-top: 0px;
}

ul.style3 img
{
	float: left;
	margin-right: 3em;
}

ul.style3 .first {
	padding-top: 0px;
	border-top: none;
	box-shadow: none;
}
/*********************************************************************************/
/* Social Icon Styles                                                            */
/*********************************************************************************/

	ul.contact
{
	margin: 0;
	padding: 1.5em 0em 2.5em 0em;
	list-style: none;
}

ul.contact li
{
	display: inline-block;
	padding: 0em 0.10em;
	font-size: 1.5em;
}

ul.contact li span
{
	display: none;
	margin: 0;
	padding: 0;
}

ul.contact li a
{
	color: #FFF;
}

ul.contact li a:before
{
	display: inline-block;
	background: #33333D;
	width: 80px;
	height: 80px;
	line-height: 80px;
	border-radius: 40px;
	text-align: center;
	color: #FFFFFF;
}


/*********************************************************************************/
/* Heading Titles                                                                */
/*********************************************************************************/

	.title
{
	margin-bottom: 2em;
	text-transform: uppercase;
}

.title h2
{
	letter-spacing: 0.20em;
	font-weight: 700;
	font-size: 2em;
	color: #262116;
}

.title .byline
{
	letter-spacing: 0.15em;
	text-transform: uppercase;
	font-weight: 400;
	font-size: 0.90em;
	color: #6F6F6F;
}

/** WRAPPER */

#wrapper
{
	border-bottom: 1px solid rgba(0,0,0,.1);
	background: #FFFFFF url(images/bg01.png) repeat;
}

#footer-wrapper
{
}

.container
{
	width: 1200px;
	margin: 0px auto;
}

.clearfix
{
	clear: both;
}

/*********************************************************************************/
/* Wrappers                                                                      */
/*********************************************************************************/

#header-wrapper
{
	overflow: hidden;
	background: #FFC153;
}

/*********************************************************************************/
/* Header                                                                        */
/*********************************************************************************/

#header
{
	position: relative;
	overflow: hidden;
	text-align: center;
}

/*********************************************************************************/
/* Logo                                                                          */
/*********************************************************************************/

#logo
{
	width: 500px;
	margin: 0 auto;
	padding: 4em 0em;
	text-transform: uppercase;
}

#logo h1
{
	letter-spacing: 0.10em;
	font-size: 3em;
	color: #FFF;
}

#logo p
{
	letter-spacing: 0.10em;
	color: #FFF;
}

#logo a
{
	text-decoration: none;
	color: #FFF;
}

/*********************************************************************************/
/* Banner                                                                        */
/*********************************************************************************/

#banner
{
	overflow: hidden;
	margin-top: 5em;
}

	#banner	.image
		{
			display: inline-block;
		}
		
		#banner	.image img
			{
				display: block;
				width: 100%;
			}

/** MENU */

#menu-wrapper
{
}

#menu
{
	overflow: hidden;
	height: 80px;
}

#menu ul
{
	margin: 0;
	padding: 20px 0px 0px 0px;
	list-style: none;
	line-height: normal;
	text-align: center;
}

#menu li
{
	display: inline-block;
	margin-bottom: 20px;
}

#menu a
{
	display: block;
	letter-spacing: 1px;
	padding: 10px 30px;
	text-decoration: none;
	text-align: center;
	text-transform: uppercase;
	font-size: 0.80em;
	font-weight: 600;
	border: none;
	color: #FFF;
}

#menu a:hover, #menu .current_page_item a
{
	text-decoration: none;
}

#menu .current_page_item a
{
	position:relative;
	height: 4em;
	padding: 15px;
	margin:1em 0 3em;
	color:#000;
	background:#f3961c; 
	background:-webkit-gradient(linear, 0 0, 0 100%, from(#f9d835), to(#f3961c));
	background:-moz-linear-gradient(#f9d835, #f3961c);
	background:-o-linear-gradient(#f9d835, #f3961c);
	background:linear-gradient(#f9d835, #f3961c);
	-webkit-border-radius:10px;
	-moz-border-radius:10px;
	border-radius:10px;
}

#menu .current_page_item a:after {
	content:"";
	position:absolute;
	background: red;
}

.triangle-isosceles {
	position: relative;
	padding: 15px;
	margin: 1em 0 3em;
	color: #000;
	background: #33333D; 
	border-radius: 10px;
}

.triangle-isosceles:after {
	content:"";
	position: absolute;
	bottom: -15px;
	left: 50%;
	border-width: 15px 15px 0;
	border-style: solid;
	border-color: #33333D transparent;
    display: block; 
    width:0;
}

/** PAGE */

#page
{
	position: relative;
	overflow: hidden;
	padding: 6em 0em 5em 0em;
}

/** CONTENT */

#content
{
	float: right;
	width: 790px;
}

/*********************************************************************************/
/* Sidebar                                                                       */
/*********************************************************************************/

	#sidebar
{
	float: left;
	width: 345px;
}

#sidebar .title h2
{
	font-size: 1.6em;
}

#sidebar .box1
{
	margin-bottom: 3em;
}

/*********************************************************************************/
/* Copyright                                                                     */
/*********************************************************************************/

#copyright
{
	overflow: hidden;
	padding: 5em 0em;
	text-align: center;
}

#copyright p
{
	letter-spacing: 0.20em;
	text-align: center;
	text-transform: uppercase;
	font-size: 0.80em;
	color: #FFF;
}

#copyright a
{
	text-decoration: none;
	color: #FFF;
}

/*********************************************************************************/
/* Welcome                                                                       */
/*********************************************************************************/

	#welcome
{
	overflow: hidden;
	padding: 5em 0em;
	border-bottom: 1px solid #E5E5E5;
	text-align: center;
}

#welcome h2
{
	letter-spacing: 0.20em;
	text-transform: uppercase;
	font-size: 2.6em;
}

#welcome p
{
	font-size: 1.3em;
}

#welcome .byline
{
	display: block;
	padding: 0em 0em 1.5em 0em;
	letter-spacing: 0.15em;
	text-transform: uppercase;
	font-weight: 400;
	font-size: 1.2em;
	color: #6F6F6F;
}

/*********************************************************************************/
/* Portfolio                                                                     */
/*********************************************************************************/

	#portfolio-wrapper
{
	padding: 6em 0em;
	text-align: center;
	border-bottom: 1px solid rgba(0,0,0,.1);
}

#portfolio
{
	overflow: hidden;
}

#portfolio .title h2
{
	font-size: 1.2em;
	color: #262116;
}

#portfolio .byline
{
	font-size: 1em;
	color: #EEA7C1;
}

#column1,  #column2,  #column3,  #column4
{
	width: 282px;
}

#column1,  #column2
{
	float: left;
	margin-right: 24px;
}

#column3
{
	float: left;
}

#column4
{
	float: right;
}

/*********************************************************************************/
/* Button Style                                                                  */
/*********************************************************************************/

	.button
{
	display: inline-block;
	margin-top: 1.5em;
	padding: 0.50em 3em 0.50em 2em;
	background: #33333D;
	border-radius: 8px;
	letter-spacing: 0.20em;
	text-decoration: none;
	text-transform: uppercase;
	font-weight: 400;
	font-size: 0.90em;
	color: #FFF;
}

.button:before
{
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	border-radius: 20px;
	text-align: center;
	color: #FFF;
}

/*********************************************************************************/
/* Footer                                                                        */
/*********************************************************************************/
	
#footer
{
	overflow: hidden;
	padding: 5em 0em 0em 0em;
	text-align: center;
	color: #ADADAD;
}

#footer .title h2
{
	font-weight: 400;
	font-size: 3em;
	color: #FFF;
}

#footer .title
{
	border-color: #2D2926 !important;
}

#footer .style1 li
{
	border-color: #2D2926 !important;
}

#footer .style1 a
{
	letter-spacing: 0.10em;
	font-size:1em;
	color: #B1B1B1;
}

#box1
{
	float: left;
	width: 354px;
	margin-right: 24px;
	padding-right: 30px;
}

#box2
{
	float: left;
	width: 354px;
	margin-left: 24px;
	padding-right: 30px;
}

#box3
{
	float: right;
	width: 344px;
	padding-left: 40px;
}

/* List Style 1 */

.list-style1 {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

.list-style1 li {
	padding: 20px 0px 20px 0px;
	border-top: 1px solid #D4D4D4;
}

.list-style1 .date {
	font-weight: bold;
	color: #212121;
}

.list-style1 img {
	float: left;
	margin-right: 25px;
}

.list-style1 .first {
	padding-top: 0px;
	border-top: none;
}
</style>
</head>
<body>
<div id="header-wrapper">
		<div id="menu" class="container">
			<ul>
				<li class="active"><a href="#">Homepage</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">Portfolio</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">Rendezvous</a></h1>
				<p class="triangle-isosceles">Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a></p>
			</div>
		</div>
	</div>
</body>
</html>