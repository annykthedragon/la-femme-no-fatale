<%@ Page Title="la femme fatale | ОПРОСЫ | Создать опрос" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MakeForms.aspx.cs" Inherits="la_femme_no_fatale.MakeForms" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cont" style="width: 600px; height: 570px; padding: 30px; left: 0px; top: 0px;">
        <div class="media" style="height: 60px; width: 546px">
            <button><a href="https://drive.google.com/file/d/1PdNqUQfnbQ5--CZYRaqNQYwZyqiOOThi/view?usp=sharing">Как создать опрос?</a></button>
            <button><a href="https://support.google.com/docs/answer/6281888?co=GENIE.Platform%3DDesktop&hl=ru">Как создать Google Form?</a></button>
        </div>
        <br />
        <h2>Проведите опрос в сообществе la femme не fatale.
        </h2>

        <label>

            <span>
                <asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label>
            </span>
            <asp:TextBox ID="TextBox1" runat="server" Style="font-size: medium" Height="23px">Ты кто?</asp:TextBox>

        </label>

        <label style="width: 402px">

            <span>
                <asp:Label ID="Label3" runat="server" Text="Ссылка на Google Form"></asp:Label>
            </span>
            <textarea runat="server" id="TextArea1" style="padding: 10px; width: 356px; height: 70px; margin-left: 0px; font-family: 'MS Sans Serif'; margin-bottom: 0; font-size: medium;">Встать ссылку(и) на созданную форму.</textarea>
        </label>

        <button type="button" class="submit">

            <asp:Button ID="Button1" runat="server" Text="ОТПРАВИТЬ" BorderColor="#D4AF7A" Style="cursor: pointer; font-weight: bold; color: #FFFFFF; margin-left: 17px" Width="227px" BorderStyle="None" OnClick="Button1_Click" />

        </button>

       <!-- <div class="media" style="color: brown;  margin-top: 10px; text-align: right; height: 54px;">
            <button style="font-size: x-small; margin-top: 32"><a href="Logout.aspx">Выйти</a></button>
        </div>-->
    </div>
</asp:Content>
