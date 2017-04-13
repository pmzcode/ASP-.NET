<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="UserElements.WebForm2" %>
<%@ Register TagPrefix="mycontrol" TagName="My" Src="~/WebUserControl1.ascx" %> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <mycontrol:My runat="server" ID="test" Btn1="Регистрация" Name="egor"></mycontrol:My>
    </div>
    </form>
</body>
</html>
