<%@ Page Title="Sell Reserved Tatkal/General Reserved Tickets"  MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeFile="_SellATicket.aspx.cs" Inherits="_SellATicket" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="ssscontent" style="margin-top:120px;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
 <img id='loadimg' src="images/cube.svg" style="position:absolute;left:50%;top:40%;visibility:hidden;" />
    <div id='contain' class="ssscontainer " style="position:relative;" >
            <div class="sssrow">
                    <asp:TextBox autofocus="autofocus" ID="PnrTextBox" Rows="10" MaxLength="10" style="width:40%;margin:auto;" runat="server" CssClass="sssinput ssscenter sssborder sssround" placeholder="PNR Number" />
                    <asp:RequiredFieldValidator CssClass="ssstext-red" runat="server" ControlToValidate="PnrTextBox" ErrorMessage="Please Enter PNR To Continue." />
                    <asp:RegularExpressionValidator CssClass="ssstext-red" ID="RegExp1" runat="server" ErrorMessage="Please Enter a valid PNR" ControlToValidate="PnrTextBox" ValidationExpression="^[0-9]{10,10}$" />
                    <asp:TextBox ID="NameTextBox" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  sssborder sssmargin-top" placeholder="First Person Name" />
        <asp:RequiredFieldValidator CssClass="ssstext-red" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Please Enter Name." />
        <asp:TextBox ID="MobileNumberTextBox" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  sssborder" placeholder="MobileNumber" />
        <asp:RequiredFieldValidator CssClass="ssstext-red" runat="server" ControlToValidate="MobileNumberTextBox" ErrorMessage="Please Enter Mobile Number." />
        <asp:RegularExpressionValidator CssClass="ssstext-red" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter valid Mobile Number" ControlToValidate="MobileNumberTextBox" ValidationExpression="^[0-9]{10,10}$" />
            </div>
            <div class="sssrow" style="text-align:center">
                <Button ID="PnrValidateButton" class="sssbtn sssteal sssround" style="width:40%;"  onclick="if(ValidatePage()){GetPnr(); return false;}" >Get Data </Button>
            </div>
        <p id="ErrorMess" class="ssstooltip" style="color:red;display:none;">Please Enter a valid PNR.<span style="position:absolute;left:0;bottom:18px"
class="ssstext ssstag ssspink sssanimate-opacity"> This Error might be caused because you have entered an invalid PNR or the PNR is out-of-date.</span></p>
        <div class="sssrow ">
            <div class="ssshalf sssmargin-top">
                <asp:TextBox ID="TrainNumberTextBox" ReadOnly="true" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  " placeholder="Train Number" />
            </div>
            <asp:HiddenField runat="server" ID="hid0" />
            <asp:HiddenField  runat="server" id="hid1" />
            <asp:HiddenField  runat="server" id="hid2" />
            <asp:HiddenField runat="server" id="hid3" />
            <asp:HiddenField runat="server" id="hid4" />
            <asp:HiddenField  runat="server" id="hid5" />
            <asp:HiddenField  runat="server" id="hid6" />
            <asp:HiddenField  runat="server" id="hid7" />

            <div class="ssshalf sssmargin-top">
                <asp:TextBox ID="TrainNameTextBox" ReadOnly="true" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  " placeholder="Train Name" />
            </div>
        </div>
        <div class="sssrow sssmargin-bottom">
            <div class="ssshalf sssmargin-top">
                <asp:TextBox ID="ClassTextBox" ReadOnly="true" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  " placeholder="Class" />
            </div>
            <div class="ssshalf sssmargin-top">
                <asp:TextBox ID="DateOfJourneyTextBox" ReadOnly="true" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  " placeholder="Date-of-Journey" />
            </div>
        </div>
        <div class="sssrow sssmargin-bottom">
            <div class="ssshalf sssmargin-top">
                <asp:TextBox ID="BoardingFromTextBox" ReadOnly="true" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  " placeholder="Boarding From" />
            </div>
            <div class="ssshalf sssmargin-top">
                <asp:TextBox ID="JourneyToTextBox" ReadOnly="true" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  " placeholder="Journey To" />
               
            </div>
        </div>
        <asp:TextBox ID="PassengerCountTextBox" ReadOnly="true" style="width:40%;margin:auto;" runat="server" CssClass="ssscenter sssinput  " placeholder="Passenger Count" />
        

        
        <div style="text-align:center;">
            <asp:Button ID="ProceedToPayButton"  runat="server" CssClass=" ssscyan sssbtn ssscenter sssround sssmargin-top" disabled="true" Text="Proceed To Pay" OnClick="ProceedToPayButton_Click" />
        </div>
   
        
        
    </div>
    

        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>


