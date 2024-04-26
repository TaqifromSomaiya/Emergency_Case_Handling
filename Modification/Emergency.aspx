<%@ Page Title="" Language="C#" MasterPageFile="~/HF.Master" AutoEventWireup="true" CodeBehind="Emergency.aspx.cs" Inherits="Modification.Emergency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
                                <div style="padding-left: 10px; padding-bottom:48px; padding-right: 20px;  background-color: white; margin-left: 414px; height: 683px; width: 648px; margin-right: 823px;">
                                    <h1 style="text-align: center; color: black" class="form-container">New Patient Registration </h1>
                        <asp:Label ID="Reg" runat="server" Text="Registarion Date And Time"></asp:Label>
                        <br />
                        <asp:Label ID="Date" runat="server" Text="Date : "></asp:Label>
                        <asp:TextBox ID="DateTimeNow" runat="server" Enabled="False" OnTextChanged="DateTimeNow_TextChanged" ></asp:TextBox>
                        &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Time" runat="server" Text="Time : "></asp:Label>
                        &nbsp;<asp:TextBox ID="Timer" runat="server" Enabled="False" Height="22px"></asp:TextBox>

                        <div style="padding-top: 25px;">
                            <asp:Label ID="Label1" runat="server" Text="Patient's  Name"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="FName" runat="server" Text="First Name : "></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LName" runat="server" Text="Last Name:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Gender" runat="server" Text="Gender : "></asp:Label>
                            <br />
                            <asp:TextBox ID="FNamer" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="LNamer" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Rather Not Say</asp:ListItem>
        </asp:DropDownList>
                            <br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FNamer" EnableClientScript="False" ErrorMessage="First Name cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="LNamer" EnableClientScript="False" ErrorMessage="Name Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Date of Birth:"></asp:Label>
                        <br />
                        <asp:TextBox ID="DOB" runat="server" TextMode="Date" Height="24px" Width="147px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="PhoneNum" CssClass="form-group select" runat="server" Text="PhoneNumber : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Email : "></asp:Label>
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddresss" EnableClientScript="False" EnableTheming="True" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Addresss" runat="server" Text="Addresss : "></asp:Label>
                        <br />
                        <asp:TextBox ID="Address" runat="server" Height="78px" Width="526px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label CssClass="form-group form-group label" ID="yt18" runat="server" Text="Is the patient Younger Than 18"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="112px" Width="916px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Label ID="EGC" runat="server" Text="Emergency Case Of:"></asp:Label>
                        &nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="37px" Width="116px">
                        <asp:ListItem>Car Accident</asp:ListItem>
                        <asp:ListItem>Fire Burns</asp:ListItem>
                        <asp:ListItem>Suicide</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn-submit " OnClick="Submit_Click" />

                    </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
                <asp:Label ID="OutputLabel" runat="server" Text="Label" Height="76px"></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" />
        </asp:View>
    </asp:MultiView>
</asp:Content>
