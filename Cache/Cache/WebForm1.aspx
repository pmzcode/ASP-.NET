<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Cache.WebForm1" %>
<%@ OutputCache Duration="7" VaryByParam="None" %>

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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Time"></asp:Label>
        <p>А эта дата нет: </p>
     
        <asp:Substitution ID="Substitution1" runat="server" MethodName="GetDate" />
        <br />
     
    </form>
</body>
</html>
