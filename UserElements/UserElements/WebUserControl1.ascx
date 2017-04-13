<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="UserElements.WebUserControl1" %>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
<asp:RadioButtonList ID="RadioButtonList1"  runat="server" RepeatDirection="Horizontal">
<asp:ListItem ID="RadioButton1" value="1" runat="server" Text="м" />
<asp:ListItem ID="RadioButton2" value="0" runat="server" Text="ж" />
</asp:RadioButtonList><br />
<asp:DropDownList ID="DropDownList1" runat="server">
 <asp:ListItem Value="ФИТ"></asp:ListItem>
 <asp:ListItem Value="ХТИТ"></asp:ListItem>
 <asp:ListItem Value="ТТЛП"></asp:ListItem>
</asp:DropDownList><br />
<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
<asp:Button ID="Button1"  UseSubmitBehavior="false"  runat="server" Text="Ввод" />
<asp:Button ID="Button2"  UseSubmitBehavior="false" CausesValidation="false" runat="server" Text="Отказаться" />


<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Введите фамилию"
 ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Введите номер группы"
 ControlToValidate="TextBox5" Display="None"></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidatorTextBoxGroup" runat="server" ErrorMessage="Номер группы 1-100"
 ControlToValidate="TextBox5" MaximumValue="100" MinimumValue="1" Type="Integer" Display="None">
</asp:RangeValidator>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" />

