<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default20.aspx.cs" Inherits="Default20" Title="Untitled Page" %>

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
            border:none; background-color:Aqua; color:White; width:100px; height:75px; font-size:larger; font-weight:bolder;
            BORDER-RADIUS:10px; cursor:pointer;
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
                    <a class="a1" href="Default20.aspx" style="color:Aqua; font-weight:bolder;">Profile</a>
                </div>
                    <hr />
                <div style=" width:50px; height:25px;">
                    <a class="a1" href="Default26.aspx">Orders</a>
                </div>
            </div>
            
            <div style="border:1px solid #ccc; width:75%; float:left; padding:50px;">
                <center>
                    <div>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Email address" CssClass="txt_box">
                        </asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*">
                        </asp:RequiredFieldValidator>
                            <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Please Enter correct Email Address"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" >
                        </asp:RegularExpressionValidator>
                    </div>
                    
                    <div>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Mobile Number" CssClass="txt_box">
                        </asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                        ControlToValidate="TextBox2">
                        </asp:RequiredFieldValidator>
                            <br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"
                         ErrorMessage="Please Enter correct Mobile Number" ValidationExpression="[0-9]{10}">
                         </asp:RegularExpressionValidator>
                    </div>
                    
                    <div>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Password" CssClass="txt_box">
                        </asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                        ControlToValidate="TextBox3">
                        </asp:RequiredFieldValidator>
                    </div>
                    
                    <asp:Button ID="Button2" runat="server" Text="update" CssClass="bt4" 
                        onclick="Button2_Click1"/>
                </center>
            </div>
        </div>
    </div>
</asp:Content>

