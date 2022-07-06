<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="load sub" />
    <div></div>
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="load" />
    <div>
        <asp:Label ID="Label6" runat="server" Text="item number:"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    </div>
    <table width="100px">
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="item name"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      <asp:Label ID="Label2" runat="server" Text="price"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="previous price"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
   
    <asp:Label ID="Label4" runat="server" Text="discount"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
     <asp:Label ID="Label5" runat="server" Text="color or description(donot exced 20 words)"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" Text="main category(like footwear etc.)"></asp:Label>
   
        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox></td>
    <td>
    <asp:Label ID="Label8" runat="server" Text="Size"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        
     </td>
     <td>
         <asp:Label ID="Label9" runat="server" Text="quantity"></asp:Label>
         
         <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
    </td>
    <td>
   
    <asp:Label ID="Label10" runat="server" Text="description"></asp:Label>
        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
    
   </td>
    </tr>
   
    </table>
    <br />
    File Upload
    <asp:FileUpload ID="FileUpload1" runat="server" />
    
    
    <asp:Button ID="Button1" runat="server" Text="add item" 
        onclick="Button1_Click" />
        
     <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
        
     <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
     <HeaderTemplate>
            <table border="1">
            <tr><th> sub Category Name</th><th>item name</th><th>price</th>
            <th>previous price</th><th>dicount</th><th>color</th><th>picture</th>
            <th>item number</th><th>delete and update</th><th>category</th></tr>
        </HeaderTemplate>
        <ItemTemplate>
          <tr>            
          <td>
            <%# DataBinder.Eval(Container.DataItem, "sub_category")  %>
          </td>
          <td>
            <%# DataBinder.Eval(Container.DataItem, "itm_name")  %>
          </td>
          
             

                        
       
         <td>
            
           <%# DataBinder.Eval(Container.DataItem, "price")  %>
            </td>
            
           <td>
            <%# DataBinder.Eval(Container.DataItem, "pre_price")  %>
            </td>
            
           
         
        
         <td>
            
           <%# DataBinder.Eval(Container.DataItem, "dis")  %>
            </td>
            
                
         
     
         <td>
            
           <%# DataBinder.Eval(Container.DataItem, "color")  %>
            </td>
            
              <td>
            
           
            <img alt="no pic" src="<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>" width="100" height="100" />
              
            </td>
            <td>
            
             <%# DataBinder.Eval(Container.DataItem, "itm_no")  %>
             </td>
             <td>
            
             <a href="Default8.aspx?tr=D&nm=<%# DataBinder.Eval(Container.DataItem, "itm_no")  %>">D</</a>
                <a href="Default10.aspx?nmq=<%# DataBinder.Eval(Container.DataItem, "itm_no")  %>">U</</a>
                
            </td>
            <td>
                 <%# DataBinder.Eval(Container.DataItem, "category")  %>    
            </td>

         </tr>
         
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate>

    </asp:Repeater>
    
    <a href="Default24.aspx">order status</a>
    
</asp:Content>

