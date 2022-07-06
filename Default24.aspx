<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default24.aspx.cs" Inherits="Default24" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="order number"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="order status"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="update" onclick="Button1_Click" />
</asp:Content>

