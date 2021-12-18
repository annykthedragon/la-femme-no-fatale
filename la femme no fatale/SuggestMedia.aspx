<%@ Page Title="la femme fatale | МЕДИАТЕКА | Предложить" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SuggestMedia.aspx.cs" Inherits="la_femme_no_fatale.SuggestMedia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cont" style="width: 600px; height: 600px; padding: 30px;">
        <h2>Есть, что предложить?
        </h2>
        <h4>Чем больше ты предлогаешь, тем разнообразнее становится Медиатека!
        </h4>

        <label>

            <span>
                <asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label>
            </span>
            <asp:TextBox ID="TextBox1" runat="server" Style="font-size: medium" Height="23px">Ты кто?</asp:TextBox>

        </label>
        <label style="height: 54px; width: 400px">
            <span>
                <asp:Label ID="Label2" runat="server" Text="Тип"></asp:Label>
            </span>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="354px" style="font-size: medium; margin-left: 0">
                <asp:ListItem>Видео</asp:ListItem>
                <asp:ListItem>Музыка</asp:ListItem>
                <asp:ListItem>Кино и сериальчики</asp:ListItem>
                <asp:ListItem>Другое</asp:ListItem>
            </asp:DropDownList>
        </label>

        <label style="width: 402px">

            <span>
                <asp:Label ID="Label3" runat="server" Text="Содержимое"></asp:Label>
            </span>
            <textarea runat="server" id="TextArea1" style="padding: 10px; width: 356px; height: 70px; margin-left: 0px; font-family: 'MS Sans Serif'; margin-bottom: 0; font-size: medium;">Встать ссылку(и) на ресурс.</textarea>
        </label>

        <button type="button" class="submit">

            <asp:Button ID="Button1" runat="server" Text="ОТПРАВИТЬ" BorderColor="#D4AF7A" Style="cursor: pointer; font-weight: bold; color: #FFFFFF; margin-left: 17px" Width="227px" BorderStyle="None" OnClick="Button1_Click" />

        </button>
    </div>
</asp:Content>
