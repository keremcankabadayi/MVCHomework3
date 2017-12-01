<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="BookInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [Books]"
        DeleteCommand="DELETE FROM [Books] WHERE [ID] = ?"
        InsertCommand="INSERT INTO [Books] ([Title], [Author], [Publisher], [PageNumber], [CoverImage]) VALUES (?, ?, ?, ?, ?)"
        UpdateCommand="UPDATE [Books] SET [Title] = ?, [Author] = ?, [Publisher] = ?, [PageNumber] = ?, [CoverImage] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>                               
            <asp:Parameter Name="Title" Type="String" />            
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="PageNumber" Type="Int32" />
            <asp:Parameter Name="CoverImage" Type="String" />
        </InsertParameters>
        
        
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="16px" Width="831px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="You can't leave empty Title area"
                        ForeColor="Red" Text="*Required"
                        ControlToValidate="TextBox1">

                    </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author" SortExpression="Author">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="You can't leave empty this area"
                        ForeColor="Red" Text="*Required"
                        ControlToValidate="TextBox4">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Publisher" SortExpression="Publisher">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Publisher") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Publisher") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="You can't leave empty this area"
                        ForeColor="Red" Text="*Required"
                        ControlToValidate="TextBox5">

                    </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Publisher") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PageNumber" SortExpression="PageNumber">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PageNumber") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PageNumber") %>'></asp:TextBox>

                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        Operator="DataTypeCheck" Type="Integer" 
                        ControlToValidate="TextBox2"
                        ForeColor="Red"
                        Text="*It must be number"
                        ErrorMessage="CompareValidator"
                        >
                    </asp:CompareValidator>

                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PageNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CoverImage" SortExpression="CoverImage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CoverImage") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CoverImage") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" Type="Integer" 
                       MinimumValue="0" MaximumValue="5" ControlToValidate="TextBox3" 
                       ErrorMessage="*Choose 1-5 or 0 for Default Image"                       
                       ></asp:RangeValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CoverImage") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" InsertText="Save" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

