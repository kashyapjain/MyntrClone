<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default15.aspx.cs" Inherits="Default15" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .r
        {
        	font-size:large; font-weight:bold;
        }
        .gallery
        {
        	width:200px; margin:5px; float:left; height:375px; border: 1px solid #ccc;
        }
        .gallery:hover
        {
        	border: 1px solid #777;
        }
        .gallery img
        {
        	width: 200px; height: auto;
        }
        .desc
        {
        	text-align: center; font-size:larger; font-weight:bold;
        }
        .desc2
        {
        	text-align: center;
        }

        .div1
        {
        	position:absolute; font-size:25px; color:red; text-shadow:0px 0px 5px black;
        	opacity:0.5; 
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        showing results for:
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="r"></asp:Label>
    </div>

    <div style="width:auto; float:left; padding:20px;">
        <asp:Repeater ID="Repeater1"  runat="server">

            <HeaderTemplate></HeaderTemplate>

            <ItemTemplate>
                <div class="gallery">
                    <div id="s2" class="div1">
                        <b>
                            <%# DataBinder.Eval(Container.DataItem, "dis")%>
                        </b>
                    </div>

                    <a style=" color:Black; text-decoration:none;"
                    href="Default3.aspx?nmq=<%#DataBinder.Eval(Container.DataItem,"itm_no")%>">
                        <img src="<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>"
                        alt="pic" />
                        
                        <div class="desc">
                            <%# DataBinder.Eval(Container.DataItem, "itm_name")%>
                        </div>

                        <div class="desc2">
                            <%# DataBinder.Eval(Container.DataItem, "color")%>
                        </div>
                        
                        <div class="desc">
                            Rs.<%# DataBinder.Eval(Container.DataItem, "price")%>
                        </div>
                    </a>
                </div>
            </ItemTemplate>

            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

