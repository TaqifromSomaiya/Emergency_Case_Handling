<%@ Page Title="" Language="C#" MasterPageFile="~/HF.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Modification.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="background_contain" style="background-color: #F5F5DC; background-repeat: no-repeat;">
        <br />
        <div class="button-container" style="padding-left:1200px" >
            <asp:Button ID="Button1" CssClass="buttonCR" runat="server" Text="Login" OnClick="Button1_Click" />
        </div>
        <br />
                <br />
        <div class="button-container" style="margin-left: 505px;">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="EmergencyForm" CssClass="buttonCR" runat="server" Text="Emergency Form" Height="56px" Width="311px" BorderColor="Black" BackColor="White" OnClick="EmergencyForm_Click1" />
            <br />
            <br />
            <br />
            <asp:Button CssClass="buttonCR" ID="Appointment" runat="server" Text="Appointment" Height="56px" Width="311px" BorderColor="Black" BackColor="White" OnClick="Appointment_Click1" />
        </div>
        <div class="ad-container">
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/AdRotater1.xml"></asp:XmlDataSource>
        </div>
        <div class="ad-container2">
            <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource2" />
            <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/AdRotater2.xml"></asp:XmlDataSource>
        </div>
    </div>
</asp:Content>
