<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

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

    <head runat="server">
        <title>Untitled Page</title>
        
        <style type="text/css">
        .menu
        {
            padding:20px; cursor:pointer; font-size:larger; font-weight:bold;
        }
         .mc
        {
        	background-color:White; position:absolute; width:95%; height:525px; z-index:1; top:85px;
        	visibility:hidden; transition:visibility 0.5s; opacity:0; transition:opacity 2s; padding:25px;
        	display:block;
        	
        }
        .menu:hover
        {
            border-bottom:3px solid Aqua;
        }
        .tooltiptext
        {
    	     color:#fff; border-radius:6px; z-index: 1; width:100%; position:relative;
    	     height:auto; visibility:hidden; top:-25px;
        }
        .tooltip:hover ~.tooltiptext
        {
    	    visibility:visible;
        }
        .uname
        {
        	border-radius:100%; border:2px solid #777; background-color:Aqua; padding:10px; color:Black; font-weight:800; 
        	font-size:large;
        }
        .cart
        {
        	font-size:10px; background-color:Red; color:White; font-weight:550; border-radius:750px; padding:5px;
        	position:absolute; top:10px; left:1260px;
        }
        .pre
        {
        	float:left; height:300px; width:50px; background-color:Gray; font-size:30px;
        }
        .nxt
        {
        	float:right; height:300px; width:50px; background-color:Gray; font-size:30px;
        }
        .c_pic
        {
        	width:300px; height:300px; background-position:center; background-repeat:no-repeat; background-size:100% 100%;
        	border:1px solid #ccc;
        }
        .c_pic:hover
        {
        	border:1px solid #777;
        }
        .c_nm
        {
        	clear:both; text-align:center; font-size:x-large;
        }
        .topnav 
        {
        	overflow: hidden; background-color: #e9e9e9; margin:15px 5px 0px 5px;
        }
        .text
        {
        	padding: 6px; font-size: 17px; border: 1px solid #ccc; width:90%; margin:6px; float:left;
        }
        .bt
        {
        	float:left; margin-top:6px; cursor:pointer; width:25px; height:25px;
        }
        .category
        {
        	font-size:large; font-weight:bold; color:Aqua; display:block; padding:3px;
        	
        }
        .m_txt
        {
        	float:left; letter-spacing:1px; padding:5px;
        }
        .m_l
        {
        	text-decoration:none; color:Black;
        }
        .m_l:hover
        {
        	text-decoration:underline;
        }
    </style>

    <script type="text/javascript">
            var pos=1;
            
            function prevbt()
            {
                pos=pos-1;
                if(pos<1){ pos=3; }
                document.getElementById("disp").src = "pics/slider"+pos+".jpg";
            }
            
            function nextbt()
            {
                pos=pos+1;
                if(pos>3){ pos=1; }
                document.getElementById("disp").src= "pics/slider"+pos+".jpg";
            }
            function st_disp()
            {
                setInterval(disp,3000);
            }
            function disp()
            {
                document.getElementById("disp").src= "pics/slider"+pos+".jpg";
                pos=pos+1;
                if(pos>3){ pos=1; }
            }
            function f1()
            {
                document.getElementById("wc").style.visibility="hidden";
                document.getElementById("kc").style.visibility="hidden";
                document.getElementById("mc_id").style.visibility="visible";
                document.getElementById("mc_id").style.opacity="1";
            }
            function f1_2()
            {
                document.getElementById("mc_id").style.opacity="0";
                document.getElementById("mc_id").style.visibility="hidden";
            }
            function f2()
            {
                document.getElementById("wc").style.visibility="hidden";
                document.getElementById("mc_id").style.visibility="hidden";
                document.getElementById("kc").style.visibility="visible";
                document.getElementById("kc").style.opacity="1";
            }
            function f2_2()
            {
                document.getElementById("kc").style.opacity="0";
                document.getElementById("kc").style.visibility="hidden";
            }
            function f3()
            {
                document.getElementById("mc_id").style.visibility="hidden";
                document.getElementById("kc").style.visibility="hidden";
                document.getElementById("wc").style.visibility="visible";
                document.getElementById("wc").style.opacity="1";
            }
            function f3_2()
            {
                document.getElementById("wc").style.opacity="0";
                document.getElementById("wc").style.visibility="hidden";
            }
    </script>
    </head>
    <body onload="st_disp()">
        <form id="form1" runat="server">
            <div style="float:left; width:100%;">
                <!-- headiing , the brand name -->
            
                <div style="float:left; background-color:Aqua; width:25%; height:auto;">
                    <center>
                        <h1>
                            <a href="Default.aspx" style="text-decoration:none; color:Black;">
                                The Fashion Store
                            </a>
                        </h1>
                    </center>
                </div>
                
                <!-- search -->
                
                <div style="width:45%; float:left; height:80px;">
                    <div class="topnav">
                        <asp:TextBox CssClass="text" placeholder="search" ID="TextBox1" runat="server"/>
                        
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"
                        CssClass="bt">
                            <img alt="no pic" src="pics/images.png" class="bt"/>
                        </asp:LinkButton>
                    </div>
                </div>
                
                <!-- menues -->
            
                <div style="width:30%; height:80px; float:left;">
                    <div style="margin-top:25px; float:left;">
                        <a href="Default15.aspx?q=w&e=men" style="text-decoration:none; color:Black;">
                            <span class="menu" onmouseover="f1()" >Mens</span>
                        </a>

                        <a href="Default15.aspx?q=w&e=kids" style="text-decoration:none; color:Black;">
                            <span class="menu" onmouseover="f2()" >Kids</span>
                        </a>
                        
                        <a href="Default15.aspx?q=w&e=women" style="text-decoration:none; color:Black;">
                            <span class="menu" onmouseover="f3()" >Womens</span>
                        </a>
                    </div>
                
                    <div style="float:left; height:100%;">
                        <div style="margin-top:20px;">
                        <a href="Default17.aspx" style="text-decoration:none;">
                            <span style="color:Black;">
                                <img alt="cart" src="pics/cart_pic.png" height="25px" width="30px"/>
                            </span>
                        
                            <span class="cart" id="l2" runat="server"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
                        </a>
                    </div>
                        </div>

                        <% if (Session["ctnm"].ToString() == "1"){%>
                            <div style=" height:100%; float:left;" class="tooltip">
                            <div style="margin-top:25px; margin-left:5px;">
                                <a href="Default20.aspx" style="text-decoration:none;">
                                    <span class="uname">
                                        <b>
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </b>
                                    </span>
                                </a>
                            </div>
                            </div>
                            <div class="tooltiptext">
                                <span style="background-color: black; padding:3px; border-radius:10px; float:right;">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </span>
                            </div>
                        <%}else{%>
                        <div style="float:left; height:80px;">
                        <div style="margin-top:20px; margin-left:10px;">
                            <a href="Default16.aspx">
                                <img src="pics/download.png" height="25px" width="25px" alt="no pic"/>
                            </a>
                        </div>
                            </div>
                        <%} %>
                    </div>
            </div>

            <div class="mc" id="mc_id" onmouseout="f1_2()" onmouseover="f1()">
                <div class="m_txt">
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=top wear&mcat=men"><span class="category">Topwear</span></a>

                    <asp:Repeater ID="Repeater2" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=men">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>

                <a class="m_l" href="Default15.aspx?oc=g3&cat=indian wear&mcat=men"><span class="category">Indian & Festive Wear</span></a>
                <asp:Repeater ID="Repeater3" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=men">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                <a class="m_l" href="Default15.aspx?oc=g3&cat=bottom wear&mcat=men"><span class="category">Bottomwear</span></a>
                <asp:Repeater ID="Repeater4" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=men">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                </div>
                <div class="m_txt">
                <a class="m_l" href="Default15.aspx?oc=g3&cat=foot wear&mcat=men"><span class="category">Footwear</span></a>
                <asp:Repeater ID="Repeater5" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=men">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                <span class="category">Personal Care</span>
                <span class="category">Sunglasses & Frames</span>
                <span class="category">Watches</span>
                <a  class="m_l" href="Default15.aspx?oc=g3&cat=sports wear&mcat=men"><span class="category">Sports & Active Wear</span></a>
                <asp:Repeater ID="Repeater6" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=men">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                    <span class="category">Jackets & Sweatshirts</span>
                </div>
                <div class="m_txt">
                <span class="category">Bags & Backpacks</span>
                <span class="category">Luggages & Trolleys</span>
                </div>
            </div>
            
            <div class="mc" id="kc" onmouseout="f2_2()" onmouseover="f2()">
            <div>
             <div class="m_txt">
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=boys clothing&mcat=kids"><span class="category">Boys Clothing</span></a>

                    <asp:Repeater ID="Repeater7" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=kids">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=girls clothing&mcat=kids"><span class="category">Girls Clothing</span></a>

                    <asp:Repeater ID="Repeater8" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=kids">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                </div>
                <div class="m_txt">
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=boys footwear&mcat=kids"><span class="category">Boys Footwear</span></a>

                    <asp:Repeater ID="Repeater9" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=kids">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=girls footwear&mcat=kids"><span class="category">Girls Footwear</span></a>

                    <asp:Repeater ID="Repeater10" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=kids">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=toys&mcat=kids"><span class="category">Toys</span></a>

                    <asp:Repeater ID="Repeater11" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=kids">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=kids accessories&mcat=kids"><span class="category">Kids Acessories</span></a>

                    <asp:Repeater ID="Repeater12" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=kids">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                </div>
                <div class="m_txt">
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=brands&mcat=kids"><span class="category">Brands</span></a>

                    <asp:Repeater ID="Repeater13" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=kids">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                </div>
                </div>
            </div>
            <div class="mc" id="wc" onmouseout="f3_2()"  onmouseover="f3()">
                <div class="m_txt">
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=indian and fusion wear&mcat=women"><span class="category">Indian & Fusion wear</span></a>

                    <asp:Repeater ID="Repeater14" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=women">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=belts&mcat=women">
                        <span class="category">Belts, Scarves & More</span>
                    </a>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=watches&mcat=women">
                        <span class="category">Watches & Wearables</span>
                    </a>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=western wear&mcat=women"><span class="category">Western Wear</span></a>

                    <asp:Repeater ID="Repeater15" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=women">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=sunglasses&mcat=women">
                        <span class="category">Sunglasses & Frames</span>
                    </a>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=foot wear&mcat=women"><span class="category">Footwear</span></a>

                    <asp:Repeater ID="Repeater16" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=women">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                        </div>
                        <div class="m_txt">
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=sports wear&mcat=women"><span class="category">Sports & Active Wear</span></a>

                    <asp:Repeater ID="Repeater17" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=women">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=sleep wear&mcat=women"><span class="category">Lingerie & Sleepwear</span></a>

                    <asp:Repeater ID="Repeater18" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=women">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=beauty&mcat=women"><span class="category">Beauty & Personal Care</span></a>

                    <asp:Repeater ID="Repeater19" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=women">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=jwellery&mcat=women"><span class="category">Jewellery</span></a>

                    <asp:Repeater ID="Repeater20" runat="server">

                    <HeaderTemplate></HeaderTemplate>

                    <ItemTemplate>
                        <div>
                        <a class="m_l" href="Default15.aspx?oc=g3&cat=<%# DataBinder.Eval(Container.DataItem, "sub_category")%>&mcat=women">
                        <%# DataBinder.Eval(Container.DataItem, "sub_category")%>
                        </a>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate></FooterTemplate>

                    </asp:Repeater>
                
                    <a class="m_l" href="Default15.aspx?oc=g3&cat=bags&mcat=women"><span class="category">Bags</span></a>
                </div>
            </div>

            <div style=" float:left; margin-bottom:10px;">
                <input type="button" value="<" class="pre" onclick="prevbt()"/> 
                
                <img src="pics/slider1.jpg" id="disp" width="91%" height="300px;" alt="no pic" class="img1"/>
      
                <input type="button" value=">" class="nxt" onclick="nextbt()" />
            </div>
            
            <div style="width:19%; float:left;">&nbsp;</div>
            
            <div style=" width:60%; margin:auto; float:left;">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate></HeaderTemplate>
                    
                    <ItemTemplate>
                        <div style="float:left; margin:10px;">
                            <a style=" color:Black; text-decoration:none;" 
                            href="Default15.aspx?oc=g1&nmq=<%# DataBinder.Eval(Container.DataItem, "catogry_name")  %>">
                                <div class="c_pic"
                                style="background-image:url(  <%# DataBinder.Eval(Container.DataItem, "pic_location")  %>);">
                                </div>
                                
                                <div class="c_nm">
                                    <%# DataBinder.Eval(Container.DataItem, "catogry_name")  %>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                    
                    <AlternatingItemTemplate>
                        <div style="float:right; margin:10px;">
                            <a style=" color:Black; text-decoration:none;" 
                            href="Default15.aspx?oc=g2&nmq2=<%#   DataBinder.Eval(Container.DataItem, "catogry_name")  %>">
                                <div class="c_pic"
                                style="background-image:url(<%# DataBinder.Eval(Container.DataItem, "pic_location")  %>);">
                                </div>
                                
                                <div class="c_nm">
                                    <%# DataBinder.Eval(Container.DataItem, "catogry_name")  %>
                               </div>
                            </a>
                        </div>
                    </AlternatingItemTemplate>
                    
                    <FooterTemplate></FooterTemplate>
                </asp:Repeater>
            </div>

            <div style="width:19%; float:left"  class="div4">&nbsp;</div>

            <div  style=" clear:both; border:1px solid black; background-color:#e9e9e9; padding:10px;">
                    <%if (Session["admin"].ToString() == "1"){%>
                        <center>
                            <a href="Default2.aspx">Home</a>&nbsp;&nbsp;|
                            <a href="Default4.aspx">Category</a>&nbsp;&nbsp;|
                            <a href="Default9.aspx">slider</a>&nbsp;&nbsp;|
                            <a href="Default.aspx">web site</a>&nbsp;&nbsp;
                        </center>
                     <%}else{%>
                        <center>
                            <a href="Default15.aspx?q=w&e=men" style="color:Black;">Mens</a>/
                            <a href="Default15.aspx?q=w&e=kids" style="color:Black;">Kids</a>/
                            <a href="Default15.aspx?q=w&e=women" style="color:Black;">Women</a>
                        </center>
                    <%}%>
                    <center>
                    <div style="margin:10px; font-size:larger;">
                        contact us on: +91 6239771997
                    </div>
                    </center>
                    <div style="margin:5px; color:#777; padding:25px;">
                        <center><div style="color:Black; font-weight:bold; margin:5px;">
                            ONLINE SHOPPING MADE EASY AT MYNTRA
                        </div></center>
We have all planned our trips to the clothing store in advance, vividly dreaming about what we would buy once there. 
Some of us even have sales assistants for friends and have often asked them for a favour or two during peak shopping 
season (read: festivals and sales). But what we can all admit to is that we have always wished it was easier than to 
go down to the store in dense traffic, navigating through throngs of fashionistas, all vying for the same trendy 
clothing items, waiting in line to try on our top picks in the trial rooms, etc.<br /><br />

Well, you can do all this from the comfort of your home while enjoying many online shopping benefits, right from
 irresistible deals and discounts to a robust user interface with many shopping filters (based on various categories 
 of clothing, brands, budget, etc.). to make your shopping experience truly hassle free. Myntra, THE place to be when 
 it comes to the latest in fashion, offers you fine, high-quality merchandise – go ahead and indulge in a bit of 
 shopping online for men, women and kids. You can even pick up gift sets for your near and dear ones while being 
 absolutely certain that it will put a smile on their faces. Go ahead and shop till you drop on India’s largest 
 online fashion store.<br /><br />

<center><div style="color:Black; font-weight:bold; margin:5px;">
    ALL THE LATEST TRENDS UNDER ONE ROOF
</div></center>
Haven’t we all wondered where we could get our favourite celebrity or fashion icons’ latest looks? Sure, they have an
 entourage of personal stylists, makeup artists and hair dressers to look the way they do but with Myntra, you will 
 understand that you do not have to spend a fortune to look great. There is something for the whole family and you 
 can engage in online shopping for women, men and kids. Choose from the widest spread of western wear, traditional 
 clothing, casual wear, lounge or sleep wear, sports or active wear, formal wear, lingerie and more in the clothing 
 section. Footwear of numerous kinds, watches, sunglasses, bags, jewellery, scarves and stoles, beauty, skin and hair
  care products, fragrances, and so much more are just some of the other items you can grab hold of here.<br /><br />

<center><div style="color:Black; font-weight:bold; margin:5px;">
    Online shopping for Kids
</div></center>
We, at Myntra, have all that you need to spruce up your fashion quotient of your Kids. They get to look extra cute
 with clothing by top brands like UFO, Lilliput, Cutecumber, Chhota Bheem, WROGN for Tweens, Sweet Angel, Spiderman, 
 etc.<br /><br />

<center><div style="color:Black; font-weight:bold; margin:5px;">
    Shop online for your Favourite International Brands & Celebrity brands
</div></center>
Whether it is clothing, footwear, jewelry, accessories and cosmetics, we showcase the most elite brands in the world.
 Tommy Hilfiger, Forever 21, Vero Moda, FabAlley, All About You by Deepika Padukone, Adidas, Puma, Reebok, Burberry, 
 French Connection, Calvin Klein, HRX by Hrithik Roshan, Arrow, United Colors of Benetton, Esprit, Bombay Dyeing, 
 Forest Essentials, L’Oréal Paris, M.A.C, Bobbi Brown, and thousands of other national and international, 
 budget-friendly as well as luxury brands await you with products that you just cannot turn down.<br /><br />

<center><div style="color:Black; font-weight:bold; margin:5px;">
    Avail added online shopping benefits
</div></center>
Make sure to use our card or cash on delivery option, easy 30-day returns policy, try and buy option 
(for select products), and other customer-friendly features. A comprehensive sizing guide and detailed product 
descriptions coupled with high-resolution product shots will give you all the information to make the right 
buying decision.<br /><br />

You just need to pay for the product, while we ensure free shipping on almost everything. You can also buy gifts 
for your loved ones and avail our special gift-wrap facility at a nominal cost on Myntra.

Give your wardrobe an upgrade with stylish clothing – head to Myntra.com for a great online fashion shopping 
experience now!
                    </div>

                    <center>
                        Developed By:Kahsyap Jain
                    </center>
                </div>
        </form>
    </body>
</html>
