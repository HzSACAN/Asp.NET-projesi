<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Burger_Sipariş_Sitesi.Login" %>
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
         <asp:Button ID="ButtonLogin" runat="server" CssClass="transparent-textbox" Height="33px"  Text="Giriş Yap" Width="96px" OnClick="ButtonLogin_Click" />
             <br />
         </p>
     </section>
 </form>
</asp:Content>
