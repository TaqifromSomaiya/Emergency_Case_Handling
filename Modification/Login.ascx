<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="Modification.Login" %>
<div > 
    <div>
        <asp:Label ID="user" runat="server" Text="Username"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Username" EnableClientScript="False" ErrorMessage="Username is incorrect" ValidationExpression="admin" ForeColor="Red"></asp:RegularExpressionValidator>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Username" EnableClientScript="False" ErrorMessage="Field cant be empty" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
<br />
    <div>
<asp:Label ID="passs" runat="server" Text="Password" ></asp:Label>
&nbsp;&nbsp;
<asp:TextBox ID="Password" runat="server" TextMode="Password" ></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Password" EnableClientScript="False" ErrorMessage="Password is incorrect" ValidationExpression="Taqi@123" ForeColor="Red"></asp:RegularExpressionValidator>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Password" EnableClientScript="False" ErrorMessage="Field can't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <br />
</div>


