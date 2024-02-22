<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Burger_Sipariş_Sitesi.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <section id="bolum-1">
            <p style="margin-left: 80px">
                &nbsp;
            </p>
            <p style="margin-left: 160px; padding-top: 220px; font-family:'Times New Roman', Times, serif; color:white;">
                E-mail Adresiniz
                <br />
                <asp:TextBox ID="TextBoxMail" runat="server" CssClass="transparent-textbox" Height="40px" TextMode="Email" Width="300px"></asp:TextBox>
                <br />
                Şifreniz
                <br />
                <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="transparent-textbox" Height="40px" TextMode="Password" Width="300px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p style="margin-left: 160px; font-family:'Times New Roman', Times, serif; color:white;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonRegister" runat="server" CssClass="transparent-textbox" Height="33px" OnClick="ButtonRegister_Click" Text="Kayıt ol" Width="96px" />
                <br />
            </p>
        </section>
    </form>

</asp:Content>
