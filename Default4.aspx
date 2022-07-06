<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<span>enter the main category(mens ,womens etc)</span>

<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <div></div>
<span>add catogrey</span>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="add" onclick="Button1_Click" />

 
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table border="1">
            <tr><th>Category Name</th><th>main category</th><th>Delete or update</th></tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <%# DataBinder.Eval(Container.DataItem, "m_cat")  %>
                </td>
                
                <td>
            
            <%# DataBinder.Eval(Container.DataItem, "catogry_name")  %>
            </td>
            <td>            
                <a href="Default4.aspx?tr=D&nm=<%# DataBinder.Eval(Container.DataItem, "catogry_name")  %>&nm2=<%# DataBinder.Eval(Container.DataItem, "m_cat")  %>">D</</a>,
                <a href="Default5.aspx?nmq=<%# DataBinder.Eval(Container.DataItem, "catogry_name")  %>">U</</a>,
                
            </td>

            </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate>
    </asp:Repeater><br />
      <a href="Default6.aspx"> sub categories</</a>
</asp:Content>




