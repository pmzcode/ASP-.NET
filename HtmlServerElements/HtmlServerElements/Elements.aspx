<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Elements.aspx.cs" Inherits="HtmlServerElements.Elements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <p>HTMLInputButton <input id="Button1" type="button" value="button" runat="server" onserverclick="Button1_ServerClick"/></p>
    <p>HTMLInputReset <input id="Reset1" type="reset" value="reset" runat="server" onserverclick="Reset1_ServerClick"/></p>
    <p>HTMLInputSubmit <input id="Submit1" type="submit" value="submit" runat="server" onserverclick="Submit1_ServerClick"/></p>
    <p>HTMLInputText <input id="Text1" type="text" runat="server" onserverchange="Text1_ServerChange" /></p>
    <p>HTMLInputFile <input id="File1" type="file" runat="server" onserverclick="File1_ServerClick" onserverchange="File1_ServerChange"/></p>
    <p>HTMLInputPassword <input id="Password1" type="password" runat="server" onserverchange="Password1_ServerChange"/></p>
    <p>
        HTMLInputCheckbox <input id="Checkbox1" type="checkbox" runat="server" onserverchange="Checkbox1_ServerChange"/></p>
    <p>HTMLInputRadioButton 
        <input id="Radio1" checked="true" name="R1" type="radio" value="V1" runat="server" onserverchange="Radio1_ServerChange"/>
        <input id="Radio2" checked="false" name="R2" type="radio" value="V2" runat="server" onserverchange="Radio1_ServerChange"/></p>
    <p>HTMLTextArea <textarea id="TextArea1" cols="20" name="S1" rows="2" runat="server" onserverchange="TextArea1_ServerChange"></textarea></p>

    <p>HTMLSelect 
    <select id="Select1" name="D1" runat="server" onserverchange="Select1_ServerChange">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
    </select>
    </p>
    </form>
    </div>
</body>
</html>
