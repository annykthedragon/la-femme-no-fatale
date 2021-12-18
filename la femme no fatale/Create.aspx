<%@ Page Title="la femme fatale | ТВОРИ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="la_femme_no_fatale.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="cont" style="width: auto; height: auto; padding: 30px;">

        <h2>Есть, что сказать? Пишите свои статьи. </h2>

        <label>

            <span>
                <asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label>
            </span>
            <asp:TextBox ID="TextBox1" runat="server" Style="font-size: medium" Height="23px">Как тебя звать?</asp:TextBox>

        </label>
        <label style="height: auto; width: auto">
            <span>
                <asp:Label ID="Label2" runat="server" Text="Тема"></asp:Label>
            </span>
            <asp:TextBox ID="TextBox2" runat="server" Style="font-size: medium" Height="28px">Укажи тему статьи</asp:TextBox>

        </label>

        <label style="width: auto">

            <span>
                <asp:Label ID="Label3" runat="server" Text="Содержимое"></asp:Label>
            </span>
            <br />
            <textarea runat="server" id="TextArea1" style="padding: 10px; width: 95%; height: 200px; margin-left: 0; font-family: 'MS Sans Serif';">О чём хочешь рассказать? Изображения прикрепляются в виде ссылок.</textarea>
        </label>

        <button type="button" class="submit">

            <asp:Button ID="Button1" runat="server" Text="ОТПРАВИТЬ" BorderColor="#D4AF7A" Style="cursor: pointer; font-weight: bold; color: #FFFFFF; margin-left: 17px" Width="227px" BorderStyle="None" OnClick="Button1_Click" />

        </button>
        <div class="media" style="text-align: center; margin-bottom: 25px">
            <button style="font-size: small"><a href="Articles-Table.aspx">Статьи на рассмотрении</a></button>
            <button style="font-size: small">
                <a href="Catalog.aspx">Вернуться к каталогу статей</button>
        </div>
        <br />

    </div>
</asp:Content>
