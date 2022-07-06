<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default26.aspx.cs" Inherits="Default26" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .a1
        {
        	text-decoration:none; color:Black;
        }
        .l1
        {
        	color:#777;
        }
        .bt2
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color:Aqua;     color:White;     width:100px;     height:75px;     font-size:larger;     BORDER-RADIUS:10px;     cursor:pointer;
        }
        .a1:hover
        {
        	text-decoration:underline;
        }
        .txt_box
        {
        	width:250px; height:20px; padding:10px; border-radius:5px;
        }
        .bt4
        {
        	background-color:Aqua; padding:20px; width:300px; border-radius:5px; margin:5px; border:1px solid #777;
        	font-size:larger; cursor:pointer; color:White; font-weight:bolder;
        }
          .gallery
        {
        	margin: 5px; border: 1px solid #ccc; width:100px; height:200px; background-repeat:no-repeat;
        	background-size:cover; background-position:center; float:left;
        }
       .gallery:hover
       {
       	    border: 1px solid #777;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding:50px; width:100%;">
        <div style="background-color:White; border:1px solid #ccc; float:left; width:90%;">
            <div style="width:100%; float:left;">
                <div style="float:left;">
                    <h3>Account</h3>
                        &nbsp;
                    <asp:Label ID="Label1" runat="server" Text="" CssClass="l1"></asp:Label>
                </div>
                    
                <div style="float:right;">
                    <asp:Button ID="Button1" runat="server" Text="log out" onclick="Button1_Click" CssClass="bt2"/>
                </div>
                
                <div style="clear:both;">
                    <hr />
                </div>
            </div>
            
            <div style="float:left; width:16%; height:100%;">
                <div style=" width:50px; height:25px;">
                    <a class="a1" href="Default20.aspx">Profile</a>
                </div>
                    <hr />
                <div style=" width:50px; height:25px;">
                    <a class="a1" href="Default26.aspx" style="color:Aqua; font-weight:bolder;">Orders</a>
                </div>
            </div>
            
            <div style="border:1px solid #ccc; width:83%; float:left;">
                <div style="padding:25px; width:95%; float:left;">
                    <asp:Repeater ID="Repeater1"  runat="server" >
            
                        <HeaderTemplate></HeaderTemplate>
                    
                        <ItemTemplate>
                            <div style="border:1px solid #ccc; width:100%; float:left; margin:5px;">
                                <%--image--%>
                                
                                <a style="float:left;"
                                href="Default3.aspx?nmq=<%# DataBinder.Eval(Container.DataItem, "itm_no")  %>">
                                    <div class="gallery"
                                    style='background-image:url(<%# DataBinder.Eval(Container.DataItem, "pic_location") %>);'>
                                    </div>
                                </a>
                                
                                <div style="float:left; padding:10px; width:80%;">
                                    <div  style=" font-size:large; padding:2px;">
                                        <b>
                                            <%# DataBinder.Eval(Container.DataItem, "itm_name")  %>
                                        </b>
                                    </div>

                                    <div style="padding:2px;">
                                        <%# DataBinder.Eval(Container.DataItem, "color")  %>
                                    </div>
                                    
                                    <div style="font-size:15px; color:red; padding:5px; float:left; width:100%;">
                                        <b>
                                            <%# DataBinder.Eval(Container.DataItem, "dis")%>
                                        </b>
                                    </div>
                                    
                                    <div style="font-size:large; float:left; width:100%;">
                                        <b>
                                            Rs.<%# DataBinder.Eval(Container.DataItem, "price")  %>
                                        </b>
                                    </div>
                                    
                                    <div  style=" font-size:large; padding:2px;">
                                        <b>
                                            Order Number: #<%# DataBinder.Eval(Container.DataItem, "odr_no")  %>
                                        </b>
                                    </div>

                                    <div style="padding:2px;">
                                        Quantity: <%# DataBinder.Eval(Container.DataItem, "qty")  %>
                                    </div>
                                    
                                    <div style="font-size:20px; color:red; padding:5px; float:left; width:100%;">
                                        <b>
                                            Size: <%# DataBinder.Eval(Container.DataItem, "size")%>
                                        </b>
                                    </div>
                                    
                                    <div style="font-size:large; float:left; width:100%;">
                                        <b>
                                            Address: .<%# DataBinder.Eval(Container.DataItem, "adress")  %>
                                        </b>
                                    </div>
                                    
                                    <div style="font-size:20px; float:left; width:100%; padding-top:5px;">
                                        <b>
                                            Date of Order: <%# DataBinder.Eval(Container.DataItem, "odr_date")  %>
                                        </b>
                                    </div>
                                    
                                    <div style="font-size:25px; float:left; width:100%; padding-top:5px;">
                                        <b>
                                            Status: <%# DataBinder.Eval(Container.DataItem, "status")  %>
                                        </b>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>

                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

