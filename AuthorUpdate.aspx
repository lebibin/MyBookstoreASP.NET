﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorUpdate.aspx.cs" Inherits="AuthorUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="Head1">
    <title>The Night Owl - Author List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <customControls:HeaderWithProps ID="Header1" runat="server" heading="Update Author" />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="au_id" DataSourceID="AccessDataSource1" 
        ForeColor="#333333" GridLines="None" Height="44px" Width="225px" OnItemUpdated="DetailView_ItemUpdate" OnItemCommand="DetailView_ItemCommand">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="au_id" HeaderText="Author ID" ReadOnly="True" 
                SortExpression="au_id">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="au_lname" HeaderText="Last Name" 
                SortExpression="au_lname">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="au_fname" HeaderText="First Name" 
                SortExpression="au_fname">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:CommandField ShowEditButton="True"></asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="C:\Users\Kevin\Dropbox\FEU-EAC\2013-2014\1st Term\ITWA213\ASP.NET\mybookstore.accdb" 
        DeleteCommand="DELETE FROM `authors` WHERE `au_id` = ?" 
        InsertCommand="INSERT INTO `authors` (`au_id`, `au_lname`, `au_fname`, `phone`, `address`, `city`, `state`, `zip`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT `au_id`, `au_lname`, `au_fname`, `phone`, `address`, `city`, `state`, `zip` FROM `authors` WHERE [au_id]=@au_id" 
        
        UpdateCommand="UPDATE `authors` SET `au_lname` = ?, `au_fname` = ?, `phone` = ?, `address` = ?, `city` = ?, `state` = ?, `zip` = ? WHERE `au_id` = ?">
        
        <SelectParameters>
            <asp:QueryStringParameter Name="au_id" QueryStringField="au_id" Type="Int16" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="au_lname" Type="String" />
            <asp:Parameter Name="au_fname" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="Double" />
            <asp:Parameter Name="au_id" Type="Int16" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </form>
</body>

</html>
