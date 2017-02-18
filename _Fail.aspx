<%@ Page Title="kjskhakj" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="_Fail.aspx.cs" Inherits="_Fail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pagecontainer" style="margin-top:120px;">
        <div class="ssscontainer ssscontent" style="text-align:center;">
            <div class="ssscard-4 ssstext-green">
                <h1 class="ssscenter">
                    Error!
                </h1>
                <p class="ssstext-red">Some error has occured. Please report it at admin@ticketmeout.com</p>
                <p>This error might be caused due to following reasons:</p><br />
                <ul style="text-align:left;color:black;">
                    <li>You have already sold your ticket.</li>
                    <li>Someone might have bought the same ticket before you.(Two persons clicking on the same ticket)</li>
                    <li>We have the ticket in our database already.</li>
                    <li>The payment might have failed/cancelled.</li>
                </ul>
                <a href='default.aspx'>Click here</a> to return to HomePage.<br />
                <p class="ssstext-black ssspadding-32">For any queries please feel free to mail us at : support@ticketmeout.com</p>
            </div>
        </div>
        
    </div>
</asp:Content>
