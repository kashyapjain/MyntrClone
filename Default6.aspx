<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
    
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="false">
        <asp:ListItem>mens</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="load sub" />
   
        <div></div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="false">
        <asp:ListItem>bottom wear</asp:ListItem>
    </asp:DropDownList>
   
   <asp:Button ID="Button2" runat="server" Text="load" onclick="Button2_Click" />
   
    <br />
    <asp:Label ID="Label2" runat="server" Text="Sub Category"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="add" 
        onclick="Button1_Click1" />
    
 

 
    
    <asp:Repeater ID="Repeater1" runat="server">
     <HeaderTemplate>
            <table border="1">
            <tr><th> sub Category Name</th><th>main category</th><th>Delete</th></tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr><td>
            
           <%# DataBinder.Eval(Container.DataItem, "sub_category")  %>
            </td>
            
            <td>
                <%# DataBinder.Eval(Container.DataItem, "m_cat")  %>
            </td>
            
            <td>            
                <a href="Default6.aspx?tr=D&nm=<%# DataBinder.Eval(Container.DataItem, "sub_category")  %>">D</</a>
                <a href="Default7.aspx?nmq=<%# DataBinder.Eval(Container.DataItem, "sub_category")  %>">U</</a>
                
            </td>

            </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate>

    </asp:Repeater>
    <a href="Default8.aspx" >items</a>
</asp:Content>

