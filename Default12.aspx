<%@ Page  Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<%--    <script type="text/javascript">

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
    
    <asp:Repeater ID="Repeater1" runat="server">
     <HeaderTemplate>
            <table border="1">
            <tr><th>category</th><th>picture</th><th>picture location</th><th>update</th></tr>
        </HeaderTemplate>
        <ItemTemplate>
        <tr>
        <td>
            <%# DataBinder.Eval(Container.DataItem, "catogry_name")  %>
        </td>
        <td>
            <img alt="no pic" src="<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>" width="100" height="100" />
        </td>
        <td>
             <%# DataBinder.Eval(Container.DataItem, "pic_location")  %>
        </td>
        <td>
            
            <a href="Default13.aspx?nmq=<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>&nmq2=<%# DataBinder.Eval(Container.DataItem, "m_cat")  %>">U</</a>
        </td>
        </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

