<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TitleInsert.aspx.cs" Inherits="TitleInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Title List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <customControls:HeaderWithProps ID="Header1" runat="server" heading="Insert Title" />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="title_id" DataSourceID="AccessDataSource2" Height="50px" 
            Width="220px" CellPadding="4" DefaultMode="Insert" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="title_id" HeaderText="Title ID" ReadOnly="True" 
                    SortExpression="title_id" />
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="price" runat="server" Text="<%# Bind('price') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="price" Display="Dynamic" ErrorMessage="Price is Required!" CssClass="validationError"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="price" ErrorMessage="Price is Invalid!" MaximumValue="100" 
                            MinimumValue="1" Type="Double" CssClass="validationError"></asp:RangeValidator>
                    </EditItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Publication Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="pubdate" runat="server" Text="<%# Bind('pubdate') %>" />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="pubdate" ErrorMessage="Date is Invalid!" 
                            MaximumValue="1/1/2020" MinimumValue="1/1/2000" Type="Date" CssClass="validationError"></asp:RangeValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ForeColor="Black" />
        <br />

        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="C:\Users\chris\Desktop\mybookstore\mybookstore.accdb" 
            DeleteCommand="DELETE FROM `titles` WHERE `title_id` = ?" 
            InsertCommand="INSERT INTO `titles` (`title_id`, `pub_id`, `au_id`, `title`, `price`, `pubdate`, `notes`) VALUES (?, ?, ?, ?, ?, ?, ?)"

            SelectCommand="SELECT `title_id`, `pub_id`, `au_id`, `title`, `price`, `pubdate`, `notes` FROM `titles`" 
            UpdateCommand="UPDATE `titles` SET `pub_id` = ?, `au_id` = ?, `title` = ?, `price` = ?, `pubdate` = ?, `notes` = ? WHERE `title_id` = ?">
            <DeleteParameters>
                <asp:Parameter Name="title_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title_id" Type="Int16" />
                <asp:Parameter Name="pub_id" Type="Double" />
                <asp:Parameter Name="au_id" Type="Double" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pub_id" Type="Double" />
                <asp:Parameter Name="au_id" Type="Double" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="title_id" Type="Int16" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
    </form>
</body>
</html>
