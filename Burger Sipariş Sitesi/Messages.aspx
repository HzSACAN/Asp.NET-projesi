<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Messages.aspx.cs" Inherits="Burger_Sipariş_Sitesi.Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
            <div style="background-color: black;">

                <table class="nav-justified">
                    <tr>
                        <td style="height: 20px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="color: white; font-family: 'Times New Roman', Times, serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MESAJLAR
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: 'Times New Roman', Times, serif">
                            <asp:DataList ID="DataList1" runat="server">
                                <ItemTemplate>
                                    <table class="nav-justified">
                                        <tr>
                                            <td style="height: 20px; color: white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gönderen Kişi:<asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gönderen Kişinin Mail Adresi:<asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="color: white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mesaj:</td>
                                        </tr>
                                        <tr>
                                            <td style="padding-left: 38px; color: white">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="transparent-textbox" Height="200px" ReadOnly="True" Text='<%# Eval("ContactMassage") %>' TextMode="MultiLine" Width="440px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="MessageDelete.aspx?id=<%# Eval("ContactID") %>">
                                           <div class="btn btn-danger">Sil</div>
                                       </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </form>
</asp:Content>
