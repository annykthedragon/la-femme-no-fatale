<%@ Page Title="la femme fatale | СТАТЬИ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="la_femme_no_fatale.Catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<div style="text-align: center; width: 100%; height: 58px; color: #FFFFFF; margin-bottom: 0; background-color: #CFB1CE;"><h2>Каталог Статей</h2></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cards" style="z-index:0; height: auto">

        <div class="card" style="z-index:0">
            <div class="card__image-holder">
                <img class="card__image" src="https://i.pinimg.com/564x/93/00/21/930021902255377fd8dbe3438c0b36df.jpg" />
            </div>
            <div class="card-title">
                <a href="javascript:void(); " class="toggle-info btn">
                    <span class="left"></span>
                    <span class="right"></span>
                </a>

                <div>
                    <h2 style="text-align: left">Остаёмся дома! #quality_self-isolation </h2>
                </div>
                <h2><small style="background-color: #FFCCCC">Как расслабиться в период самоизоляции?</small></h2>

            </div>
            <div class="card-flap flap1">
                <div class="card-description">
                  Если вы задаётесь вопросом, как продуктивно провести время ...
                </div>
                <div class="card-flap flap2">
                    <div class="card-actions" >
                        <a class="btn" href="Article-1_Self-isolation.aspx">Читать дальше</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="card" style="z-index:0">
            <div class="card__image-holder">
                <img class="card__image" src="https://i.pinimg.com/564x/f8/6f/63/f86f6330d5d3003f9cbe839336d64df7.jpg" />
            </div>
            <div class="card-title">
                <a href="#" class="toggle-info btn">
                    <span class="left"></span>
                    <span class="right"></span>
                </a>
                <!--Следующие статьи находятся на этапе написания, поэтому пользователь пока может увидеть только превью-->
                <div>
                    <h2 style="text-align: left">Сильные женщины XIX века</h2>
                </div>
                <h2><small style="background-color: #CCCCFF">Что определяло женщину в «долгий XIX век»?</small></h2>

            </div>
            <div class="card-flap flap1">
                <div class="card-description">
                    Топ 10 сильных женщин XIX века, чьи биографии вдохновляют нас в 2020.
                </div>
                <div class="card-flap flap2">
                    <div class="card-actions">
                        <!--<a href="Article-2_Women19.aspx" class="btn">Читать дальше</a>-->
                        <a href="#" class="btn">Coming soon</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="card" style="z-index:0">
            <div class="card__image-holder">
                <img class="card__image" src="https://vignette.wikia.nocookie.net/glee/images/7/7c/Captura_de_pantalla_2013-02-15_a_la%28s%29_00.11.45.png/revision/latest/top-crop/width/360/height/360?cb=20130215061308" />
            </div>
            <div class="card-title">
                <a href="#" class="toggle-info btn">
                    <span class="left"></span>
                    <span class="right"></span>
                </a>

                <div>
                    <h2 style="text-align: left">Крушение института брака</h2>
                </div>
                <h2><small style="background-color: #FFFF99">Почему я не хочу выходить замуж (вообще)? </small></h2>

            </div>
            <div class="card-flap flap1">
                <div class="card-description">
                    Мы все слышали фразы вроде "вот выйдешь замуж, тогда..."
                </div>
                <div class="card-flap flap2">
                    <div class="card-actions">
                        <!--<a href="Article-3_NoMarriage.aspx" class="btn">Читать дальше</a>-->
                        <a href="#" class="btn">Coming soon</a>

                    </div>
                </div>
            </div>
        </div>






    </div>

    <script>
        $(document).ready(function () {
            var zindex = 10;

            $("div.card").click(function (e) {

                var isShowing = false;

                if ($(this).hasClass("show")) {
                    isShowing = true
                }

                if ($("div.cards").hasClass("showing")) {
                    // a card is already in view
                    $("div.card.show")
                        .removeClass("show");

                    if (isShowing) {
                        // this card was showing - reset the grid
                        $("div.cards")
                            .removeClass("showing");
                    } else {
                        // this card isn't showing - get in with it
                        $(this)
                            .css({ zIndex: zindex })
                            .addClass("show");

                    }

                    zindex++;

                } else {
                    // no cards in view
                    $("div.cards")
                        .addClass("showing");
                    $(this)
                        .css({ zIndex: zindex })
                        .addClass("show");

                    zindex++;
                }

            });
        });
    </script>
</asp:Content>
