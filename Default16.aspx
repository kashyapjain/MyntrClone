<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default16.aspx.cs" Inherits="Default16" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .txt_box
        {
        	width:250px; height:20px; padding:10px; border-radius:5px;
        }
        .r
        {
        	border:none;  text-decoration:none; color:White;
        }
        .r2
        {
            text-decoration:none; color:Aqua;
        }
        .w
        {
        	color:Red; font-weight:lighter;
        }
        .bt2
        {
        	background-color:Aqua; padding:25px; width:300px; border-radius:5px; margin:5px; border:1px solid #ccc;
        	font-size:larger; cursor:pointer; color:White;
        }
        .bt3
        {
        	background-color:white; padding:25px; width:300px; border-radius:5px; margin:5px; border:1px solid #777;
        	font-size:larger; cursor:pointer; color:Aqua;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:#bbecff; padding:25px;">
        <div style="border:1px solid black; background-color:white;">
            <center>
                <div>
                    <h2 style="padding:25px;">Signup with The Fashion Store</h2>
                </div>
            
                <div>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Email Adress" CssClass="txt_box">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*">
                    </asp:RequiredFieldValidator>
                </div>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="Please enter a correct email address"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" >
                </asp:RegularExpressionValidator>
                    <div></div>
                <div>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Mobile Number" CssClass="txt_box"></asp:TextBox>
            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                    ControlToValidate="TextBox2">
                    </asp:RequiredFieldValidator>
                </div>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"
                ErrorMessage="Please enter a correct Mobile Number" ValidationExpression="[0-9]{10}">
                </asp:RegularExpressionValidator>
                    <div></div>
                <div>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="Password" CssClass="txt_box">
                    </asp:TextBox>
            
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                    ControlToValidate="TextBox3">
                    </asp:RequiredFieldValidator>
                </div>
                    <div></div>
                <asp:Button ID="Button1" runat="server" Text="REGISTER" onclick="Button1_Click" CssClass="bt2"/>
                    <br />
                <asp:Button ID="Button2" runat="server" Text="Log In" onclick="Button2_Click" CssClass="bt3"/> 
            
                <div>
                    <asp:Label ID="Label1" runat="server" Text="" CssClass="w"></asp:Label>
                </div>
            </center>
        </div>
    </div>
</asp:Content>

