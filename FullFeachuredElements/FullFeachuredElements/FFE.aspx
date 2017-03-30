<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FFE.aspx.cs" Inherits="FullFeachuredElements.FFE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
    
    <div style="height: 178px; width: 602px">
    <b>MultiView</b><br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" 
            onactiveviewchanged="MultiView1_ActiveViewChanged">      
        <asp:View ID="View1" runat="server">
          <asp:Label ID="Label1" runat="server" Text="View1"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 26px" 
            Width="222px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-left: 50px" 
            Text="Button1" onclick="Button1_Click"/>
            <br /><br />






            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#E6E2D8" 
            BorderColor="#999999" BorderWidth="1px" CancelButtonText="Остановить" 
            DisplayCancelButton="True" FinishCompleteButtonText="Подтвердить" 
            FinishPreviousButtonText="Назад" Font-Names="Verdana" Font-Size="0.8em" 
            Height="229px" StartNextButtonText="Дальше" StepNextButtonText="Дальше" 
            StepPreviousButtonText="Назад" Width="712px" 
            onactivestepchanged="Wizard1_ActiveStepChanged" 
            onfinishbuttonclick="Wizard1_FinishButtonClick" BorderStyle="Solid">
                <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Введите ФИО">            
                 <asp:Table ID="Table1" runat="server" Height="89px" style="margin-left: 69px; margin-top: 0px;" 
                     Width="272px">
                     <asp:TableRow runat="server">
                         <asp:TableCell runat="server">
                            <asp:Label ID="Label2" runat="server" Text="Фамилия" Font-Size="Medium" 
                                 Width="100px" Font-Names="Courier New" Height="20px"></asp:Label>                                                  
                         
                    </asp:TableCell>
                         <asp:TableCell runat="server">
                          <asp:TextBox ID="TextBox4" runat="server" Height="20px" 
                                style="margin-left: 0px" Width="180px"></asp:TextBox>                                                                     
                          
                    </asp:TableCell>
                     </asp:TableRow>
                     <asp:TableRow runat="server">
                         <asp:TableCell runat="server">
                               <asp:Label ID="Label4" runat="server" Text="Имя" Font-Size="Medium" 
                                  Width="100px" Font-Names="Courier New" Height="20px"></asp:Label>                            
                         
                        </asp:TableCell>
                         <asp:TableCell runat="server">
                         <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" 
                                       Width="180px" Height="20px"></asp:TextBox>        
                         
                        </asp:TableCell>
                     </asp:TableRow>
                     <asp:TableRow runat="server">
                         <asp:TableCell runat="server">
                         <asp:Label ID="Label5" runat="server" Text="Отчество" Font-Size="Medium" 
                                 Width="100px" Font-Names="Courier New" Height="20px"></asp:Label>   
                          
                        </asp:TableCell>
                         <asp:TableCell runat="server">
                         <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" 
                                       Width="180px" Height="20px"></asp:TextBox> 
                         
                        </asp:TableCell>
                     </asp:TableRow>
                 </asp:Table>                 
                 <br /><br /> <br /><br/>     
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Язык">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    Font-Names="Courier New" Font-Size="Medium" Width="379px">
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>C#</asp:ListItem>
                    <asp:ListItem>C++</asp:ListItem>
                    <asp:ListItem>JavaScript</asp:ListItem>
                    <asp:ListItem>Python</asp:ListItem>
                </asp:RadioButtonList>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Доп. навыки">
                 
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Names="Courier New" 
                    Font-Size="Medium" RepeatDirection="Horizontal" style="margin-left: 60px">
                    <asp:ListItem>SQL</asp:ListItem>
                    <asp:ListItem>NodeJS</asp:ListItem>
                    <asp:ListItem>Git</asp:ListItem>
                </asp:CheckBoxList>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Зарплата">
                <asp:ListBox ID="ListBox1" runat="server" Height="92px" Width="223px">
                    <asp:ListItem>100$</asp:ListItem>
                    <asp:ListItem>300$</asp:ListItem>
                    <asp:ListItem>500$</asp:ListItem>
                    <asp:ListItem>1000$</asp:ListItem>
                    <asp:ListItem>2000$</asp:ListItem>
                </asp:ListBox>
            </asp:WizardStep>

            <asp:WizardStep runat="server" Title="Дата">
                <asp:Calendar ID="Calendar1" runat="server"  
            NextPrevFormat="FullMonth" onselectionchanged="Calendar1_SelectionChanged" 
            SelectionMode="DayWeek">
        </asp:Calendar>
            </asp:WizardStep>

            <asp:WizardStep runat="server" Title="Подтверждение">
                <asp:Label ID="Finish" runat="server" Font-Names="Courier New" 
                    Font-Size="Medium"></asp:Label>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>






        </asp:View>
        <asp:View ID="View2" runat="server">
            View2<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 26px" 
                Width="222px"></asp:TextBox>
            &nbsp;<asp:Button ID="Button2" runat="server" style="margin-left: 50px" 
                Text="Button2" onclick="Button2_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br /><br />
            <asp:TreeView ID="TreeView1" runat="server" NodeWrap="True" 
        onselectednodechanged="TreeView1_SelectedNodeChanged" 
        ontreenodecheckchanged="TreeView1_TreeNodeCheckChanged" ShowLines="True">
        <Nodes>
            <asp:TreeNode Text="1" Value="1" Expanded="False" Checked="True" 
                ImageUrl="~/Images/stop.png">
                   <asp:TreeNode Text="1.1" Value="1.1" NavigateUrl="~/1_1.aspx" 
                       ToolTip="Посказка 1.1"></asp:TreeNode>
                   <asp:TreeNode Text="1.2" Value="1.2"></asp:TreeNode>
                   <asp:TreeNode Text="1.3" Value="1.3"></asp:TreeNode>
            </asp:TreeNode>      
            <asp:TreeNode Text="2" Value="2" Expanded="False">
                  <asp:TreeNode Text="2.1" Value="2.1" Checked="True" ShowCheckBox="True"></asp:TreeNode>
                  <asp:TreeNode Text="2.2" Value="2.2" ShowCheckBox="True"></asp:TreeNode>
                  <asp:TreeNode Text="2.3" Value="2.3" ShowCheckBox="True"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="3" Value="3" Checked="True" Expanded="False">
                  <asp:TreeNode Text="3.1" Value="3.1" ShowCheckBox="False"></asp:TreeNode>
                  <asp:TreeNode Text="3.2" Value="3.2"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="4" Value="4" Expanded="False"></asp:TreeNode>
            <asp:TreeNode Text="5" Value="5" Expanded="False"></asp:TreeNode>
        </Nodes>
    </asp:TreeView>





        </asp:View>  
        
         
        <asp:View ID="View3" runat="server">
        <asp:Label ID="Label3" runat="server" Text="View3"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 26px" 
                Width="222px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" style="margin-left: 50px" 
                Text="Button3" onclick="Button3_Click"/>
                <br /><br />


                <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#990000" onmenuitemclick="Menu1_MenuItemClick" 
            Orientation="Vertical" StaticSubMenuIndent="10px">
            <StaticMenuStyle HorizontalPadding="10px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
            <StaticMenuItemStyle HorizontalPadding="10px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <DynamicMenuItemStyle HorizontalPadding="50px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <Items>
                <asp:MenuItem Text="A" ToolTip="подсказка A" Value="A">
                    <asp:MenuItem Text="AA1" ToolTip="Посказка AA1" Value="AA1"></asp:MenuItem>
                    <asp:MenuItem Text="AA2" Value="AA2">
                        <asp:MenuItem Text="AAA1" Value="Value_AAA1"></asp:MenuItem>
                        <asp:MenuItem Text="AAA2" Value="AAA2"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="AA3" Value="AA3"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="B" Value="B">
                    <asp:MenuItem Text="BB1" Value="BB1"></asp:MenuItem>
                    <asp:MenuItem Text="BB2" Value="BB2"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu> 
        </asp:View>
    </asp:MultiView>
    
    </div>
    <br /><br /><br /><br /><br /><br />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Change view" 
        Width="100px" />
    <br /><br /><br /><br />

    <div>
        <asp:AdRotator ID="AdRotator2" runat="server" 
            AdvertisementFile="~/App_Data/AdRotator.xml"  />
    </div>
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Change mode" 
        Width="100px" />

    </form>
</body>
</html>
