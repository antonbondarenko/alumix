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
    %{--<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">--}%
    %{--<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">--}%
    %{--<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style-main.css')}" type="text/css">
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
<div id="wrap">
    <div class="header">
            <g:link  url="/">
            <div class="name">ALUMIX <span>— ворота, роллеты, автоматика, шлагбаумы.</span></div>
            </g:link>

        <div class="phones">
            <div class="cont"><a href="/alumix/info/contacts">Пишите</a> или <a
                    href="/alumix/info/contacts">приезжайте</a>
            </div>

            <p>056 <span>371-10-86</span></p>

            <p>056 <span>734-27-21</span></p>

            <p>056 <span>734-27-31</span></p>
        </div>
    </div>

    <div class="bord"></div>

    <div class="content">
        <div class="menu_upper">
            <ul>
                %{--<li><g:link controller="info" action="about"></g:link>--}%
                %{--<li><g:link controller="info" action="partnership"></g:link>--}%
                %{--<li><g:link controller="info" action="con"></g:link>--}%
                <li><g:link controller="info" action="about">
                    <g:img class="rad" dir="/img/" file="menu_rad.jpg"/>
                    <g:img class="lt" dir="/img/" file="menu_rad_hover.jpg"/>
                %{--<img class="rad" src="img/menu_rad.jpg">--}%
                %{--<img class="lt" src="img/menu_rad_hover.jpg">--}%
                    О компании</g:link>
                %{--<img src="img/razdel_menu.png">--}%
                <g:img dir="/img/" file="razdel_menu.png"/>
                </li>
                %{--<a href="/alumix/info/about"><img class="rad" src="img/menu_rad.jpg"><img class="lt" src="img/menu_rad_hover.jpg">О компании</a><img src="img/razdel_menu.png"></li>--}%
                <li><g:link class="hovR" controller="info" action="contacts">Новости</g:link><g:img dir="/img/"
                                                                                                    file="razdel_menu.png"/></li>
                <li><g:link class="hovR" controller="info" action="contacts">Акции</g:link><g:img dir="/img/"
                                                                                                  file="razdel_menu.png"/></li>
                <li><g:link controller="info" action="partnership">Партнерам</g:link><g:img dir="/img/"
                                                                                            file="razdel_menu.png"/>
                </li>
                %{--<li><a class="hovR" href="/alumix/info/contacts"><img class="rt" src="img/menu_rad_hoverR.jpg">Контакты</g:link></li>--}%
                <li><g:link class="hovR" controller="info" action="contacts">
                    <g:img class="rt" dir="/img/" file="menu_rad_hoverR.jpg"/>
                    <g:img class="rt" dir="/img/" file="menu_rad_hoverR.jpg"/>
                    Контакты</g:link>
                </li>
            </ul>
        </div>



        <g:layoutBody/>
        %{--<div class="footer" role="contentinfo"></div>--}%

        %{--<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt"--}%
        %{--default="Loading&hellip;"/></div>--}%
        <g:javascript library="application"/>
        <r:layoutResources/>

        <div class="footer">
            <div class="copyright">© ООО "Алюмикс Украина", 2012. Все права защищены.
            E-mail: <a href="mailto:online@alumix.com.ua">online@alumix.com.ua</a></div>

            <div class="foot_menu"><ul>
                <li><a href="/alumix/info/about">О компании</a></li>
                <li><a href="/alumix/news/">Новости</a></li>
                <li><a href="/alumix/specials/">Акции</a></li>
                <li><a href="/alumix/info/partnership">Партнерам</a></li>
                <li><a href="/alumix/info/contacts">Контакты</a></li>
            </ul></div>
        </div>
    </div>
</div>
</body>
</html>