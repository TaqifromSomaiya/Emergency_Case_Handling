<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="Modification.Receptionist" %>
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
                    <log:login ID="login" runat="server" />
                </div>
                <div style="padding-left: 640px">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </div>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div style="height: 1080px; width: 1920px; background-color: #F5F5DC; ">
                 <div style="padding-left:35px">
                     <div style="padding-left: 400px">
                         <asp:Label ID="Label2" runat="server" BackColor="#F5F5DC" Height="35px" Text="Patient's List" Font-Size="79px" ForeColor="White"></asp:Label>
                     </div>
                         <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Id No:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;<asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                     </div>
                <table ;="" style="width: 91%; height: 178px">
                    <tr>
                        <td class="auto-style1">
                            <connectionstrings>
                            </connectionstrings>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#C2B280" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="201px" TabIndex="2" Width="840px" AllowSorting="True" AutoGenerateEditButton="True">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                                    <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                </Columns>
                                <EditRowStyle BorderColor="Red" />
                                <SortedAscendingCellStyle BackColor="#FF5050" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDbConnectionString %>" ProviderName="<%$ ConnectionStrings:HospitalDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Patient]" UpdateCommand="Update Patient SET PhoneNo=@PhoneNo where Id=@Id "></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                 <br />
                 <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
        </asp:View>
    </asp:MultiView>

</div>
    </form>
</body>
</html>
