<%@ Page Title="la femme fatale" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="la_femme_no_fatale.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="slider-wrapper" style="z-index:0">
        <div class="slider">
            <div class="slide-navigation__squares">
                <div class="squares-wrapper">
                    <div class="squares-slider">
                        <span class="square"></span>
                        <span class="square"></span>
                        <span class="square"></span>
                        <span class="square red"></span>
                        <span class="square "></span>
                        <span class="square"></span>
                    </div>
                </div>

            </div>
            <div class="slides-container">
                <div class="slide-wrapper">
                    <div class="slide" data-order="1">
                        <img src="https://i.pinimg.com/originals/2c/8c/e8/2c8ce8d9becb5ef23f9e0b4465f6e60e.gif" alt="learning" />
                        <div class="slide-content">
                            <h1>Узнай</h1>
                            <h2>Что значит быть сильной женщиной?</h2>
                            <div class="slide-txt">
                                <p>Читай статьи. Обсуждай. Статнь частью сообщества сильных женщин.
                                </p>
                                <button><a href="Catalog.aspx">Каталог статей</a></button>
                            </div>
                        </div>
                    </div>
                    <div class="slide" data-order="2">
                        <img src="https://i.pinimg.com/originals/dc/9b/15/dc9b153f55b2b4a233b12bf81139789a.gif" alt="create_jornal" />
                        <div class="slide-content">
                            <h1>Твори</h1>
                            <h2 style="color:brown">Стань движущей силой общества!</h2>
                            <div class="slide-txt">
                                <p>Пиши статьи. Делись своим опытом и рассуждениями. Помогай в поиске ответа на главный вопрос.</p>
                                <button><a href="Create.aspx">Авторство</a></button>
                            </div>
                        </div>
                    </div>
                    <div class="slide" data-order="3">
                        <img src="https://i.pinimg.com/originals/71/ed/89/71ed8939c5dff16c483d9a128d719dc2.gif" alt="form_laptop" />
                        <div class="slide-content">
                            <h1>Делись</h1>
                            <h2 style="color:darkslateblue">Твой опыт помогает авторам.</h2>
                            <div class="slide-txt">
                                <p>Принимая участие в опосах, ты помогаешь создателям писать более обоснованные статьи.</p>
                                <button><a href="Forms.aspx">Опросы</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slide-navigation__txt">
                <ul>
                    <li><span data-order="1">Узнавай</span></li>
                    <li><span data-order="2">Твори</span></li>
                    <li class="auto-style4" style="width: 67px; left: 0px; top: 0px"><span data-order="3" style="width: 51px">Делись</span></li>
                </ul>
            </div>
        </div>
    </div>


    <script> 
        var initialSlide = $('.slides-container [data-order="1"]');
        var initalSelected = $('.slide-navigation__txt [data-order="1"]');
        var mq_medium = window.matchMedia('(min-width: 860px)');
        var mq_big = window.matchMedia('(min-width: 1200px)');


        function activate_slide(order) {

            var unactiveSlide = $('.slide.active');
            var activeSlide = $('.slides-container [data-order="' + order + '"]');

            if (!(activeSlide.hasClass('active'))) {
                slide_in(activeSlide);
                slide_out(unactiveSlide);
            }
        }

        function slide_in(slide) {

            var _this = slide;

            animation_in(slide);
            _this.addClass('active');
            TweenMax.to(_this, 1, { autoAlpha: 1 }, '-=1');

        }

        function slide_out(slide) {

            var _this = slide;

            _this.css('z-index', '2');
            _this.removeClass('active');
            TweenMax.to(_this, 1, { autoAlpha: 0, onComplete: removeZ });

            function removeZ() {
                _this.css('z-index', '1');
            }

            animation_out(slide);
        }

        function animation_in(slide) {

            var title = slide.find('h1');
            var subtitle = $(slide).find('h2');
            var text = $(slide).find('p');
            var button = $(slide).find('button');
            var image = $(slide).find('img');

            TweenMax.fromTo(title, 0.6, { autoAlpha: 0, x: 100 }, { autoAlpha: 0.6, x: 0, ease: Power2.easeOut });
            TweenMax.fromTo(subtitle, 0.5, { autoAlpha: 0, x: -200 }, { autoAlpha: 1, x: 0, ease: Power2.easeOut }, '-0.1');
            TweenMax.fromTo(text, 0.8, { autoAlpha: 0, x: 50 }, { autoAlpha: 1, x: 0, ease: Power2.easeOut });
            TweenMax.fromTo(button, 0.5, { autoAlpha: 0 }, { autoAlpha: 1 });
            TweenMax.to(image, 0, { autoAlpha: 1, scale: 1 });
        }

        function animation_out(slide) {

            var title = slide.find('h1');
            var subtitle = $(slide).find('h2');
            var text = $(slide).find('p');
            var button = $(slide).find('button');
            var image = $(slide).find('img');

            TweenMax.to(title, 0.6, { autoAlpha: 0, x: 0 });
            TweenMax.to(subtitle, 0.5, { autoAlpha: 0, x: 200 });
            TweenMax.to(text, 0.5, { autoAlpha: 0 });
            TweenMax.to(button, 0.5, { autoAlpha: 0 });
            TweenMax.to(image, 1, { scale: 1.1 });

        }

        $('.slide-navigation__txt span').on('click', function () {

            var _this = $(this);
            var order = _this.data('order');
            var spans = $('.slide-navigation__txt span');
            var current = $('.active').data('order');

            spans.removeClass('active');
            _this.addClass('active');
            activate_slide(order);
            stagger_squares(order, current);
        });

        function stagger_squares(order, current) {
            var mq = 0.7;
            var moveY;
            var squares = $('.slide-navigation__squares .square');
            var staggerTime = -0.12;

            if (order < current) {
                staggerTime = staggerTime * -1;
            }

            if (mq_medium.matches) { mq = 1 }
            if (mq_big.matches) { mq = 1.3 }



            moveY = (order - 1) * (15 * mq);
            TweenMax.staggerTo(squares, 0.1, { y: moveY }, staggerTime);

        }



        $(document).ready(function () {

            initialSlide.addClass('active');
            initalSelected.addClass('active');
            TweenMax.to(initialSlide, 0.5, { autoAlpha: 1 });

        });

    </script>
</asp:Content>
