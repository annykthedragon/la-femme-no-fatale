<%@ Page Title="la femme fatale | МЕДИАТЕКА " Language="C#" Async="true" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Media.aspx.cs" Inherits="la_femme_no_fatale.Media" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <div style="text-align: center; width: 100%; height: 58px; color: #FFFFFF; margin-bottom: 0; background-color: #CFB1CE;"><h2>Медиатека</h2></div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home-container" style="width: 65%; height: auto; padding: 30px; border-color: #000000; margin-top: 80px;">
        <div class="media" style="height: auto; width:100%; text-align: center">
            <button><a href="SuggestMedia.aspx">Предложить</a></button>
            <button>
                <script type="text/javascript">
                    document.write(VK.Share.button(false, { type: "custom", text: "Поделиться" }));
                </script>
            </button>
        </div>
        <br />
        <br />
        <ul class="accordion">
            <li class="accordion-item is-active">
                <h3 class="accordion-thumb">Vids не fatale</h3>
                <p class="accordion-panel">
                    Смотрите нашу еженедельную подборку вдохновляющих видео талантливых создателей, ставьте лайки и подписывайтесь на их каналы.
                </p>

                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/videoseries?list=PLGMM6hipjICFMtIGgL3XNf3x0Sig2CzVK" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </li>

            <li class="accordion-item">
                <h3 class="accordion-thumb">Sound не fatale</h3>
                <p class="accordion-panel">
                    Создаём саундтрек к вашей жизни. Наслаждайтесь!)
                </p>
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/videoseries?list=PLGMM6hipjICHyJ_doEYA6xVFBZs2RfLP0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </li>

            <li class="accordion-item">
                <h3 class="accordion-thumb">Watch не fatale</h3>
                <p class="accordion-panel">
                    Опять не знаете, что посмотреть? У нас есть идеи.
                </p>
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/videoseries?list=PLGMM6hipjICG9BkxFCbvwUrRNUVUSSXEb" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

            </li>

        </ul>

    </div>
</asp:Content>
