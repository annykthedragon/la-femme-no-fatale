<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Articles-Table.aspx.cs" Inherits="la_femme_no_fatale.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <strong>
        <h2 style="text-align: center;">Статьи на рассмотрении</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home-container" style="width: auto; height: auto; padding: 30px; margin-top: 66px; text-align: right;">
        <h4 style="color: #25a48d; text-align: left;">После проверки модератором данные статьи будет загружена на сайт. </h4>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
            <ContentTemplate>
                <% foreach (la_femme_no_fatale.Articles row in GetData())
                    {
                        Response.Write(String.Format(@"                        
                        <div style='text-align: left' class='article2'>{1} - '{0}'</div>
                        ", row.a_name, row.a_author));
                    }
                %>
                <em>
                    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="100"></asp:Timer>
                    <asp:Label ID="Label1" runat="server" Text="" Style="display: inline; font-size: small; color: #808080;"></asp:Label>
                    <asp:Button ID="ButtonQ" runat="server" Text="ОБНОВИТЬ" Style="display: inline; cursor: pointer; font-weight: bold; color: #D4AF7A; margin-left: 17px; width: auto" /> 
                </em>
                
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1"  />
                <asp:AsyncPostBackTrigger ControlID="ButtonQ" />
            </Triggers>
        </asp:UpdatePanel>
        <ul class="accordion">
            <li class="accordion-item">
                <h3 class="accordion-thumb" style="text-align: left">Подробнее</h3>
                <div class="accordion-panel">
                    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="padding: 7px; margin: 7px 0px 7px 7px; text-align: center" Height="100%" Width="100%" AllowSorting="True" BackColor="White" BorderColor="#CFB1CE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="a_author" HeaderText="АВТОР" SortExpression="a_author" />
                            <asp:BoundField DataField="a_name" HeaderText="НАЗВАНИЕ" SortExpression="a_name" />
                            <asp:BoundField DataField="a_time" HeaderText="ДАТА НАПИСАНИЯ" SortExpression="a_time" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LaFemmeDatabaseConnectionString %>" SelectCommand="SELECT [a_author], [a_name], [a_time] FROM [Articles]"></asp:SqlDataSource>
                </div>
            </li>
        </ul>
    </div>

</asp:Content>
