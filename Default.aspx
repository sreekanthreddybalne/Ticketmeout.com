<%@ Page Title="TicketMeOut-Buy or Sell Train Tickets - Tatkal /General Reserved Tickets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<noscript>
    <style type="text/css">
        .pagecontainer {display:none;}
    </style>
    <div class="sssred" >
    <h3 class="ssscenter">Javascript Required.Please Enable It. </h3>
    </div>
</noscript>

    <div class="pagecontainer" style="margin-top:120px;margin-bottom:120px;">

        <div class="ssscontainer">
			<h4 style="font-family:simple;font-weight:bold;" class="sssxxlarge ssstext-red">Plans changed ?</h4>
			<p class="ssscenter ssshalf ssssand">You have a confirmed ticket and now your plans have got changed. 
                Are you ready to loose some percent of your <b>money</b> ? 
                </p>
            <p class="ssscenter ssshalf ssslight-grey ">
                Tried a lot to get a ticket confirmed due to 
			an emergency but failed . Why stand in the compartments for long <b>hours</b> ? </p>
		</div>
    <div class="ssscontainer ssscenter ssssection ssshide-small">
        <h1 class="sssjumbo ssstext-red ssscard-8" style="font-family:street_gothic;"><i>I am here at my own risk</i></h1>
    </div>
    <div class="ssscontainer ">
        <div class="sssrow ssscenter">
            <div class="ssshalf">
                <asp:Button runat="server" ID="Sellaticket" CssClass="sssbtn sssteal sssround sssripple sssxxlarge sssmargin-top" style="font-family:roadrage;"  Text="To Sell a Ticket" OnClick="Sellaticket_Click" ></asp:Button>
            </div>
            <div class="ssshalf">
                <asp:Button runat="server" id="Buyaticket" CssClass="sssbtn ssscyan sssround sssripple sssxxlarge sssmargin-top " style="font-family:roadrage;" Text="To Buy a Ticket" OnClick="Buyaticket_Click" ></asp:Button>
            </div>
        </div>
    </div>
    
    </div>
</asp:Content>







