<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HandlersTest.aspx.cs" Inherits="HttpHandlers.HandlersTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 
</head>
<body onload="CreateXMLHttpRequest()">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GET" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="POST" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="PUT" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="403" />
        <asp:TextBox ID="TextBox1" runat="server" Width="40px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Width="40px"></asp:TextBox>
        
        <asp:Button ID="Button6" runat="server" Text="SUM" OnClientClick="CalculateSum()"/>
        
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <script type="text/javascript">
        var xhr;

        function CreateXMLHttpRequest() {
            try {
                xhr = new XMLHttpRequest();
            }
            catch (err) {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            }
        }

        function CalculateSum() {
            let lOperand = document.getElementById("TextBox1").value;
            let rOperand = document.getElementById("TextBox2").value;

            let body = "A=" + lOperand + "&B=" + rOperand;

            console.log(xhr);
            xhr.open("POST", "http://172.16.0.86:40307/lr2/sum.pes", true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            xhr.onreadystatechange = apply;

            xhr.send(body);

            return false;
        }

        function apply() {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    alert(xhr.responseText);
                    
                }
            }
        }
    </script>
    </form>
</body>
</html>
