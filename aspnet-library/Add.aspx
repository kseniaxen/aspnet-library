<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="aspnet_library.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Введите название книги:" runat="server" />
            <asp:TextBox ID="nameTextBox" runat="server" />

            <br/>
            <asp:Label Text="Имя автора:" runat="server" />
            <asp:TextBox ID="authorTextBox" runat="server" />

            <br/>
            <asp:Label Text="Год издательства:" runat="server" />
            <asp:TextBox ID="datePublishingTextBox" runat="server" />

            <br/>
            <asp:Label Text="Название издательства:" runat="server" />
            <asp:TextBox ID="publishingTextBox" runat="server" />

            <br/>
            <asp:Label Text="Количество страниц:" runat="server" />
            <asp:TextBox ID="pagesTextBox" runat="server" />
              <asp:RegularExpressionValidator
                ErrorMessage="Число вводить надо!"
                ControlToValidate="pagesTextBox"
                runat="server"
                ForeColor="Red"
                ValidationExpression="[0-9]" />
            <br/>
            <asp:Label Text="Количество экземпляров в библиотеке:" runat="server" />
            <asp:TextBox ID="amountTextBox" runat="server" />
             <asp:RegularExpressionValidator
                ErrorMessage="Число вводить надо!"
                ControlToValidate="amountTextBox"
                runat="server"
                ForeColor="Red"
                ValidationExpression="[0-9]" />
            <br />
            
            <asp:Button ID="addButton" Text="Добавить книгу" runat="server" OnClick="addButton_Click" />
        </div>
    </form>
</body>
</html>
