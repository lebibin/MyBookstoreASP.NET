<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Titles.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Title List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">    
    <customControls:HeaderWithProps ID="Header1" runat="server" heading="Titles" />
    
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="title_id" DataSourceID="AccessDataSource1">
            <ItemTemplate>
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price", "${0:f2}") %>' />
                <br />
                pubdate:
                <asp:Label ID="pubdateLabel" runat="server" Text='<%# Eval("pubdate", "{0:d}") %>' />
            </ItemTemplate>
        </asp:DataList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="C:\Users\Kevin\Dropbox\FEU-EAC\2013-2014\1st Term\ITWA213\ASP.NET\mybookstore.accdb" DeleteCommand="DELETE FROM `titles` WHERE `title_id` = ?" InsertCommand="INSERT INTO `titles` (`title_id`, `pub_id`, `au_id`, `title`, `price`, `pubdate`, `notes`) VALUES (?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `title_id`, `pub_id`, `au_id`, `title`, `price`, `pubdate`, `notes` FROM `titles`" UpdateCommand="UPDATE `titles` SET `pub_id` = ?, `au_id` = ?, `title` = ?, `price` = ?, `pubdate` = ?, `notes` = ? WHERE `title_id` = ?">
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
        </p>
    </form>
</body>
</html>
