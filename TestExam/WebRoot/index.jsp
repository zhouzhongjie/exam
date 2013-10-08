<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
	<meta charset="utf-8">
	<title>Free HTML5 Bootstrap Admin Template</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	<meta name="author" content="Muhammad Usman">

	<!-- The styles -->
	<link id="bs-css" href="charisma/css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="charisma/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="charisma/css/charisma-app.css" rel="stylesheet">
	<link href="charisma/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='charisma/css/fullcalendar.css' rel='stylesheet'>
	<link href='charisma/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='charisma/css/chosen.css' rel='stylesheet'>
	<link href='charisma/css/uniform.default.css' rel='stylesheet'>
	<link href='charisma/css/colorbox.css' rel='stylesheet'>
	<link href='charisma/css/jquery.cleditor.css' rel='stylesheet'>
	<link href='charisma/css/jquery.noty.css' rel='stylesheet'>
	<link href='charisma/css/noty_theme_default.css' rel='stylesheet'>
	<link href='charisma/css/elfinder.min.css' rel='stylesheet'>
	<link href='charisma/css/elfinder.theme.css' rel='stylesheet'>
	<link href='charisma/css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='charisma/css/opa-icons.css' rel='stylesheet'>
	<link href='charisma/css/uploadify.css' rel='stylesheet'>

	<script language="JavaScript" src="tabletree4j/Core4j.js"></script>
	<link rel="StyleSheet" href="tabletree4j/tabletree4j.css" type="text/css" />
	<script language="JavaScript" src="tabletree4j/TableTree4j.js"></script>
	
	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="charisma/img/favicon.ico">
		<style>

	.bigtitle{
		font-family:Arial;
		font-weight:bold;
		font-size:22px;
		margin-bottom:10px;
	}
	.footer{
		font-family:Arial;
		font-weight:bold;
		font-size:12px;
		color:#747474;
	}

	.title{
		padding-left:10px;
		font-family:Arial;
		/*font-weight:bold;*/
		font-size:18px;
		color:#747474;
	}

	.fromtitle{
		background-color:#f5f5f5;
		text-align:center;
		font-family:Arial;
		color:#acac59;
		padding-top:5px;
		padding-bottom:5px;
	}

	.fromcontent{
		font-family:Arial;
		padding-right:5px;
		padding-bottom:10px;
		padding-top:10px;
	}

	.content{
		font-family:Arial;
	}
	.clickbtn{
		cursor:pointer;
	}
	.headerbg{
		background:#328aa4 url(img/tr_back.gif) repeat-x;color:#fff;
		height:27px;
		font-family:"Arial";
	}
	.headerbg td{
		text-align:center;
	}


	.tabletree4j-gird td{
	height:27px;
	}

	.arrow-tt-node-content{
		text-align:center;
		width:100%;
	}
	.circle-tt-node-content{
		text-align:center;
		width:100%;
	}
	.default-tt-node-content{
		text-align:center;
		width:100%;
	}
</style>
</head>

<body>
		<!-- topbar starts -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.html"> <img alt="Charisma Logo" src="charisma/img/logo20.png" /> <span>Charisma</span></a>
				
				<!-- theme selector starts -->
				<div class="btn-group pull-right theme-container" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
						<li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
						<li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
						<li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
						<li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
						<li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
						<li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
						<li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
						<li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
					</ul>
				</div>
				<!-- theme selector ends -->
				
				<!-- user dropdown starts -->
				<div class="btn-group pull-right" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> admin</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li class="divider"></li>
						<li><a href="login.html">Logout</a></li>
					</ul>
				</div>
				<!-- user dropdown ends -->
				
				<div class="top-nav nav-collapse">
					<ul class="nav">
						<li><a href="#">Visit Site</a></li>
						<li>
							<form class="navbar-search pull-left">
								<input placeholder="Search" class="search-query span2" name="query" type="text">
							</form>
						</li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<!-- topbar ends -->
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="nav-header hidden-tablet">Main</li>
						<li><a class="ajax-link" href="index.html"><i class="icon-home"></i><span class="hidden-tablet"> Dashboard</span></a></li>
						<li><a class="ajax-link" href="ui.html"><i class="icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
						<li><a class="ajax-link" href="form.html"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
						<li><a class="ajax-link" href="chart.html"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
						<li><a class="ajax-link" href="typography.html"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
						<li><a class="ajax-link" href="gallery.html"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
						<li class="nav-header hidden-tablet">Sample Section</li>
						<li><a class="ajax-link" href="table.html"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
						<li><a class="ajax-link" href="calendar.html"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
						<li><a class="ajax-link" href="grid.html"><i class="icon-th"></i><span class="hidden-tablet"> Grid</span></a></li>
						<li><a class="ajax-link" href="file-manager.html"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
						<li><a href="tour.html"><i class="icon-globe"></i><span class="hidden-tablet"> Tour</span></a></li>
						<li><a class="ajax-link" href="icon.html"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
						<li><a href="error.html"><i class="icon-ban-circle"></i><span class="hidden-tablet"> Error Page</span></a></li>
						<li><a href="login.html"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
					</ul>
					<label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">Home</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">Dashboard</a>
					</li>
				</ul>
			</div>
			<div class="sortable row-fluid">
				<a data-rel="tooltip" title="6 new members." class="well span3 top-block" href="#">
					<span class="icon32 icon-red icon-user"></span>
					<div>Total Members</div>
					<div>507</div>
					<span class="notification">6</span>
				</a>

				<a data-rel="tooltip" title="4 new pro members." class="well span3 top-block" href="#">
					<span class="icon32 icon-color icon-star-on"></span>
					<div>Pro Members</div>
					<div>228</div>
					<span class="notification green">4</span>
				</a>

				<a data-rel="tooltip" title="$34 new sales." class="well span3 top-block" href="#">
					<span class="icon32 icon-color icon-cart"></span>
					<div>Sales</div>
					<div>$13320</div>
					<span class="notification yellow">$34</span>
				</a>
				
				<a data-rel="tooltip" title="12 new messages." class="well span3 top-block" href="#">
					<span class="icon32 icon-color icon-envelope-closed"></span>
					<div>Messages</div>
					<div>25</div>
					<span class="notification red">12</span>
				</a>
			</div>
			
			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header well">
						<h2><i class="icon-info-sign"></i> Introduction</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<h1>Charisma <small>free, premium quality, responsive, multiple skin admin template.</small></h1>
						<p>Its a live demo of the template. I have created Charisma to ease the repeat work I have to do on my projects. Now I re-use Charisma as a base for my admin panel work and I am sharing it with you :)</p>
						<p><b>All pages in the menu are functional, take a look at all, please share this with your followers.</b></p>
						
						<p class="center">
							<a href="http://usman.it/free-responsive-admin-template" class="btn btn-large btn-primary"><i class="icon-chevron-left icon-white"></i> Back to article</a> 
							<a href="http://usman.it/free-responsive-admin-template" class="btn btn-large"><i class="icon-download-alt"></i> Download Page</a>
						</p>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header well">
						<h2><i class="icon-info-sign"></i> tabletree4j</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div id="worldcupgird" class="content" style="margin-top:5px;float:left;width:81%;margin-left:1%"></div>
					</div>
				</div>
			</div>
					
			<div class="row-fluid sortable">
				<div class="box span4">
					<div class="box-header well">
						<h2><i class="icon-th"></i> Tabs</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<ul class="nav nav-tabs" id="myTab">
							<li class="active"><a href="#info">Info</a></li>
							<li><a href="#custom">Custom</a></li>
							<li><a href="#messages">Messages</a></li>
						</ul>
						 
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active" id="info">
								<h3>Charisma <small>a fully featued template</small></h3>
								<p>Its a fully featured, responsive template for your admin panel. Its optimized for tablet and mobile phones. Scan the QR code below to view it in your mobile device.</p> <img alt="QR Code" class="charisma_qr center" src="charisma/img/qrcode136.png" />
							</div>
							<div class="tab-pane" id="custom">
								<h3>Custom <small>small text</small></h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget, mattis vel eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam lorem lacinia risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris, vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.</p>
							</div>
							<div class="tab-pane" id="messages">
								<h3>Messages <small>small text</small></h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget, mattis vel eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam lorem lacinia risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris, vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor.</p>
							</div>
						</div>
					</div>
				</div><!--/span-->
						
				<div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-user"></i> Member Activity</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div class="box-content">
							<ul class="dashboard-list">
								<li>
									<a href="#">
										<img class="dashboard-avatar" alt="Usman" src="http://www.gravatar.com/avatar/f0ea51fa1e4fae92608d8affee12f67b.png?s=50"></a>
										<strong>Name:</strong> <a href="#">Usman
									</a><br>
									<strong>Since:</strong> 17/05/2012<br>
									<strong>Status:</strong> <span class="label label-success">Approved</span>                                  
								</li>
								<li>
									<a href="#">
										<img class="dashboard-avatar" alt="Sheikh Heera" src="http://www.gravatar.com/avatar/3232415a0380253cfffe19163d04acab.png?s=50"></a>
										<strong>Name:</strong> <a href="#">Sheikh Heera
									</a><br>
									<strong>Since:</strong> 17/05/2012<br>
									<strong>Status:</strong> <span class="label label-warning">Pending</span>                                 
								</li>
								<li>
									<a href="#">
										<img class="dashboard-avatar" alt="Abdullah" src="http://www.gravatar.com/avatar/46056f772bde7c536e2086004e300a04.png?s=50"></a>
										<strong>Name:</strong> <a href="#">Abdullah
									</a><br>
									<strong>Since:</strong> 25/05/2012<br>
									<strong>Status:</strong> <span class="label label-important">Banned</span>                                  
								</li>
								<li>
									<a href="#">
										<img class="dashboard-avatar" alt="Saruar Ahmed" src="http://www.gravatar.com/avatar/564e1bb274c074dc4f6823af229d9dbb.png?s=50"></a>
										<strong>Name:</strong> <a href="#">Saruar Ahmed
									</a><br>
									<strong>Since:</strong> 17/05/2012<br>
									<strong>Status:</strong> <span class="label label-info">Updates</span>                                  
								</li>
							</ul>
						</div>
					</div>
				</div><!--/span-->
						
				<div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-list-alt"></i> Realtime Traffic</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div id="realtimechart" style="height:190px;"></div>
							<p class="clearfix">You can update a chart periodically to get a real-time effect by using a timer to insert the new data in the plot and redraw it.</p>
							<p>Time between updates: <input id="updateInterval" type="text" value="" style="text-align: right; width:5em"> milliseconds</p>
					</div>
				</div><!--/span-->
			</div><!--/row-->

			<div class="row-fluid sortable">
				<div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-list"></i> Buttons</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content buttons">
						<p class="btn-group">
							  <button class="btn">Left</button>
							  <button class="btn">Middle</button>
							  <button class="btn">Right</button>
						</p>
						<p>
							<button class="btn btn-small"><i class="icon-star"></i> Icon button</button>
							<button class="btn btn-small btn-primary">Small button</button>
							<button class="btn btn-small btn-danger">Small button</button>
						</p>
						<p>
							<button class="btn btn-small btn-warning">Small button</button>
							<button class="btn btn-small btn-success">Small button</button>
							<button class="btn btn-small btn-info">Small button</button>
						</p>
						<p>
							<button class="btn btn-small btn-inverse">Small button</button>
							<button class="btn btn-large btn-primary btn-round">Round button</button>
							<button class="btn btn-large btn-round"><i class="icon-ok"></i></button>
							<button class="btn btn-primary"><i class="icon-edit icon-white"></i></button>
						</p>
						<p>
							<button class="btn btn-mini">Mini button</button>
							<button class="btn btn-mini btn-primary">Mini button</button>
							<button class="btn btn-mini btn-danger">Mini button</button>
							<button class="btn btn-mini btn-warning">Mini button</button>
						</p>
						<p>
							<button class="btn btn-mini btn-info">Mini button</button>
							<button class="btn btn-mini btn-success">Mini button</button>
							<button class="btn btn-mini btn-inverse">Mini button</button>
						</p>
					</div>
				</div><!--/span-->
					
				<div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-list"></i> Buttons</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content  buttons">
						<p>
							<button class="btn btn-large">Large button</button>
							<button class="btn btn-large btn-primary">Large button</button>
						</p>
						<p>
							<button class="btn btn-large btn-danger">Large button</button>
							<button class="btn btn-large btn-warning">Large button</button>
						</p>
						<p>
							<button class="btn btn-large btn-success">Large button</button>
							<button class="btn btn-large btn-info">Large button</button>
						</p>
						<p>
							<button class="btn btn-large btn-inverse">Large button</button>
						</p>
						<div class="btn-group">
							<button class="btn btn-large">Large Dropdown</button>
							<button class="btn btn-large dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="icon-star"></i> Action</a></li>
								<li><a href="#"><i class="icon-tag"></i> Another action</a></li>
								<li><a href="#"><i class="icon-download-alt"></i> Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#"><i class="icon-tint"></i> Separated link</a></li>
							</ul>
						</div>
						
					</div>
				</div><!--/span-->
					
				<div class="box span4">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-list"></i> Weekly Stat</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<ul class="dashboard-list">
							<li>
								<a href="#">
									<i class="icon-arrow-up"></i>                               
									<span class="green">92</span>
									New Comments                                    
								</a>
							</li>
						  <li>
							<a href="#">
							  <i class="icon-arrow-down"></i>
							  <span class="red">15</span>
							  New Registrations
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon-minus"></i>
							  <span class="blue">36</span>
							  New Articles                                    
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon-comment"></i>
							  <span class="yellow">45</span>
							  User reviews                                    
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon-arrow-up"></i>                               
							  <span class="green">112</span>
							  New Comments                                    
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon-arrow-down"></i>
							  <span class="red">31</span>
							  New Registrations
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon-minus"></i>
							  <span class="blue">93</span>
							  New Articles                                    
							</a>
						  </li>
						  <li>
							<a href="#">
							  <i class="icon-comment"></i>
							  <span class="yellow">254</span>
							  User reviews                                    
							</a>
						  </li>
						</ul>
					</div>
				</div><!--/span-->
			</div><!--/row-->
				  

		  
       
					<!-- content ends -->
			</div><!--/#content.span10-->
				</div><!--/fluid-row-->
				
		<hr>

		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>

		<footer>
			<p class="pull-left">&copy; <a href="http://usman.it" target="_blank">Muhammad Usman</a> 2012</p>
			<p class="pull-right">Powered by: <a href="http://usman.it/free-responsive-admin-template">Charisma</a></p>
		</footer>
		
	</div><!--/.fluid-container-->

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="charisma/js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="charisma/js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="charisma/js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="charisma/js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="charisma/js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="charisma/js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="charisma/js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="charisma/js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="charisma/js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="charisma/js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="charisma/js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="charisma/js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="charisma/js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="charisma/js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="charisma/js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="charisma/js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='charisma/js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='charisma/js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="charisma/js/excanvas.js"></script>
	<script src="charisma/js/jquery.flot.min.js"></script>
	<script src="charisma/js/jquery.flot.pie.min.js"></script>
	<script src="charisma/js/jquery.flot.stack.js"></script>
	<script src="charisma/js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="charisma/js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="charisma/js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="charisma/js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="charisma/js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="charisma/js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="charisma/js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="charisma/js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="charisma/js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="charisma/js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="charisma/js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="charisma/js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="charisma/js/charisma.js"></script>
	
		
</body>

<script language="javascript">

dummyJsonData= function(){

this.jsonFIFAHeaders=[{
		  	columns:[
			{dataIndex:'datetime'},
			{dataIndex:'match'},
			{dataIndex:'venue'},
			{dataIndex:'result'},
			{dataIndex:'operate'}
			],
			dataObject:{match:'Match',datetime:'Date-Time',result:'Result',venue:'Venue',operate:'Operate'},
			trAttributeNames:['classStyle','style'],
			trAttributeValueObject:{classStyle:'headerbg',style:''}
		  }/*	,
		  	  {
		  	columns:[
				{dataIndex:'title4',
				tdAttributeNames:['colSpan','id'],
				tdAttributeValueObject:{colSpan:2,id:'sdfsdf'}
				},
				{dataIndex:'title5'}
			],
		  	dataObject:{title4:'title4',title5:'title5'},
			trAttributeNames:['classStyle','style'],
			trAttributeValueObject:{classStyle:'headerbg',style:''}
		  }*/

		];

		  /*
this.jsoninitNodes=[
		  {id:'组a',order:1,dataObject:{match:'Group A'},userObject:{isGroup:true}},
		  {id:'match_1',pid:'组a',dataObject:{match:'South Africa - Mexico',datetime:'11/06 16:00',result:'1:1 (0:0)',venue:'Johannesburg - JSC'}},
		  {id:'match_2',pid:'组a',dataObject:{match:'Uruguay - France',datetime:'11/06 20:30',result:'0:0',venue:'Cape Town'}},
		  {id:'match_17',pid:'组a',dataObject:{match:'South Africa - Uruguay',datetime:'16/06 20:30',result:'Background',venue:'Tshwane/Pretoria'}},
		  {id:'match_18',pid:'组a',dataObject:{match:'France - Mexico',datetime:'17/06 20:30',result:'Background',venue:'Polokwane'}},
		  {id:'match_33',pid:'组a',dataObject:{match:'Mexico - Uruguay',datetime:'22/06 16:00',result:'Background',venue:'Rustenburg'}},
		  {id:'match_34',pid:'组a',dataObject:{match:'France - South Africa',datetime:'22/06 16:00',result:'Background',venue:'Mangaung/Bloemfontein'}},
		  {id:'group_b',order:2,isLeaf:false,dataObject:{match:'Group B'},userObject:{isGroup:true,jsonName:'jsonNodes_B'}},
		  {id:'group_c',order:3,isLeaf:false,dataObject:{match:'Group C'},userObject:{isGroup:true,jsonName:'jsonNodes_C'}},
		  {id:'group_d',order:4,isLeaf:false,dataObject:{match:'Group D'},userObject:{isGroup:true,jsonName:'jsonNodes_D'}}
		  {id:'group_e',isLeaf:false,dataObject:{match:'Group E'},userObject:{isGroup:true,jsonName:'jsonNodes_D'}}
		  {id:'group_f',isLeaf:false,dataObject:{match:'Group F'}},
		  {id:'group_g',isLeaf:false,dataObject:{match:'Group G'}},
		  {id:'group_h',isLeaf:false,dataObject:{match:'Group H'}}
		];
		  */
this.jsoninitNodes = ${json};

this.jsonNodes_B=[
		  {id:'match_3',pid:'group_b',dataObject:{match:'Argentina - Nigeria',datetime:'12/06 16:00',result:'Live',venue:'Johannesburg - JEP'}},
		  {id:'match_4',pid:'group_b',dataObject:{match:'Korea Republic - Greece',datetime:'12/06 13:30',result:'2:0 (1:0)',venue:'Nelson Mandela Bay/Port Elizabeth'}},
		  {id:'match_19',pid:'group_b',dataObject:{match:'Greece - Nigeria',datetime:'17/06 16:00',result:'Background',venue:'Mangaung/Bloemfontein'}},
		  {id:'match_20',pid:'group_b',dataObject:{match:'Argentina - Korea Republic',datetime:'17/06 13:30',result:'Background',venue:'Johannesburg - JSC'}},
		  {id:'match_35',pid:'group_b',dataObject:{match:'Nigeria - Korea Republic',datetime:'22/06 20:30',result:'Background',venue:'Durban'}},
		  {id:'match_36',pid:'group_b',dataObject:{match:'Greece - Argentina',datetime:'22/06 20:30',result:'Background',venue:'Polokwane'}}
		];

this.jsonNodes_C=[
		  {id:'match_5',pid:'group_c',dataObject:{match:'England - USA',datetime:'12/06 20:30',result:'Preview',venue:'Rustenburg'}},
		  {id:'match_6',pid:'group_c',dataObject:{match:'Algeria - Slovenia',datetime:'13/06 13:30',result:'Preview',venue:'Polokwane'}},
		  {id:'match_22',pid:'group_c',dataObject:{match:'Slovenia - USA',datetime:'18/06 16:00',result:'Background',venue:'Johannesburg - JEP'}},
		  {id:'match_23',pid:'group_c',dataObject:{match:'England - Algeria',datetime:'18/06 20:30',result:'Background',venue:'Cape Town'}},
		  {id:'match_37',pid:'group_c',dataObject:{match:'Slovenia - England',datetime:'23/06 16:00',result:'Background',venue:'Nelson Mandela Bay/Port Elizabeth'}},
		  {id:'match_38',pid:'group_c',dataObject:{match:'USA - Algeria',datetime:'23/06 16:00',result:'Background',venue:'Tshwane/Pretoria'}}
		];
this.jsonNodes_D=[
		  {id:'match_7',pid:'group_d',dataObject:{match:'Germany - Australia',datetime:'13/06 20:30',result:'Preview',venue:'Durban'}},
		  {id:'match_8',pid:'group_d',dataObject:{match:'Serbia - Ghana',datetime:'13/06 16:00',result:'Background',venue:'Tshwane/Pretoria'}},
		  {id:'match_21',pid:'group_d',dataObject:{match:'Germany - Serbia',datetime:'18/06 13:30',result:'Background',venue:'Nelson Mandela Bay/Port Elizabeth'}},
		  {id:'match_24',pid:'group_d',dataObject:{match:'Ghana - Australia',datetime:'19/06 16:00',result:'Background',venue:'Rustenburg'}},
		  {id:'match_39',pid:'group_d',dataObject:{match:'Ghana - Germany',datetime:'23/06 20:30',result:'Background',venue:'Johannesburg - JSC'}},
		  {id:'match_40',pid:'group_d',dataObject:{match:'Australia - Serbia',datetime:'23/06 20:30',result:'Background',venue:'Nelspruit'}}
		];

}

//ExpandNodeEvent
function fifaExpandNodeEvent(node, tree){
	if (node.isLoad == false) {
		tree.startLoadingNode(node);
		alert("This alert is show you the node loading...");

		//you logic,you can call ajax here , when call success ,use function 'endLoadingNode(node)' to init the loading node;

		//example for my dummy data logic
		var userObject=node.userObject;
		if(userObject!=null){
			var jsonName=userObject.jsonName;
			if(jsonName!=null){
				var jsonNodes=eval('new dummyJsonData().'+jsonName);
				if(jsonNodes!=null){
					tree.loadingAddNodes(jsonNodes,node.id);
				}
			}
		}
		/////////////////////////////////

		tree.endLoadingNode(node);
	}
}

//infoObj {dataValue:,node:,tabletreeObj:,rowObj:,rowIndex:,container:,columnIndex:}
function operateRenderFunction(infoObj){
	var value=infoObj.dataValue;
	var node=infoObj.node;
	var tree=infoObj.tabletreeObj;
	var aElobj=Core4j.Domhelper.createElement("a",{
	attributeNames:['href'],
	valueObject:{href:'#'}
	});
	Core4j.Domhelper.addEventToEl(aElobj,Core4j.Domhelper.ElEventType.CLICK,function(){
		//alert(tree.tableObject.getAttribute("class"));
		//alert("id is ["+value+"] node level is["+node.level+"] islastNode["+node.isLastNode+"]");
		if(node.childs!=null&&node.childs.length>0){
			if(window.confirm("The node[id:"+node.id+"] has childs,are you sure to delete?")){
				tree.removeNode(node.id);
			}
		}else{
			if(!node.isLeaf&&node.isLoad==false){
				if(window.confirm("The node[id:"+node.id+"] is unload,maybe has childs,are you sure to delete?")){
				tree.removeNode(node.id);
				}
			}else{
				if(window.confirm("Are you sure to delete the node[id:"+node.id+"]?")){
				tree.removeNode(node.id);
				}
			}

		}
	});
	aElobj.innerHTML="Remove";
	return aElobj;
}

///////////////////////////////////////////////////////////

//the flow of build tabletree

//create and config tabletree object
var fifaGirdTree=new Core4j.toolbox.TableTree4j({
	columns:[
			{dataIndex:'datetime',width:'15%'},
			{isNodeClick:true,dataIndex:'match',width:'30%'},
			{dataIndex:'venue',width:'30%',renderFunction:null},
			{dataIndex:'result',width:'15%',canSort:true},
			{width:'10%',canSort:false,renderFunction:operateRenderFunction}
			],
	treeMode:'gird',
	renderTo:'worldcupgird',
	useLine:true,
	useIcon:true,
	id:'myworldcupgirdtree',
	useCookie:false,
	onExpandNodeEvents:[fifaExpandNodeEvent],
	headers:new dummyJsonData().jsonFIFAHeaders,
	//footers:jsonfooters,
	themeName:'arrow',
	selectMode:'single'
	//floatRight:true
});

//build tree by nodes
fifaGirdTree.build(new dummyJsonData().jsoninitNodes,true);

////////////////////////////////////////////////////////////////

function sortTree(index){
	if(index==null){
		fifaGirdTree.getNodeById();
	}else{
		fifaGirdTree.sortByColumnIndex(index);
	}
}

function changeStyle(theme){
	fifaGirdTree.changeTheme(theme);
}

function addGroup(){
		var gid=document.getElementById("gid").value;
			if(gid!=null&&gid!=''){
				var addnode=fifaGirdTree.getNodeById(gid);
				if(addnode==null){
					var gname=document.getElementById("gname").value;
					var gorder=document.getElementById("gorder").value;
					gorder=parseInt(gorder);
					if(gname==null||gname==''){
						alert("The name of group is required!");
						return null;
					}
					if(isNaN(gorder)){
						gorder=0;
					}
					//{id:'group_b',order:2,isLeaf:false,dataObject:{match:'Group B'},userObject:{isGroup:true,jsonName:'jsonNodes_B'}},
					addnode=new Core4j.toolbox.TableTreeNode({
						id:gid,
						order:gorder,
						isLeaf:false,
						isLoad:true,
						dataObject:{match:gname},
						userObject:{isGroup:true}
					});
					//add one node
					fifaGirdTree.addNode(addnode);
				}else{
					alert("The id of group is exist!")
				}
			}else{
				alert("The id of group is required!")
			}
}
function addMatch(){
	var sllectNodes=fifaGirdTree.getSelectNodes();
	var alertMsg="Please select a group."
	if(sllectNodes==null||sllectNodes.length==0){
		alert(alertMsg);
	}else{
		var pnode=sllectNodes[0];
		if(pnode.userObject!=null&&pnode.userObject.isGroup==true){
			var mid=document.getElementById("mid").value;
			if(mid!=null&&mid!=''){
				var addnode=fifaGirdTree.getNodeById(mid);
				if(addnode==null){
					var mteam=document.getElementById("mteam").value||'';
					var mdate=document.getElementById("mdate").value||'';
					var mvenue=document.getElementById("mvenue").value||'';
					var mres=document.getElementById("mres").value||'';
					//{id:'match_3',pid:'group_b',dataObject:{match:'Argentina - Nigeria',datetime:'12/06 16:00',result:'Live',venue:'Johannesburg - JEP'}}
					addnode=new Core4j.toolbox.TableTreeNode({
						id:mid,
						dataObject:{match:mteam,datetime:mdate,result:mres,venue:mvenue}
					});
					//add one node
					fifaGirdTree.addNode(addnode,pnode.id);
				}else{
					alert("The id of match is exist!")
				}
			}else{
				alert("The id of match is required!")
			}
		}else{
			alert(alertMsg);
		}
	}
}
/*
function setunload(){
	var sllectNodes=fifaGirdTree.getSelectNodes();
	var alertMsg="Please select a node."
	if(sllectNodes==null||sllectNodes.length==0){
		alert(alertMsg);
	}else{
		var node=sllectNodes[0];
		fifaGirdTree.setNodeAsUnload(node.id);
	}
}
*/
</script>

</html>
