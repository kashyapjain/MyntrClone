<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default10.aspx.cs" Inherits="Default10" Title="Untitled Page" %>

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

    <asp:Label ID="Label1" runat="server" Text="item number is"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <div></div>
    <table width="100px;">
    <tr>
    <td>
        <asp:Label ID="Label3" runat="server" Text="update the sub category"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="update the items name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       <asp:Label ID="Label5" runat="server" Text="update the items price"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
       <asp:Label ID="Label6" runat="server" Text="update the items previous price"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

        <asp:Label ID="Label7" runat="server" Text="update the discount on the item"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
  
        <asp:Label ID="Label8" runat="server" Text="update the color or description of the item"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    
    </td>
    <td>
        <asp:Label ID="Label11" runat="server" Text="size"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>   
        <asp:TextBox ID="TextBox10" runat="server" Height="22px"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:Label ID="Label12" runat="server" Text="quantity"></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            
        </td>
        <td>
        <asp:Label ID="Label13" runat="server" Text="discription"></asp:Label>
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
          <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
             <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            
        </td>
      
    
    </td>
     </tr>
  </table>
                <asp:Label ID="Label9" runat="server" Text="update the picture"></asp:Label>
        <img  id="img1" src="" runat="server" width="100" height="100" alt="noPic" />
   
    
     <asp:FileUpload ID="FileUpload1" runat="server" />
     <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
     <div></div>
    <asp:Button ID="Button1" runat="server" Text="update" 
        onclick="Button1_Click1" />
</asp:Content>

