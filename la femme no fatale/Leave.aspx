<%@ Page Title="la femme fatale | УДАЛИТЬ АККАУНТ " Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="la_femme_no_fatale.Leave" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="color: #FFFFFF; width: 70%; height: 46px; margin-left: 207px; background-color: #D4AF7A; font-variant: small-caps;">
        <asp:Label ID="Label1" runat="server" Style="vertical-align: central;" Text="Очень жаль с тобой расставаться."></asp:Label>
    </h2>

    <div id="Cont" class="cont" style="width: 600px; height: 700px; padding: 30px; left: 0px; top: 18px;">
        <h2>Удаление Аккаунта</h2>
        <br />

        <label>
            <span>Почта</span>
            <asp:TextBox ID="TextBox1" type="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Введите почту!" ForeColor="Red" Font-Size="XX-Small" ControlToValidate="TextBox1" ValidationGroup="LogIn" Font-Overline="False"></asp:RequiredFieldValidator>
        </label>
        <label>
            <span>Пароль</span>
            <asp:TextBox ID="TextBox2" type="password" runat="server"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Введите пароль!" ForeColor="Red" Font-Size="XX-Small" ControlToValidate="TextBox2" ValidationGroup="LogIn"></asp:RequiredFieldValidator>

        </label>

        <label style="width: 500px">

            <span>
                <asp:Label ID="Label3" runat="server" Text="Причина" Width="259px"></asp:Label>
            </span>
            <textarea runat="server" id="TextArea1" style="padding: 10px; width: 428px; height: 158px; margin-left: 0; font-family: 'MS Sans Serif'; font-size: medium;">Расскажешь, почему?</textarea>
        </label>

        <button type="button" class="submit">

            <asp:Button ID="Button1" class="Button1" runat="server" Text="УДАЛИТЬ АККАУНТ" BorderColor="#D4AF7A" Style="cursor: pointer; font-weight: bold; color: #FFFFFF; margin-left: 17px" Width="227px" BorderStyle="None" OnClick="Button1_Click" />

        </button>
    </div>
</asp:Content>
