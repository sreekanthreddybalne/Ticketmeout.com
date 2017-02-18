<%@ Page Title="Buy  Reserved Tatkal/General Tickets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="_BuyATicket.aspx.cs" Inherits="_BuyATicket" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<asp:UpdatePanel ID="UpdatePanelBuyATicket" runat="server">

    <ContentTemplate>
       
        <style>
            tr:hover { background: #ddd; }
td { border: 1px solid #000; border-collapse: collapse; }
td a { display: block;text-decoration:none; }
        </style>
<!-- Page Container -->
<div class="ssscontainer ssscontent" style="max-width:1400px;margin-top:120px">
  <!-- The Grid -->
  <div class="sssrow">
    <!-- Left Column -->
    <div class="ssscol m3">
      <!-- Profile -->
      <div class="ssscard-2 sssround ssswhite">
        <div class="ssscontainer">
         <h3 class="ssscenter ssstext-brown" style="font-family:Nowadays;">Search By</h3>
         <hr />
         <asp:TextBox CssClass="sssinput sssborder ssscenter ssshover-light-grey sssround sssmargin-bottom" ID="SearchTrainNumber"  runat="server" MaxLength="5" placeholder="TrainNumber"/>
         <asp:RequiredFieldValidator ErrorMessage="Please enter train number." CssClass="ssstext-red" runat="server" ControlToValidate="SearchTrainNumber" ValidationGroup="Group1"/>
         <asp:RegularExpressionValidator CssClass="ssstext-red" ID="RegExp1" runat="server" ControlToValidate="SearchTrainNumber" ErrorMessage="Please enter valid Train Number" ValidationExpression="^[0-9]{5,5}$" ValidationGroup="Group1"/>
         <asp:TextBox CssClass="sssinput sssborder ssscenter ssshover-light-grey sssround sssmargin-bottom" ID="txtDate1"  runat="server" MaxLength="10" placeholder="dd-mm-yyyy"/>
           <asp:RequiredFieldValidator ErrorMessage="Please enter date." CssClass="ssstext-red" runat="server" ControlToValidate="txtDate1" ValidationGroup="Group1"/>
            <asp:RegularExpressionValidator runat="server" CssClass="ssstext-red" ControlToValidate="txtDate1" ValidationExpression="(((0|1)[1-9]|2[0-9]|3[0-1])-(0[1-9]|1[0-2])-((19|20)\d\d))$" ErrorMessage="Invalid date format." ValidationGroup="Group1" />
         <asp:Button CssClass="sssbtn sssround ssslarge sssmargin-top sssmargin-bottom sssteal" ID="GoButton" runat="server" Text="Go" style="float:right;" ValidationGroup="Group1" OnClick="GoButton_Click"/>
        </div>
      </div>
      <br>
     <!-- 
      <div class="ssscard-2 sssround">
        <div class="ssscontainer">
        <asp:TextBox CssClass="sssinput sssborder ssscenter ssshover-light-grey sssround sssmargin-bottom sssmargin-top" ID="SearchFromStationCode" runat="server" placeholder="From Station Code"/>
            <asp:TextBox CssClass="sssinput sssborder ssscenter ssshover-light-grey sssround sssmargin-bottom" ID="SearchToStationCode" runat="server" placeholder="To Station Code"/>
         <button class="sssbtn sssround ssslarge sssmargin-top sssmargin-bottom sssbrown" ID="GoButton2" style="float:right;" onclick="gogo()">Go</button>
        </div>
        </div>
      <br>  -->
        <div class="ssscard-2 sssround">
        <div class="ssscontainer">
            <p><i>Our Website is under development. So please be patient and Search by Train Number.</i></p>
        </div>
        </div>
      <br> 
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
    <div class="ssscol m7">
    
      <div class="sssrow-padding">
        <div class="ssscol m12">
          <div class="ssscard-2 sssround ssswhite">
            <div class="ssscontainer ssspadding sssresponsive" >
                    <div id="TableDiv" runat="server" clientidmode="static">
                
              <table id="tblDisplay" class="ssstable sssstriped sssbordered">
                <thead>
                    <tr class="ssscyan">
                        <th class='ssscyan sssborder'>TrainNumber</th>
                        <th class='ssscyan sssborder'>TrainName</th>
                        <th class='ssscyan sssborder'>From</th>
                        <th class='ssscyan sssborder'>To</th>
                        <th class='ssscyan sssborder'>Class</th>
                        <th class='ssscyan sssborder'>Passengers</th>
                        <th class="ssscyan sssborder" style="display:none;">PNRnum</th>
                        <th class="ssscyan sssborder">Buy</th>
                    </tr>
                </thead>
              <tbody>
                <asp:UpdateProgress ID="UpdateProgressBuyATicket" runat="server">
                    <ProgressTemplate><img  src="images/cube.svg" /></ProgressTemplate>
                </asp:UpdateProgress>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
            </table>
           </div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="ssscontainer ssscard-2 ssswhite sssround sssmargin"><br />
        <img src="images/handi.png" alt="Avatar" class="sssleft" >
        <h4 class="ssstext-red"><b>Why Us ? </b></h4>
        <hr />
        <p>We put your money to work each month where it is needed most.
            Your regular gifts will support our emergency response and provide ongoing support 
            and care for people with injuries and disabilities around the world. <i class="ssstext-green"><a href="#">Read More...</a></i> </p>
          <div class="sssrow-padding sssmargin-bottom" style="margin:0 -16px" />
            <div class="ssshalf">
              <img class="ssscard-4" src="images/handi0.jpg" style="width:100%" />
            </div>
            <div class="ssshalf">
              <img class="ssscard-4"src="images/handi4.jpg" style="width:100%" />
          </div>
        </div>
      </div>
      
    <!-- End Middle Column -->
    </div>
    
    <!-- Right Column -->
    <div class="ssscol m2">
      <div class="ssscard-2 sssround ssswhite ssscenter">
        <div class="ssscontainer">
          <p><strong>ADS</strong></p>
          <p>ads@ticketmeout.com</p>
          
        </div>
      </div>
      <br>
    
      <div class="ssscard-2 sssround ssswhite ssspadding-16 ssscenter">
        <p>ADS</p><br />
          <p>ads@ticketmeout.com</p>
      </div>
      <br>
      
      <div class="ssscard-2 sssround ssswhite ssspadding-32 ssscenter">
        <p><i class="fa fa-bug sssxxlarge"></i></p>
      </div>
      
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
<!-- End Page Container -->
</div>
<br>
</ContentTemplate>
</asp:UpdatePanel>
    <asp:TextBox runat="server" ID="BuyHid1" Value="" Style="display:none;" AutoPostBack="true" OnTextChanged="BuyHid1_TextChanged"></asp:TextBox>
    <asp:TextBox runat="server" ID="BuyHid2" Value="" Style="display:none;" ></asp:TextBox>
    <asp:TextBox runat="server" ID="BuyHid3" Value="" Style="display:none;"></asp:TextBox>
</asp:Content>


