<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Modification.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="../Content/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:#F5F5DC; height:1080px">
            <div style="padding-left: 512px; padding-top: 200px">
                <asp:Button  ID="Doctor" runat="server" Height="56px" Text="Doctor" Width="311px"  BackColor="white" CssClass="buttonCR" OnClick="Doctor_Click" />
            </div>
            <br />
            <div style="padding-left:512px;padding-top:20px">
                <asp:Button ID="Reception" runat="server" Height="56px" Text="Receptionist" Width="311px" OnClick="Reception_Click" BackColor="White" CssClass="buttonCR" />
            </div>
        </div>
    </form>
</body>
</html>
