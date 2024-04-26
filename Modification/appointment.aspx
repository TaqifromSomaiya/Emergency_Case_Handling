<%@ Page Title="" Language="C#" MasterPageFile="~/HF.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="Modification.appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div style="background-color: #0f5a5e;padding-top:20px;" >
            <div style="background-color: white; padding-left: 10px; margin-left: 200px;  margin-right: 300px;">
                <div style="padding-left: 210px">
                    <asp:Label ID="Label7" runat="server" Text="Appointment Form" Height="29px" ForeColor="Black" Font-Size="59px"></asp:Label>
                </div>
                <br />
                <br />
                <asp:Label ID="PNAME" runat="server" Text="Patient's  Name:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="FName" runat="server" Text="First Name : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LName" runat="server" Text="Last Name:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Gender" runat="server" Text="Gender:"></asp:Label>
                <br />
                <asp:TextBox ID="FNamer" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="LNamer" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Width="115px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FNamer" EnableClientScript="False" ErrorMessage="Name cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="LNamer" EnableClientScript="False" ErrorMessage="Last name cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label CssClass="form-group form-group label" ID="yt18" runat="server" Text="Is the patient Younger Than 18"></asp:Label>
                <asp:RadioButtonList ID="Age" runat="server" Height="112px" Width="416px">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                <asp:Label ID="DateofBirth" runat="server" Text="Date of Birth:"></asp:Label>
                <br />
                <asp:TextBox ID="DOB" runat="server" TextMode="Date" Height="24px" Width="147px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="PhoneNum" CssClass="form-group select" runat="server" Text="PhoneNumber : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Email" runat="server" Text="Email : "></asp:Label>
                <br />
                <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="EmailAddresss" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PhoneNumber" ErrorMessage="Phone Number is Incorrect" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" EnableClientScript="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddresss" ErrorMessage="Email Id is Incorrect " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableClientScript="False"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PhoneNumber" EnableClientScript="False" ErrorMessage="Phone Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddresss" EnableClientScript="False" ErrorMessage="Email is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="AppFor" runat="server" Text="Appointment For:"></asp:Label>
                <br />
                <asp:DropDownList ID="AppointmentFor" runat="server" Width="96px">
                    <asp:ListItem>Optician</asp:ListItem>
                    <asp:ListItem>Dentist</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="History" runat="server" Text="Past Medical Record History If any"></asp:Label>
                <br />
                <asp:TextBox ID="Phistory" runat="server" Height="76px" Width="528px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Book an Appointment For:"></asp:Label>
                <asp:TextBox ID="DOA" runat="server" TextMode="Date"></asp:TextBox>
                &nbsp;
                <br />
                <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" />
                <br />
                <asp:Label ID="OutputLabel" runat="server" Text="Please complete the form"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
