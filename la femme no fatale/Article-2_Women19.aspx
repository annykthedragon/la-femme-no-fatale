<%@ Page Title="la femme fatale | СТАТЬИ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Article-2_Women19.aspx.cs" Inherits="la_femme_no_fatale.Article_2_Women19" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home-container" style="width: 1000px; height: 1900px; padding: 20px; padding-top: 40px;">
                <section>
            <div class="container" style="padding-bottom: 30px">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        </section>
        <section>
            <div class="container">

                <h1 style="color: #CC3300; line-height: 50px">Сильные женщины XIX века</h1>

                <h2 style="text-align: left">Что определяло женщину в «долгий XIX век»?
                </h2>
            </div>
        </section>


        <section>
            <div class="container">
                <p style="font-size: large">
                    Топ 10 сильных женщин XIX века, чьи биографии вдохновляют нас в 2020.
                </p>
            </div>
        </section>
        <section>
            <div class="container" style="text-align: center">
                <img src="" />
            </div>
            <p class="auto-style11" style="font-size: xx-small; color: #669999;">&copy;Debbie Balboa</p>
        </section>

        <section>
            <div class="container" style="text-align: center">
                <div class="media" style="height: 60px; width: 746px">
                    <button style="font-size: small"><a href="Catalog.aspx">Вернуться к каталогу</a></button>
                </div>
            </div>
        </section>
        <!-- Комментарии -->
        <!--"Please specify correct base domain name in app settings, or use widget only in ваш сайт",
            Это сообщение появляется всегда при предпросмотре, но оно заменяется на комментарии при публикации.-->
        <section>
            <div class="container">
                <div id="vk_comments"></div>
            </div>
        </section>


    </div>


    <script type="text/javascript">
        VK.init({ apiId: 7398045, onlyWidgets: true });
    </script>
    <script type="text/javascript">
        VK.Widgets.Comments("vk_comments", { limit: 10, attach: "*" });
    </script>


</asp:Content>
