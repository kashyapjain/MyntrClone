<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default25.aspx.cs" Inherits="Default25" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style>
  div.gallery
  {
   margin: 10px;
   width:200px;
   float:left;
  }
  div.gallery img:hover
  {
   border: 1px solid #777;
  }
  div.gallery img
  {
   border: 1px solid #ccc;
   width: 200px;
   height: auto;
  }
  div.desc
  {
   text-align: center;
   font-size:larger;
   font-weight:bold;
  }
  div.desc2
  {
   text-align: center;
  }
  .sr
  {
  	font-size:large; font-weight:bold;
  }
 </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="display:block; padding:5px;">
        showing results for:
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="sr"></asp:Label>
    </div>

    <asp:Repeater ID="Repeater1"  runat="server">
  <HeaderTemplate></HeaderTemplate>
  <ItemTemplate>
   <div class="gallery">
    <div id="s2"  style=" position:absolute; font-size:25px; color:red; text-shadow:0px 0px 5px black; opacity:0.5; ">
      <b>
       <%# DataBinder.Eval(Container.DataItem, "dis")%>
      </b>
     </div>
     <a style=" color:Black ;" href="Default3.aspx?nmq=<%# DataBinder.Eval(Container.DataItem, "itm_no")  %>">
      <img src="<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>" alt="pic">
     </a>
     <div class="desc">
      <%# DataBinder.Eval(Container.DataItem, "itm_name")%>
     </div>
     <div class="desc2">
      <%# DataBinder.Eval(Container.DataItem, "color")%>
     </div>
    </a>
   </div>
  </ItemTemplate>
  <FooterTemplate></FooterTemplate>
 </asp:Repeater>
</asp:Content>

