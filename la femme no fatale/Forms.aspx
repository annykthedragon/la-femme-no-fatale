<%@ Page Title="la femme fatale | ОПРОСЫ " Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="la_femme_no_fatale.Forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div style="text-align: center; width: 100%; height: 58px; color: #FFFFFF; margin-bottom: 0; background-color: #CFB1CE;"><h2>Опросы</h2></div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="media" style="height: 19px; width: auto; margin-top: 72px;">
        <button><a href="MakeForms.aspx">Провести опрос</a></button>
    </div>

    <div class="home-container" style="width: 80%; height: 550px; padding: 30px; margin-top: 66px;">
        <iframe src="https://docs.google.com/forms/d/e/1FAIpQLScGUEeb7MZbcx7Kez1Qm5JGKiQV5whmLBYCYlUIWHf-iBII4w/viewform?embedded=true" width="100%" height="520" frameborder="0" marginheight="0" marginwidth="0">Загрузка…</iframe>
    </div>
    <div class="home-container" style="width: 80%; height: 550px; padding: 30px; margin-top: 66px;">
        <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSdpTmPygw0fwBpePIp2DCou7vWVGZCAIJUM-iJWAqHedpzRVg/viewform?embedded=true" width="100%" height="520" frameborder="0" marginheight="0" marginwidth="0">Загрузка…</iframe>
    </div>
    <div class="home-container" style="width: 80%; height: 550px; padding: 30px; margin-top: 66px;">
        <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfLnXywr5vAJtWdFXr6oULyxppmNi1iK64FILvZG7sTCGDlGQ/viewform?embedded=true" width="100%" height="520" frameborder="0" marginheight="0" marginwidth="0">Загрузка…</iframe>
    </div>
</asp:Content>
