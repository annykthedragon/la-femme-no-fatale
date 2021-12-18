<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="FeedbackAlone.aspx.cs" Inherits="la_femme_no_fatale.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       Обратная связь
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home-container" style="width: 700px; height: 710px; padding: 30px; margin-top: 66px;">
        <h2>Форма обращения к администратору сайта
        </h2>

        <label>

            <span>
                <asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label>
            </span>
            <asp:TextBox ID="TextBox1" runat="server" Style="font-size: medium" Height="23px">Как к Вам обращаться?</asp:TextBox>

        </label>
        <label style="height: 54px; width: 400px">
            <span>
                <asp:Label ID="Label2" runat="server" Text="Тема"></asp:Label>
            </span>
            <asp:TextBox ID="TextBox2" runat="server" Style="font-size: medium" Height="23px">Укажите тему письма.</asp:TextBox>

        </label>

        <label style="width: 500px">

            <span>
                <asp:Label ID="Label3" runat="server" Text="Содержимое"></asp:Label>
            </span>
            <textarea runat="server" id="TextArea1" style="padding: 10px; width: 428px; height: 158px; margin-left: 0; font-family: 'MS Sans Serif'; font-size: medium;">Расскажите, о Вашем опыте использования la femme не fatale.</textarea>
        </label>

        <button type="button" class="submit">

            <asp:Button ID="Button1" runat="server" Text="ОТПРАВИТЬ" BorderColor="#D4AF7A" Style="cursor: pointer; font-weight: bold; color: #FFFFFF; margin-left: 17px" Width="227px" BorderStyle="None" OnClick="Button1_Click" />

        </button>
    </div>
</asp:Content>
