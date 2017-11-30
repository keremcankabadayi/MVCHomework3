<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="945px">
        <Columns>
            <asp:ImageField HeaderText="CoverImage" DataImageUrlField="id" DataImageUrlFormatString="~/images/{0}.jpg" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="BookInfo.aspx?id={0}" Text="View Details" />
        </Columns>
    </asp:GridView>
</asp:Content>

