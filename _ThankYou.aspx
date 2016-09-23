<%@ Page Title="TicketMeOut" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="_ThankYou.aspx.cs" Inherits="_ThankYou" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pagecontainer" style="margin-top:120px;">
        <div class="w3-container w3-content" style="text-align:center;">
            <div class="w3-card-4 w3-text-green">
                <h1>
                    Thank You for supporting us..
                </h1>
                <p class="w3-text-red">We will send you a notification via Mobile (or the Buyer himself will contact you ) as soon as someone is ready to buy your ticket.</p>
                <asp:Label ID="ThankYouBuy" CssClass="w3-text-red w3-xxlarge" runat="server" />
                <p class="w3-text-black w3-padding-32">For any queries please feel free to mail us at : support@ticketmeout.com</p>
                <p class="w3-text-red w3-padding-32"><b >Note :</b><i>Don't try to sell this ticket again on our website. If you ever try,we are not responsible for your money.</i></p>
            </div>
        </div>
        
    </div>
</asp:Content>
 <%--   ThankYou..Mr.<%=  Session["BuyPnr"].ToString() %>  --%>
    

