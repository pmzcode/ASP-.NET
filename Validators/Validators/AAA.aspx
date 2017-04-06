<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AAA.aspx.cs" Inherits="Validators.AAA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 463px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="v1"/>
        <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="v1">
        </asp:DropDownList>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
             ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"
              ValidationGroup="v1"> Не введено значение TextBox
            </asp:RequiredFieldValidator>
        </p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
         ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList1"
          ValidationGroup="v1"> Не введено значение DropDownList
        </asp:RequiredFieldValidator>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="v2"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="v2"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="v2"/>
        </p>
        <p>
        <asp:RangeValidator ID="RangeValidator1" runat="server"
        ControlToValidate="TextBox2" ErrorMessage="Значение не входящее в диапозон" ValidationGroup="v2"
        SetFocusOnError="True" Type="Integer"
        MinimumValue="100" MaximumValue="200">
        </asp:RangeValidator>
        </p>
        <asp:RangeValidator ID="RangeValidator2" runat="server"
        ControlToValidate="TextBox3" ErrorMessage="Значение не входящее в диапозон" ValidationGroup="v2"
        SetFocusOnError="True" Type="Date"
        MinimumValue="01.01.2017" MaximumValue="01.04.2017">
        </asp:RangeValidator>
        
        <p>
            <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="v3"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="v3"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="Button" ValidationGroup="v3"/>
        </p>

        
        <p>
            <asp:CompareValidator ID="CompareValidator1" runat="server"
             ErrorMessage="Значение TextBox4 не меньше TextBox5" Type="Date" 
             ValidationGroup="v3" ControlToValidate="TextBox4" ControlToCompare="TextBox5" Operator="LessThan">
            </asp:CompareValidator>
        </p>

        
        <p>
            <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="v4"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" ValidationGroup="v4" Text="Button" />
        </p>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
         ErrorMessage="Не email" ControlToValidate="TextBox6" ValidationGroup="v4"
         ValidationExpression="\S+@\S+\.\S+">
        </asp:RegularExpressionValidator>

        
        <p>
            <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="v5"></asp:TextBox>
            <asp:Button ID="Button5" runat="server" Text="Button" ValidationGroup="v5"/>
        </p>
        <asp:CustomValidator ID="CustomValidator1" runat="server"
         ErrorMessage="Неверное число" ValidationGroup="v5" ControlToValidate="TextBox7" 
         ClientValidationFunction="CheckNumber" OnServerValidate="CustomValidator1_ServerValidate">
        </asp:CustomValidator>

        <script type="text/javascript">
             function CheckNumber(a) { 
              a.IsValid = (a.value%1 ==0 && a.value%a.value==0)    
             }
          </script>  
    </form>
</body>
</html>
