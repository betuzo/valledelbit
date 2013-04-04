<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'layout.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file:'jquery.fancybox-1.3.4.css')}" type="text/css">
		<g:javascript library="jquery" plugin="jquery"/>
		<g:javascript src="" />
		<g:layoutHead/>		
		<r:layoutResources />
		<g:javascript src="scripts.js"/>
		<g:javascript src="jquery.easing.1.3.js" />
		<g:javascript src="jquery-ui-1.8.11.custom.min.js" />
		<g:javascript src="jquery.transform-0.9.3.min.js" />
		<g:javascript src="jquery.animate-colors-min.js" />
		<g:javascript src="mathUtils.js" />
		<g:javascript src="hoverSprite.js" />
		<g:javascript src="superfish.js" />
		<g:javascript src="switcher.js" />
		<g:javascript src="jquery.mousewheel.js" />
		<g:javascript src="sprites.js" />
		<g:javascript src="cScroll.js" />
		<g:javascript src="forms.js" />
		<g:javascript src="gallery.js" />
		<g:javascript src="jquery.fancybox-1.3.4.pack.js" />
	</head>
	<body>
		<div class="glob">
		<div class="page_spinner"></div>
			<div class="main">
				<div class="center">
					<!-- Encabezado  -->
					<div class="headerComunidad">
						<header>
							<div class="logoComunidad">
								<h1><a href="#"><img id="logo"src="${resource(dir: 'images', file: 'logo-bit.png')}" width="300px" height="170px"></img></a></h1>
							</div>
						</header>
					</div>
					
					<div class="social-bit">
							<span>"compartir es aprender"</span>
							<ul>
								<li><a href="http://facebook.com/valledelbit" target="_blank"><img src="${resource(dir:'images', file:'facebook.png')}" width="30px" height="30px"></a></li>
								<li><a href="http://twitter.com/valledelbit" target="_blank"><img src="${resource(dir:'images', file:'twitter.png')}" width="30px" height="30px"></a></li>
							</ul>
					</div>
					<!--Fin de encabezado-->
					<g:layoutBody/>
				<footer>
		            footer valle del bit
				</footer>
			</div>
		<div>
		<g:javascript>
			$(window).load(function() {	
				$('.page_spinner').fadeOut();
				$('body').css({overflow:'auto', 'min-height':'800px'})
			})
		</g:javascript>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>