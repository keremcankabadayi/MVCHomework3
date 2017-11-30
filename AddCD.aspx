<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddCD.aspx.cs" Inherits="CDs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CDs]" DeleteCommand="DELETE FROM [CDs] WHERE [CDID] = ?" InsertCommand="INSERT INTO [CDs] ([Title], [Artist], [Year], [Duration]) VALUES (?, ?, ?, ?)" UpdateCommand="UPDATE [CDs] SET [Title] = ?, [Artist] = ?, [Year] = ?, [Duration] = ? WHERE [CDID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="CDID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Artist" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="Duration" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Artist" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="Duration" Type="Int32" />
            <asp:Parameter Name="CDID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CDID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" InsertText="Save" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

