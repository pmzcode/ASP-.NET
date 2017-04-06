<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBB.aspx.cs" Inherits="Validators.BBB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="v1"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Фамилия"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="v1"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Отчество"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="v1"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Почта"></asp:Label>
        </p>
         <p>
            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="v1"></asp:TextBox>
             <asp:Label ID="Label5" runat="server" Text="Сумма"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="v1"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Дата рождения"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox7" TextMode="Password" runat="server" ValidationGroup="v1"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" Text="Пароль"></asp:Label>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="v1"/>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="v1"/>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Oшибка а e-mail адресе " ControlToValidate="TextBox4" ValidationGroup="v1"
        Display="None" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
        
    <asp:RangeValidator ID="RangeValidator2" runat="server" 
        ControlToValidate="TextBox5" Display="None" 
        ErrorMessage="Сумма должна быть в пределах [1000, 2000]" MaximumValue="2000" 
        MinimumValue="1000" Type="Integer" ValidationGroup="v1"></asp:RangeValidator>

        <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="TextBox6" Display="None" 
        ErrorMessage="Дата не более 2017" MaximumValue="01.01.2017" 
        MinimumValue="01.01.0001" Type="Date" ValidationGroup="v1"></asp:RangeValidator>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
         ErrorMessage="Имя должно быть только на русском языке и не более 32"
         ControlToValidate="TextBox1" Display="None" ValidationExpression="^[а-яА-ЯёЁъЪ]{1,32}$"
         ValidationGroup="v1"></asp:RegularExpressionValidator>

         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
         ErrorMessage="Фамилия должна быть только на русском языке и не более 32"
         ControlToValidate="TextBox2" Display="None" ValidationExpression="^[а-яА-ЯёЁъЪ]{1,32}$"
         ValidationGroup="v1"></asp:RegularExpressionValidator>

         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
         ErrorMessage="Отчество должно быть только на русском языке и не более 32"
         ControlToValidate="TextBox3" Display="None" ValidationExpression="^[а-яА-ЯёЁъЪ]{1,32}$"
         ValidationGroup="v1"></asp:RegularExpressionValidator>

         
         <asp:CustomValidator ID="CustomValidatorPass" runat="server" ErrorMessage="Длина не более 7 и уникальные символы"
          ControlToValidate="TextBox7" Display="None" OnServerValidate="CustomValidatorPass_ServerValidate"
          ValidationGroup="v1">
         </asp:CustomValidator>
      
    </form>
</body>
</html>
