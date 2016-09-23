<%@ Page Title="TicketMeOut" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="_ThankYou_.aspx.cs"  Inherits="_ThankYou_" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pagecontainer" style="margin-top:120px;" >
        <div class="ssscontainer ssscontent" style="text-align:center;">
            <div class="ssscard-4 ssstext-green">
                <h1>
                    Thank You for supporting us..
                </h1>
                <p class="ssstext-red">Please call the Seller and <b>donot refresh this page </b>until you note down the below Number.</p>
                <asp:Label ID="ThankYouBuy" CssClass="ssstext-red sssxxlarge" runat="server" />
                <p class="ssstext-black ssspadding-32">For any queries please feel free to mail us at : support@ticketmeout.com</p>
            </div>
        </div>
        
    </div>
</asp:Content>

