﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBookshelf.aspx.cs" Inherits="FinalProject.ViewBookshelf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Inventory - View Bookshelf</title>
    <meta name="description" content="Group Project, View Bookshelf" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" /> 
    <script src="scripts/jquery-3.3.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="col-md-12">
            <h1>
                <asp:Label ID="lblViewBooks" runat="server" Text="View Bookshelf:"></asp:Label>
            </h1>
            <div class="form-group">
            <%--<asp:Label ID="lblPrducts" runat="server" CssClass="col-md-3 control-label" Text="Products: "></asp:Label>--%>
            <div >
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="False" AutoGenerateColumns="False" DataKeyNames="Title" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="AuthorFName" HeaderText="First Name" SortExpression="Title" />
                        <asp:BoundField DataField="AuthorLName" HeaderText="Last Name" SortExpression="Title" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Title" />
                        <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Title" />
                    </Columns>                    
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />                    
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />                    
                </asp:GridView>  
                <br />
            </div>
        </div>
        </div>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IsbnTitleString %>" SelectCommand="SELECT [Title], [AuthorFName], [AuthorLName], [Category], [Rating] FROM [Table] ORDER BY [Title]">
</asp:SqlDataSource>        
    </form>
</body>
</html>
