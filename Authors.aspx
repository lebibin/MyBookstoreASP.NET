<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Authors.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Author List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <customControls:HeaderWithProps ID="Header1" runat="server" heading="Authors" />
    
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="au_id" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="au_fname" HeaderText="First Name" SortExpression="au_fname" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone"></asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="au_id" DataNavigateUrlFormatString="~/AuthorUpdate.aspx?au_id={0}" HeaderText="Controls" Text="Edit"></asp:HyperLinkField>
                <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AuthorInsert.aspx">Add New Author</asp:HyperLink>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="C:\Users\Kevin\Dropbox\FEU-EAC\2013-2014\1st Term\ITWA213\ASP.NET\mybookstore.accdb" DeleteCommand="DELETE FROM `authors` WHERE `au_id` = ?" InsertCommand="INSERT INTO `authors` (`au_id`, `au_lname`, `au_fname`, `phone`, `address`, `city`, `state`, `zip`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `au_id`, `au_lname`, `au_fname`, `phone`, `address`, `city`, `state`, `zip` FROM `authors`" UpdateCommand="UPDATE `authors` SET `phone` = ? WHERE `au_id` = ?">
            <DeleteParameters>
                <asp:Parameter Name="au_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="au_id" Type="Int16" />
                <asp:Parameter Name="au_lname" Type="String" />
                <asp:Parameter Name="au_fname" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="zip" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="au_id" Type="Int16" />
            </UpdateParameters>
        </asp:AccessDataSource>
        </p>
    </form>
</body>
</html>
