<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">

        $('.button').click(function () {
            $.ajax({
                url: "",
                context: document.body,
                success: function (s, x) {

                    $('html[manifest=saveappoffline.appcache]').attr('content', '');
                    $(this).html(s);
                }
            });
        });
    </script>

    <asp:Label ID="Label3" runat="server" Text="update "></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <div></div>
    <asp:Label ID="Label1" runat="server" Text="update the slider picture"></asp:Label>
    <img  id="img1" src="" runat="server" width="300" height="100" alt="noPic" />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <div></div>
    <asp:Button ID="Button1" runat="server" Text="update the slider picture" 
        onclick="Button1_Click" />
</asp:Content>

