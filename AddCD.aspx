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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CDID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="831px">
        <Fields>
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="You can't leave empty this area"
                        ForeColor="Red" Text="*Required"
                        ControlToValidate="TextBox1">
                    </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Artist" SortExpression="Artist">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Artist") %>'></asp:TextBox>                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Artist") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="You can't leave empty this area"
                        ForeColor="Red" Text="*Required"
                        ControlToValidate="TextBox2">
                    </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Artist") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Year" SortExpression="Year">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Year") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Year") %>'></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        Operator="DataTypeCheck" Type="Integer" 
                        ControlToValidate="TextBox3"
                        ForeColor="Red"
                        Text="*It must be number"
                        ErrorMessage="CompareValidator"
                        >
                    </asp:CompareValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Year") %>'></asp:Label>

                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Duration" SortExpression="Duration">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Duration") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Duration") %>'></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server"
                        Operator="DataTypeCheck" Type="Integer" 
                        ControlToValidate="TextBox4"
                        ForeColor="Red"
                        Text="*It must be number"
                        ErrorMessage="CompareValidator">
                    </asp:CompareValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Duration") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" InsertText="Save" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

