<%@ Page Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="Default18.aspx.cs" Inherits="Default18" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:#777; width:95%; height:auto; padding:30px;">
        <center>
            <div style="background-color:White; width:250px; padding:10px; border-radius:25px;">
                <div>
                    <h4>Your Order number is:</h4>
            
                    <h2>#<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
                </div>
                    <hr />
                <div><h4>Your Items will be dilevered at your Address within a week.</h4></div>
                    <hr />
                <h2>Thank You for Shopping</h2>
            </div>
        </center>
    </div>
</asp:Content>

