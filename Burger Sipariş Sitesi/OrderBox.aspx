<%@ Page Title="" Language="C#" MasterPageFile="~/Layout2.Master" AutoEventWireup="true" CodeBehind="OrderBox.aspx.cs" Inherits="Burger_Sipariş_Sitesi.OrderBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">

        <tr>
            <td><strong>yemek foto
            </strong>
            </td>
            <td>
                <strong>Yemek Adı
                </strong>
            </td>
            <td>
                <strong>Fiyat
                </strong>
            </td>


        </tr>

        <asp:Repeater ID="tekrar" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <img src="<%# Eval("BurgerPhoto") %> " style="width: 150px;" />
                    </td>
                    <td>
                        <%# Eval("BurgerName") %> 
                    </td>
                    <td>
                        <%# Eval("BurgerPrice") %><%# Eval("BurgerCurrency") %> 
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
