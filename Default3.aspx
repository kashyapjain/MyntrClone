<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .leftDiv
        {
    	    width:38%; height:auto; float:left; margin:10px;
        }
        .rightDiv
        {
    	    width:58%; height:auto; float:left; margin:10px;
        }
        .txt
        {
    	    font-size:x-large; margin:5px;
        }
        .size
        {
    	    border:solid 1px #777; border-radius:500px; padding:25px; color:#777; width:50px; margin:5px; height:50px;
    	    cursor:pointer;
        }
        .size:hover
        {
    	    border:2px solid Black; color:Black; font-weight:bold;
        }
        .hov_span
        {
    	    visibility:hidden; padding:25px; float:left; border:1px solid black;
        }
        .s1:hover .h1
        {
    	    visibility:visible;
        }
        .tooltip
        {
    	     border:1px solid #ccc; color:#777; border-radius:100%;
        }
        .tooltip .tooltiptext
        {
    	    visibility: hidden; background-color: black; color: #fff; position:relative; top:25px; padding:5px;
    	    left:-25px;
        }
        .tooltip:hover
        {
    	    cursor:pointer; border: 1px solid #777; color:black;
        }
        .tooltip:hover .tooltiptext
        {
    	    visibility: visible;
        }
        .bt2
        {
        	border:none; font-size:larger; color:White; background-color:Aqua; border-radius:10px; margin:5px; font-weight:bolder;
        	width:100%; height:50px;
        }
    </style>
    
    <script>
        function f1()
        {
            MyTextBox = document.getElementById("<%= TextBox1.ClientID %>");
            MyTextBox.value =  document.getElementById("ctl00_ContentPlaceHolder1_Label6").innerHTML;
            document.getElementById("s1").style.border=" 1px solid #777";
            document.getElementById("s1").style.color="black";
            document.getElementById("s2").style.border=" 1px solid #ccc";
            document.getElementById("s2").style.color="#777";
            document.getElementById("s3").style.border=" 1px solid #ccc";
            document.getElementById("s3").style.color="#777";
            document.getElementById("s4").style.border=" 1px solid #ccc";
            document.getElementById("s4").style.color="#777";
            document.getElementById("s5").style.border=" 1px solid #ccc";
            document.getElementById("s5").style.color="#777";
            document.getElementById("l11").style.border=" 1px solid #ccc";
            document.getElementById("l11").style.color="#777";
        }
        
        function f2()
        {
            MyTextBox = document.getElementById("<%= TextBox1.ClientID %>");
            MyTextBox.value = document.getElementById("ctl00_ContentPlaceHolder1_Label7").innerHTML;
            document.getElementById("s1").style.border="  1px solid #ccc";
            document.getElementById("s1").style.color="#777";
            document.getElementById("s2").style.border="1px solid #777";
            document.getElementById("s2").style.color="black";
            document.getElementById("s3").style.border=" 1px solid #ccc";
            document.getElementById("s3").style.color="#777";
            document.getElementById("s4").style.border=" 1px solid #ccc";
            document.getElementById("s4").style.color="#777";
            document.getElementById("s5").style.border=" 1px solid #ccc";
            document.getElementById("s5").style.color="#777";
            document.getElementById("l11").style.border=" 1px solid #ccc";
            document.getElementById("l11").style.color="#777";
        }
        
        function f3()
        {
            MyTextBox = document.getElementById("<%= TextBox1.ClientID %>");
            MyTextBox.value = document.getElementById("ctl00_ContentPlaceHolder1_Label8").innerHTML;
            document.getElementById("s1").style.border=" 1px solid #ccc";
            document.getElementById("s1").style.color="#777";
            document.getElementById("s2").style.border=" 1px solid #ccc";
            document.getElementById("s2").style.color="#777";
            document.getElementById("s3").style.border=" 1px solid #777";
            document.getElementById("s3").style.color="black";
            document.getElementById("s4").style.border=" 1px solid #ccc";
            document.getElementById("s4").style.color="#777";
            document.getElementById("s5").style.border=" 1px solid #ccc";
            document.getElementById("s5").style.color="#777";
            document.getElementById("l11").style.border=" 1px solid #ccc";
            document.getElementById("l11").style.color="#777";
        }
        
        function f4()
        {
            MyTextBox = document.getElementById("<%= TextBox1.ClientID %>");
            MyTextBox.value = document.getElementById("ctl00_ContentPlaceHolder1_Label9").innerHTML;
            document.getElementById("s1").style.border=" 1px solid #ccc";
            document.getElementById("s1").style.color="#777";
            document.getElementById("s2").style.border=" 1px solid #ccc";
            document.getElementById("s2").style.color="#777";
            document.getElementById("s3").style.border=" 1px solid #ccc";
            document.getElementById("s3").style.color="#777";
            document.getElementById("s4").style.border=" 1px solid #777";
            document.getElementById("s4").style.color="black";
            document.getElementById("s5").style.border=" 1px solid #ccc";
            document.getElementById("s5").style.color="#777";
            document.getElementById("l11").style.border=" 1px solid #ccc";
            document.getElementById("l11").style.color="#777";
        }
        
        function f5()
        {
            MyTextBox = document.getElementById("<%= TextBox1.ClientID %>");
            MyTextBox.value = document.getElementById("ctl00_ContentPlaceHolder1_Label10").innerHTML;
            document.getElementById("s1").style.border=" 1px solid #ccc";
            document.getElementById("s1").style.color="#777";
            document.getElementById("s2").style.border=" 1px solid #ccc";
            document.getElementById("s2").style.color="#777";
            document.getElementById("s3").style.border=" 1px solid #ccc";
            document.getElementById("s3").style.color="#777";
            document.getElementById("s4").style.border=" 1px solid #ccc";
            document.getElementById("s4").style.color="#777";
            document.getElementById("s5").style.border=" 1px solid #777";
            document.getElementById("s5").style.color="black";
            document.getElementById("l11").style.border=" 1px solid #ccc";
            document.getElementById("l11").style.color="#777";
        }
        
        function f6()
        {
            MyTextBox = document.getElementById("<%= TextBox1.ClientID %>");
            MyTextBox.value = document.getElementById("ctl00_ContentPlaceHolder1_Label11").innerHTML;
            document.getElementById("s1").style.border=" 1px solid #ccc";
            document.getElementById("s1").style.color="#777";
            document.getElementById("s2").style.border=" 1px solid #ccc";
            document.getElementById("s2").style.color="#777";
            document.getElementById("s3").style.border=" 1px solid #ccc";
            document.getElementById("s3").style.color="#777";
            document.getElementById("s4").style.border=" 1px solid #ccc";
            document.getElementById("s4").style.color="#777";
            document.getElementById("s5").style.border=" 1px solid #ccc";
            document.getElementById("s5").style.color="#777";
            document.getElementById("s6").style.border=" 1px solid #777";
            document.getElementById("s6").style.color="black";
        }
    </script>
    
    <script type="text/javascript" src="jquery-1.8.2.js"></script>
    
    <script src="jquery.elevateZoom-2.5.6.min.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="leftDiv">
        <div style="width:24%; height:auto; float:left;">&nbsp;</div>
        
        <div style="width:75%; float:left;">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div>
                        <img id="img1" src="<%# DataBinder.Eval(Container.DataItem, "pic_location")%>" style="width:100%; height:auto;"
                        alt="nopic"/>
                    </div>
                    
                    <script type="text/javascript">
                        $(function()
                        {
                            $("#img1").elevateZoom();
                        });
                    </script>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    
    <div class="rightDiv">
        <div class="txt">
            <b>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </b>
        </div>
        
        <div class="txt">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>

        <hr style="width:99%; background-color:white; border:solid 1px #c5c5c5;"  />

        <div style="float:left; width:100%;">
            <div class="txt" style="float:left; margin:5px;">
                <b>
                    Rs.<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </b>
            </div>
                
            <div class="txt" style="color:#a3a3a3; float:left; margin:5px;">
                <strike style="color:#a3a3a3;">
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                </strike>
            </div>
                
            <div style="float:left; margin:5px;" class="txt">
                <b>
                    <asp:Label ID="Label5" runat="server" Text="Label" style="color:Red; "></asp:Label>
                </b>
            </div>
        </div>
        
        <div style="float:left; width:100%;">
            <div style="float:left; width:50px; height:50px; margin:5px;">
                <div class="tooltip" onclick="f1()" id="s1" style="text-align:center; padding:15px; width:20px; height:20px">
                    <asp:Label   ID="Label6"  runat="server" Text=""></asp:Label>
        
                    <span class="tooltiptext">
                        <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                    </span>
                </div>
            </div>
            
            <div style="float:left; width:50px; height:50px; margin:5px;">
                <div class="tooltip" onclick="f2()" id="s2" style="text-align:center; padding:15px; width:20px; height:20px">
                    <asp:Label   ID="Label7"  runat="server" Text=""  ></asp:Label>
        
                    <span class="tooltiptext">
                        <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                    </span>
                </div>
            </div>
            
            
            <div style="float:left; width:50px; height:50px; margin:5px;">
                <div class="tooltip" onclick="f3()" id="s3" style="text-align:center; padding:15px; width:20px; height:20px">
                    <asp:Label   ID="Label8"  runat="server" Text=""  ></asp:Label>
        
                    <span class="tooltiptext">
                        <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                    </span>
                </div>
            </div>

            <%if (Session["s4"].ToString().Equals("1")){%>
                <div style="float:left; width:50px; height:50px; margin:5px;">
                    <div class="tooltip" onclick="f4()" id="s4" style="text-align:center; padding:15px; width:20px; height:20px">
                        <asp:Label   ID="Label9"  runat="server" Text=""  ></asp:Label>
            
                        <span class="tooltiptext">
                            <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                        </span>
                    </div>
                </div>
            <%}if (Session["s5"].ToString().Equals("1")){%>
                <div style="float:left; width:50px; height:50px; margin:5px;">
                    <div class="tooltip" onclick="f5()" id="s5" style="text-align:center; padding:15px; width:20px; height:20px">
                        <asp:Label   ID="Label10"  runat="server" Text=""  ></asp:Label>
            
                        <span class="tooltiptext">
                            <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                        </span>
                    </div>
                </div>
            <%}if (Session["s6"].ToString().Equals("1")){%>
                <div style="float:left; width:50px; height:50px; margin:5px;">
                    <div class="tooltip" onclick="f6()" id="l11" style="text-align:center; padding:15px; width:20px; height:20px">
                        <asp:Label   ID="Label11"  runat="server" Text=""  ></asp:Label>
            
                        <span class="tooltiptext">
                            <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
                        </span>
                    </div>
                </div>
            <%}%>
            
            <div style="color:Red; margin:20px; float:left;" id="div1" runat="server">
                please select a size
            </div>
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="Add To Cart" onclick="Button1_Click" CssClass="bt2"/>
        
        <div style="float:left; width:46%; padding:10px;">
            <div style="padding:5px; border:1px solid #ccc; margin:5px;">
                <span style="font-size:large; font-weight:bold;">10% ICICI Bank Instant Discount</span><br />
                Offer valid only for today
            </div>
            
            <div style="padding:5px; border:1px solid #ccc; margin:5px;">
                <span style="font-size:large; font-weight:bold;">Flat 200 Cashback on Airtel Payments Bank</span><br />
                Min spend Rs 2,000; for first time transaction. TCA
            </div>
            
            <div style="padding:5px; border:1px solid #ccc; margin:5px;">
                <span style="font-size:large; font-weight:bold;">10% SuperCash on MobiKwik</span><br />
                Max SuperCash Rs 250
            </div>
            
            <div style="padding:5px; border:1px solid #ccc; margin:5px;">
                <span style="font-size:large; font-weight:bold;">EMI option available</span><br />
                EMI starting from Rs. 59/month
            </div>
        </div>
        
        <div style="float:left; width:46%; padding:10px; margin:5px; padding:10px;">
            <div style="margin:5px; font-weight:50;">
                Tax: Applicable tax on the basis of exact location & discount will be charged at the time of checkout
            </div>
                <hr />
            <div style="margin:5px; font-weight:50;">
                100% Original Products
            </div>
                <hr />
            <div style="margin:5px; font-weight:50;">
                Free Delivery on order above Rs. 1199
            </div>
                <hr />
            <div style="margin:5px; font-weight:50;">
                Cash on delivery might be available
            </div>
                <hr />
            <div style="margin:5px; font-weight:50;">
                Easy 30 days returns and exchanges
            </div>
                <hr />
            <div style="margin:5px; font-weight:50;">
                Try & Buy might be available
            </div>
        </div>
    </div>

    <div style="visibility:hidden;">
        <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
    </div>
    
    <div style="clear:both;"></div>
</asp:Content>

