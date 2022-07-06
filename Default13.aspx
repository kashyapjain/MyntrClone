<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default13.aspx.cs" Inherits="Default13" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Label ID="Label3" runat="server" Text="update picture of "></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <div></div>
    <asp:Label ID="Label1" runat="server" Text="update the category picture"></asp:Label>
    <img  id="img1" src="" runat="server" width="100" height="100" alt="noPic" />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <div></div>
    <asp:Button ID="Button1" runat="server" Text="update the category picture" 
        onclick="Button1_Click" />
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
</asp:Content>

