<%@ Page Title="" Language="C#" MasterPageFile="~/Layout2.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Menu.aspx.cs" Inherits="Burger_Sipariş_Sitesi.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="bolum-2" ">
        <form id="form1" runat="server">
            <div class="row" >
                <div class="col" >
                    <asp:DataList ID="DataList1" runat="server" Width="1425px">
                        <ItemTemplate>
                            <table class="nav-justified" style="width: 100%; margin-right: 0px; border-style: solid">
                                <tr>
                                    <td style="border-style: double; width: 24px"></td>
                                    <td style="width: 175px; border-top-style: double; border-bottom-style: double; border-left-style: double;" class="modal-sm">
                                        <asp:Image ID="Image1" runat="server" Height="175px" ImageUrl='<%# Eval("BurgerPhoto") %>' Width="175px" />
                                    </td>
                                    <td style="width: 170px; border-right-style: double; border-top-style: double; border-bottom-style: double;">&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("BurgerName") %>' ForeColor="White"></asp:Label>
                                    </td>
                                    <td class="modal-sm" style="border-style: double; width: 780px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("BurgerContent") %>' ForeColor="White"></asp:Label>
                                    </td>
                                    <td style="border-style: double; width: 88px">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" ForeColor="White" Text='<%# Eval("BurgerPrice") %>'></asp:Label>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("BurgerCurrency") %>' ForeColor="White"></asp:Label>
                                    </td>
                                    <td style="border-style: double; width: 59px">&nbsp;&nbsp;&nbsp;&nbsp;
                                   <a href="OrderBox.aspx?BurgerID=<%# Eval("BurgerID") %>"><div class="btn btn-danger">+</div></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </form>
    </section>
</asp:Content>

