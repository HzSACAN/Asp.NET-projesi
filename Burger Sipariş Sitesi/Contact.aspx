<%@ Page Title="" Language="C#" MasterPageFile="~/Layout2.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Burger_Sipariş_Sitesi.Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <section id="bolum-1">
            <p style="margin-left: 40px">
                &nbsp;</p>
            <p style="margin-left: 40px">
                <br />
                <p style="color: white; font-family: 'Times New Roman', Times, serif; font-size: 16px; margin-left: 40px;">
                    Adınız Soyadınız
                <br />
                <asp:TextBox ID="TextBoxName" runat="server" CssClass="transparent-textbox" ToolTip="İsminizi giriniz"></asp:TextBox>
                <br />
                    E-mail Adresiniz
                <br />
                <asp:TextBox ID="TextBoxMail" runat="server" CssClass="transparent-textbox" ToolTip="Mail adresinizi giriniz"></asp:TextBox>
                <br />
                    Göndermek istediğiniz mesaj
                <br />
                <asp:TextBox ID="TextBoxMessage" runat="server"  CssClass="transparent-textbox" Height="301px" TextMode="MultiLine" ToolTip="Mesajınızı yazınız" Width="510px" ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="ButtonSend" runat="server" CssClass="transparent-textbox" OnClick="ButtonSend_Click" Text="Mesajı Gönder" />
                </p>
            </p>
        </section>
    </form>
</asp:Content>
