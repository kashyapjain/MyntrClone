<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
donot add more than 3 sliders

   <%-- <script type="text/javascript">

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
    </script>--%>

 <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="add slider picture" 
        onclick="Button1_Click" />
    <asp:Repeater ID="Repeater1" runat="server">
     <HeaderTemplate>
            <table border="1">
            <tr><th>picture</th><th>picture location</th><th>delete and update</th></tr>
        </HeaderTemplate>
        <ItemTemplate>
        <tr>
        <td>
            <img alt="no pic" src="<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>" width="300" height="100" />
        </td>
        <td>
             <%# DataBinder.Eval(Container.DataItem, "pic_location")  %>
        </td>
        <td>
            <a href="Default9.aspx?tr=D&nm=<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>">D</</a>
            <a href="Default11.aspx?nmq=<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>">U</</a>
        </td>
        </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate>
    </asp:Repeater>
    <a href="Default12.aspx">category picture</a>&nbsp;&nbsp; 
</asp:Content>

