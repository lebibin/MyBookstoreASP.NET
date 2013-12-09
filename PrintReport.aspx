<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintReport.aspx.cs" Inherits="PrintReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Author List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css" media="screen" />
    <link href="printstyle.css" rel="Stylesheet" type="text/css" media="print" />
</head>
<body>
    <form id="form1" runat="server">
    <customControls:HeaderWithProps ID="Header1" runat="server" heading="Print Report" />
    <p>
    
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="AccessDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="pub_name" HeaderText="Publisher" 
                    SortExpression="pub_name" />
                <asp:BoundField DataField="full_name" HeaderText="Author" ReadOnly="True" 
                    SortExpression="full_name" />
            </Columns>
            <AlternatingRowStyle CssClass="reportAltRow" />
            <RowStyle CssClass="reportRow" />
            <HeaderStyle CssClass="reportHeader" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="C:\Users\Kevin\Dropbox\FEU-EAC\2013-2014\1st Term\ITWA213\ASP.NET\mybookstore.accdb" 
            DeleteCommand="DELETE FROM `titles` WHERE `title_id` = ?" 
            InsertCommand="INSERT INTO `titles` (`title_id`, `pub_id`, `au_id`, `title`, `price`, `pubdate`, `notes`) VALUES (?, ?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT titles.title, titles.price, publishers.pub_name, authors.au_fname + '' + authors.au_lname AS full_name FROM ((titles INNER JOIN publishers ON titles.pub_id = publishers.pub_id) INNER JOIN authors ON titles.title_id = authors.au_id) ORDER BY titles.title" 
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
    
    
    </p>
    </form>
</body>
</html>
