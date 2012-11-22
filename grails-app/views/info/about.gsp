<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Контакты</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'contact.css')}"  type="text/css">
</head>
<body>



<div class="middle">
    <img class="bg_1" src="img/bg_1_pro.gif" />
    <img class="bg_2" src="img/bg_2_pro.gif" />
    <img class="bg_3" src="img/bg_3_pro.gif" />
    <img class="bg_4" src="img/bg_4_product.gif" />
    <div class="leftContent">
        <div class="info"><big>Контактная информация</big><br />
            <a href="/alumix/">Главная страница</a> — <span>Контактная информация</span><br />
            <strong>Днепропетровск , ООО «Алюмикс Украина»</strong><br />
            <small>Украина, 49000, г. Днепропетровск, ул. Мостовая, 2/1А</small>
            <p>Тел./факс:  (056) 371-10-86, (056) 734-27-21, (056) 734-27-31<br />
                Kyivstar: (067) 634-66-68, (098) 241-42-77<br/>
                МТС: (050) 072-25-55, (050) 422-82-82<br/>
                Электронная почта: <a href="mailto:online@alumix.com.ua">online@alumix.com.ua</a></p>
            <div class="divider1"></div>
        </div>
        <div class="karta"><h4>Карта проезда:</h4><div id="map_Feed" class="mapPic" style="background-color: rgb(229, 227, 223); position: relative;">

            <iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com.ua/maps?f=q&amp;source=embed&amp;hl=ru&amp;geocode=&amp;q=%D0%94%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D0%BF%D0%B5%D1%82%D1%80%D0%BE%D0%B2%D1%81%D0%BA+%D1%83%D0%BB.+%D0%9C%D0%BE%D1%81%D1%82%D0%BE%D0%B2%D0%B0%D1%8F+2&amp;aq=&amp;sll=48.382803,31.17461&amp;sspn=14.193044,33.815918&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9C%D0%BE%D1%81%D1%82%D0%BE%D0%B2%D0%B0%D1%8F+%D1%83%D0%BB.,+2,+%D0%94%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D0%BF%D0%B5%D1%82%D1%80%D0%BE%D0%B2%D1%81%D0%BA,+%D0%94%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D0%BF%D0%B5%D1%82%D1%80%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C&amp;t=m&amp;ll=48.473917,35.028512&amp;spn=0.006828,0.013733&amp;z=16&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com.ua/maps?f=q&amp;source=embed&amp;hl=ru&amp;geocode=&amp;q=%D0%94%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D0%BF%D0%B5%D1%82%D1%80%D0%BE%D0%B2%D1%81%D0%BA+%D1%83%D0%BB.+%D0%9C%D0%BE%D1%81%D1%82%D0%BE%D0%B2%D0%B0%D1%8F+2&amp;aq=&amp;sll=48.382803,31.17461&amp;sspn=14.193044,33.815918&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9C%D0%BE%D1%81%D1%82%D0%BE%D0%B2%D0%B0%D1%8F+%D1%83%D0%BB.,+2,+%D0%94%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D0%BF%D0%B5%D1%82%D1%80%D0%BE%D0%B2%D1%81%D0%BA,+%D0%94%D0%BD%D0%B5%D0%BF%D1%80%D0%BE%D0%BF%D0%B5%D1%82%D1%80%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F+%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C&amp;t=m&amp;ll=48.473917,35.028512&amp;spn=0.006828,0.013733&amp;z=16" style="color:#0000FF;text-align:left">Просмотреть увеличенную карту</a></small>


        </div>

        </div>
        <div id="contactsForm">
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            %{--<p class="smallP">Обратная связь</p>--}%
            %{--<form method="post" action="">--}%
            %{--<div class="forma">--}%
            %{--<strong>Представьтесь, пожалуйста <span>*</span></strong><br />--}%
            %{--<input type="text" name="name" />--}%
            %{--<br />--}%
            %{--<strong>Ваша электронная почта <span>*</span></strong><br />--}%
            %{--<input name="email" type="text" />--}%
            %{--<br />--}%
            %{--<strong>Контактный телефон</strong><br />--}%
            %{--<input name="phone" type="text" />--}%
            %{--<br />--}%
            %{--<strong>Тема сообщения</strong><br />--}%
            %{--<input name="tema" type="text" />--}%
            %{--<br />--}%
            %{--</div>--}%
            %{--<div class="text_area">--}%
            %{--<strong>Cообщение <span>*</span></strong><br />--}%
            %{--<textarea name="mess"></textarea>--}%
            %{--</div>--}%
            %{--<div class="divider"></div>--}%
            %{--<small><span>*</span> Поля, отмеченные звездочкой, обязательны для заполнения</small>--}%
            %{--<div class="divider"></div>--}%
            %{--<p><img src="img/capcha.png" />--}%
            %{--<input name="code" type="text" size="12" />--}%
            %{--<input class="send" type="submit" value=""/>--}%
            %{--<small>Введите цифры с картинки</small>--}%
            %{--</p>--}%
            %{--</form>--}%
        </div>

    </div>
    <div id="right">
        <div class="inMenu">
            <ul>
                <li><g:link controller="gates" action="garage">ВОРОТА</g:link></li>
                <li><g:link controller="shutters" action="index">РОЛЛЕТЫ</g:link></li>
                <li><g:link controller="automatics" action="index">АВТОМАТИКА</g:link></li>
                <li><g:link controller="barriers" action="index">ШЛАГБАУМЫ</g:link></li>
                <li><g:link controller="marquises" action="index">МАРКИЗЫ</g:link></li>
                <li><g:link controller="blinds" action="index">РОЛЬШТОРЫ</g:link></li>
            </ul></div>
        <div class="rightContent">
            <span>Сертификаты компании</span>
            <ul>
                <li><a href="#"></a></li>
                <li><a class="sert2" href="#"></a></li>
                <li><a class="sert3" href="#"></a></li>
                <li><a class="sert4" href="#"></a></li></ul>
            <div class="divider1"></div>
            <div class="akcii"><span>Текущие акции</span><div class="akcii_border"><img class="botL" src="img/botL.gif" /><img class="topL" src="img/topL.gif" /><img class="botR" src="img/botR.gif" /><img class="topR" src="img/topR.gif" /><a class="img_121" href="#"><img src="img/akcImg_mini.jpg" /></a></div>
                <p>18.08.2011</p>
                <a href="#">Акция: дополнительные скидки на<br /> комплексные заказы</a></div>
            <div class="divider1"></div>
        </div>
        <div class="news"><span>Новости</span>
            <div class="akcii">
                <p>18.08.2011</p>
                <a href="#">Высокоскоростные ворота  специально<br /> для вас!</a>
                <p>18.08.2011</p>
                <a href="#">Акция: дополнительные скидки на<br /> комплексные заказы</a></div>
        </div>
    </div>
    <div class="foot_bg"></div>
</div>

</body>
</html>