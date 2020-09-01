<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aspnet_library.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:Button ID="add" runat="server" Text="Add book" OnClick="AddBook_Click" />
             
            <asp:SqlDataSource ID="getLibrary" runat="server"
                     ConnectionString="<%$ ConnectionStrings:SqlServerConnectionString %>"
                     SelectCommand="SELECT id, name, author, datePublishing, publishing, pages, amount FROM Library" 
                     UpdateCommand="Update Library SET name=@name, author=@author, datePublishing=@datePublishing, publishing=@publishing, pages=@pages, amount=@amount  Where id=@id"
                     DeleteCommand="Delete Library Where id=@id"/>
             <asp:GridView ID="GridView" runat="server"
                    DataSourceID="getLibrary" AutoGenerateColumns="False" DataKeyNames="id" AutoGenerateSelectButton="false">
                    <Columns>
                        <asp:CommandField ShowEditButton="true" ShowDeleteButton="true"  ShowCancelButton="true"  ButtonType="Link" />
                        <asp:BoundField DataField="id" HeaderText="N" ReadOnly="true" />
                        <asp:BoundField DataField="name" HeaderText="Книга" />
                        <asp:BoundField DataField="author" HeaderText="Имя автора" />
                        <asp:BoundField DataField="datePublishing" HeaderText="Год издательства" />
                        <asp:BoundField DataField="publishing" HeaderText="Название издательства" />
                        <asp:BoundField DataField="pages" HeaderText="Количество страниц" />
                        <asp:BoundField DataField="amount" HeaderText="Количество экземпляров в библиотеке" />
                    </Columns>
        </asp:GridView>
        </div>
    </form>
</body>
</html>
