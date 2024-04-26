<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="Modification.Doctor" %>
<%@ Register TagPrefix="log" TagName="login" Src="~/Login.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link rel="stylesheet" type="text/css" href="../Content/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
       <div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div style="height: 1080px; width: 1920px; background-color: #F5F5DC">
                <div style="padding-left: 540px; padding-top: 200px">
                    <log:login id="login" runat="server" />
                </div>
                <div style="padding-left: 640px">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </div>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">

            <div style="background-color: #F5F5DC; height: 1080px">
                <div style="padding-left: 512px; padding-top: 200px">
                    <asp:Button ID="Dentist" runat="server" Height="56px" Text="Dentist" Width="311px" BackColor="white" CssClass="buttonCR" OnClick="Doctor_Click" />
                </div>
                <br />
                <div style="padding-left: 512px; padding-top: 20px">
                    <asp:Button ID="Optician" runat="server" Height="56px" Text="Optician" Width="311px" OnClick="Reception_Click" BackColor="White" CssClass="buttonCR" />
                </div>
            </div>
        </asp:View>
    </asp:MultiView>
</div>
    </form>
</body>
</html>
