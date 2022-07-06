<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default17.aspx.cs" Inherits="Default17" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .gallery
        {
        	margin: 5px; border: 1px solid #ccc; width:100px; height:200px; background-repeat:no-repeat;
        	background-size:cover; background-position:center;
        }
       .gallery:hover
       {
       	    border: 1px solid #777;
       }
       .desc
       {
       	    padding: 1px; text-align: center; margin-top:300px;
       }
       .div1
       {
       	    width: 0; height: 0; border-left: 5px solid transparent; border-right: 5px solid transparent;
	        border-top: 5px solid #555;
       }
       .div2
       {
       	    text-decoration:underline; float:left; border:1px solid black; cursor:pointer;
       	    z-index:1;
       }
       .div2:hover
       {
       	    background-color:Black;
       }
       .l3
       {
            color:black; font-weight:bold
       }
       .bt2
       {
       	    border:none; width:100%; height:50px; background-color:Aqua; color:White; margin:5px;
       	    border-radius:10px; font-weight:bold; letter-spacing:1px; font-size:large; cursor:pointer;
       }
       .div3
       {
            background-color:Black; width:100%; height:auto;background: rgba(0, 0, 0, 0.5); clear:both; position:fixed;
       }
       .a1
       {
       	    text-decoration:none; color:Black;
       }
       .a1:hover
       {
       	    text-decoration:underline;
       }
       .div4
       {
       	    border:1px solid #ccc; display:block; padding:10px;
       }
       .txt_box
        {
        	width:250px; height:20px; padding:10px; border-radius:5px;
        }
    </style>
   <script>
     function fun2()
     {
        var x= eval(document.getElementById("qty1").innerHTML);
        x=x+1
        document.getElementById("qty1").innerHTML=x;
     }
     
     function fun1()
     {
        var x= eval(document.getElementById("qty1").innerHTML);
        x=x-1
        document.getElementById("qty1").innerHTML=x;
     }
     function f3()
     {
       
     }
   </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    <%if (Label1.Text == "0"){%>
        <div style="padding:125px; background-color:#f1f1f1;">
            <div>
                <center>
                    <div>
                        <img alt="no pic" src="pics/sbag.PNG"/>
                    </div>

                    <div style="color:#777; padding:10px;">
                    There is nothing in your bag .let's add some items.
                    </div>
                </center>
            </div>

            <div>
                <center>
                    <div style="background-color:Aqua; padding:1px; width:200px;">
                        <h2>
                            <a href="Default.aspx" style="text-decoration:none; color:Black;">
                                ADD ITEMS
                            </a>
                        </h2>
                    </div>
                </center>
            </div>
        </div>
    <%}else{%>
        <h3 style="color:#777;">
            My Cart (<asp:Label ID="Label2" runat="server" Text=""></asp:Label> items)
        </h3>
        
        <div style="padding:25px; float:left; width:50%;">
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
                        
                        <div style="float:left; padding:10px;">
                            <div  style=" font-size:large; padding:2px;">
                                <b>
                                    <%# DataBinder.Eval(Container.DataItem, "itm_name")  %>
                                </b>
                            </div>

                            <div style="padding:2px;">
                                <%# DataBinder.Eval(Container.DataItem, "color")  %>
                            </div>
                            
                            <div style="padding:2px; float:left; width:100%;">
                                <div style="float:left;">
                                    Size: <%# DataBinder.Eval(Container.DataItem, "size")  %>
                                </div>
                                    
                                <a href="Default17.aspx?sc=t&in=<%# DataBinder.Eval(Container.DataItem, "itm_no")%>"
                                style="float:left; padding:2px;">
                                    <div onclick="f3()" class="div1"></div>
                                </a>
                            </div>
                            
                            <div style="float:left; width:100%;">
                                Quantity:
            
                                <a href="Default17.aspx?op=m&id=<%# DataBinder.Eval(Container.DataItem, "itm_no")  %>"
                                style="text-decoration:none; color:Black;">
                                    <input type="button" value="-"/>
                                </a>

                                <%# DataBinder.Eval(Container.DataItem, "qty")  %>
                            
                                <a href="Default17.aspx?op=p&id=<%# DataBinder.Eval(Container.DataItem, "itm_no")  %>"
                                style="text-decoration:none; color:Black;">
                                    <input type="button" value="+"/>
                                </a>
                            </div>
                            
                            <div style=" float:left; width:100%; height:25px; padding:5px;">
                                <a href="Default17.aspx?op=d&id=<%# DataBinder.Eval(Container.DataItem, "itm_no")  %>"
                                style="text-decoration:none; color:#777; padding:5px;">
                                    Remove
                                </a>
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
                        </div>
                    </div>
                </ItemTemplate>

                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
        </div>
        
        <div style="float:left; width:40%;  padding:25px;">
            <div style="color:Black;">Payment Details</div>
            <hr />
            
            <div style="color:#777; font-weight:bolder;">Total:&nbsp
                <span class="l3">
                    Rs.<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </span>
            </div>
            
            <div style="margin:5px;">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Add Address" CssClass="txt_box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="TextBox1">
                </asp:RequiredFieldValidator>
            </div>
            
            <div>
                <asp:Button ID="Button1" runat="server" CssClass="bt2" Text="Place Order" onclick="Button1_Click" />
            </div>
        </div>
        
        <div class="div3" id="d3" runat="server">
            <center>
                <div style="border:1px solid #777; background-color:White; width:100px; border-radius:5px;">
                    <h4>Sizes</h4>
                    
                    <a href="Default17.aspx?q=w&e=0" class="a1">
                        <asp:Label ID="Label5" runat="server" Text="" CssClass="div4"></asp:Label>
                    </a>
                    
                    <a href="Default17.aspx?q=w&e=1" class="a1">
                        <asp:Label ID="Label6" runat="server" Text="" CssClass="div4"></asp:Label>
                    </a>
                    
                    <a href="Default17.aspx?q=w&e=2" class="a1">
                        <asp:Label ID="Label7" runat="server" Text="" CssClass="div4"></asp:Label>
                    </a>
                    
                    <a href="Default17.aspx?q=w&e=3" class="a1">
                        <asp:Label ID="Label8" runat="server" Text="" CssClass="div4"></asp:Label>
                    </a>
                    
                    <a href="Default17.aspx?q=w&e=4" class="a1">
                        <asp:Label ID="Label9" runat="server" Text="" CssClass="div4"></asp:Label>
                    </a>
                    
                    <a href="Default17.aspx?q=w&e=5" class="a1">
                        <asp:Label ID="Label10" runat="server" Text="" CssClass="div4"></asp:Label>
                    </a>
                </div>
            </center>
        </div>
    <%}%>
</asp:Content>

