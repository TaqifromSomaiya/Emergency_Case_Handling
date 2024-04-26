<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dentist.aspx.cs" Inherits="Modification.Dentist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="../Content/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#C2B280" CellPadding="2" CellSpacing="4" DataSourceID="SqlDataSource1" Height="229px" Width="838px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                    <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="History" HeaderText="History" SortExpression="History" />
                    <asp:BoundField DataField="DOA" HeaderText="DOA" SortExpression="DOA" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDbConnectionString %>" SelectCommand="SELECT [Id], [FName], [LName], [Gender], [DOB], [PhoneNo], [Email], [History], [DOA] FROM [Dentist]"></asp:SqlDataSource>
              <asp:Label ID="Label3" runat="server" Text="Any Query Sir!?"></asp:Label>
              <br />
              <br />
              <br />
&nbsp;</div>
    </form>
</body>
</html>
