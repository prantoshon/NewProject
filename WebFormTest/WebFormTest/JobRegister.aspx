<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobRegister.aspx.cs" Inherits="WebFormTest.JobRegister" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
    <style>

        /*base*/
.error_txt{margin-bottom: 10px; display: block; color: #f00; font-size: 13px;}
.inactive{display:none;}

/*foundation-example*/
#foundation-example{}
.foundation-example__ex-wrapper{
	background-color: lightblue;
}
.foundation-example__in-wrapper{  
	margin: auto;
    max-width: 920px;
    background: white;
    padding: 30px;
}

.foundation-example__title{  
	text-align: center;
    font-size: 40px;
    margin-bottom: 32px;
}

.foundation-example__form-wrapper{  

}
    </style>
<body>
    <form id="form1" runat="server">
    <div>
    <html class="no-js" lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foundation for Sites</title>
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/app.css">
  </head>

  <body>

  	<section id="foundation-example">
  		<div style="height: 50px;background: lightblue;"></div>
  		<div class="foundation-example__ex-wrapper">
  			<div class="foundation-example__in-wrapper">
	  			<div class="foundation-example__title"> Job Register Alam Shipping Ctg/ India /Local</div>
               <center>     <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>    </center> 
        
           <center> <asp:TextBox ID="txtCurrtentTime" runat="server" ReadOnly="True" Height="10px" Width="105px"></asp:TextBox></center>
              <script type="text/javascript">

 

    function ShowTime() {
    var dt = new Date();
   document.getElementById("<%= txtCurrtentTime.ClientID %>").value = dt.toLocaleTimeString();
   window.setTimeout("ShowTime()", 1000);
 } 

</script>

<script type="text/javascript">

 

window.setTimeout("ShowTime()", 1000);

 

</script>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="1000px" Width="890px">
    <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
        <HeaderTemplate>
            Add Record
          
        </HeaderTemplate>
    <ContentTemplate>
       	<div class="row">
							<div class="large-2 columns">
								<label>Vessel Name
								<asp:DropDownList ID="drpVassel" runat="server" Font-Size="X-Small">
                                    <asp:ListItem>M.V NBA</asp:ListItem>
                                    <asp:ListItem>S.V ANA</asp:ListItem>
                                </asp:DropDownList>
								</label>
							</div>

							<div class="large-2 columns">
								<label>Trip Status
							<asp:DropDownList ID="drpTripStatus" runat="server" Font-Size="X-Small">
                                 <asp:ListItem>Started</asp:ListItem>
                                    <asp:ListItem>Not Started</asp:ListItem>
							</asp:DropDownList>
							    </label>
							&nbsp;&nbsp;</div>

               <div class="large-2 columns">
								<label>Job Date
							<asp:TextBox ID="txtJobDate" TextMode="Date" runat="server" Font-Size="X-Small"></asp:TextBox>
								</label>
							</div>

							<div class="large-2 columns">
								<label>Invoice Number
								<asp:TextBox ID="txtInvoceNumber" Font-Size="X-Small" runat="server"></asp:TextBox>
							    </label>
							</div>
               <div class="large-2 columns">
								<label>ID
							<asp:TextBox ID="txtId" Font-Size="X-Small" runat="server" ReadOnly="True"></asp:TextBox>
								</label>
							</div>
               <div class="large-2 columns">
								<label>DHK or Supplier
							<asp:DropDownList ID="drpSuppier" runat="server" Font-Size="X-Small">
                                 <asp:ListItem>Repon Enterprise</asp:ListItem>
                                    <asp:ListItem>Shopon Enterprise</asp:ListItem>
							</asp:DropDownList>
							    </label>
							&nbsp;&nbsp;</div>
						</div>
         
        <div class="row">
            <div class="large-2 columns">
								<label>Owe or shester
							<asp:DropDownList ID="drpOwe" runat="server" Font-Size="X-Small">
                                 <asp:ListItem>Repon Enterprise</asp:ListItem>
                                    <asp:ListItem>Shopon Enterprise</asp:ListItem>
							</asp:DropDownList>
							    </label>
							&nbsp;&nbsp;</div>
            <div class="large-2 columns">
								<label>Oil Quantity
							<asp:TextBox ID="txtOilQuantity" Font-Size="X-Small" runat="server"></asp:TextBox>
								</label>
							</div>
            <div class="large-2 columns">
								<label>Ex,invois
							<asp:TextBox ID="txtexinvois" Font-Size="X-Small" runat="server"></asp:TextBox>
								</label>
							</div>
             <div class="large-2 columns">
								<label>Chasta Rate
							<asp:TextBox ID="txtChastaRate" Font-Size="X-Small" runat="server"></asp:TextBox>
								</label>
							</div>
							
            <div class="large-2 columns">
								<label>Invoce Date oiL
							<asp:TextBox ID="txtInvoceDateoil" TextMode="Date" runat="server" Font-Size="X-Small"></asp:TextBox>
								</label>
							</div>
            <div class="large-2 columns">
								<label>Supplier Name
							<asp:DropDownList ID="drpSupplierName" runat="server" Font-Size="X-Small">
                                 <asp:ListItem>Repon Enterprise</asp:ListItem>
                                    <asp:ListItem>Shopon Enterprise</asp:ListItem>
							</asp:DropDownList>
							    </label>
							&nbsp;&nbsp;</div>

						</div>

        <div class="row">
            <div class="large-2 columns">
								<label>Oil Rate
							<asp:TextBox ID="txtOilRate" Font-Size="X-Small" TextMode="Number"  runat="server"></asp:TextBox>
								</label>  <asp:RangeValidator id="Range1"
           ControlToValidate="txtOilRate"
           MinimumValue="65.5"
           MaximumValue="1000"
           Type="Double"
           EnableClientScript="False"
           Text="The value must be more than 65.5!"
           runat="server"/>
							</div>
          
  <div class="large-2 columns">
								<label>Mo ui
							<asp:TextBox ID="txtMoui" Font-Size="X-Small" TextMode="Number"  runat="server"></asp:TextBox>
								</label>
							</div>
            <div class="large-2 columns">
								<label>Ex oil Date
							<asp:TextBox ID="txtExOilDate" TextMode="Date" runat="server" Font-Size="X-Small"></asp:TextBox>
								</label>
							</div>
            <div class="large-2 columns">
								<label>MOB
							<asp:TextBox ID="txtMob" Font-Size="X-Small" TextMode="Number"  runat="server"></asp:TextBox>
								</label>
							</div>
            <div class="large-2 columns">
								<label>Mobile Rate
							<asp:TextBox ID="txtMobileRate" Font-Size="X-Small" TextMode="Number"  runat="server"></asp:TextBox>
								</label>
							</div>
          <div class="large-2 columns">
								<label>Trip
							<asp:TextBox ID="txtTrip" Font-Size="X-Small" TextMode="Number"  runat="server"></asp:TextBox>
								</label>
							</div>
        </div>
        	<div class="row">
						
<div class="large-2 columns">
								<label>Check Amount
							<asp:TextBox ID="txtCheckAmount" Font-Size="X-Small" TextMode="Number"  runat="server"></asp:TextBox>
								</label>
							</div>
<div class="large-2 columns">
								<label>GOODS
								<asp:DropDownList ID="drpGoods" runat="server" Font-Size="X-Small">
                                    <asp:ListItem>M.V NBA</asp:ListItem>
                                    <asp:ListItem>S.V ANA</asp:ListItem>
                                </asp:DropDownList>
								</label>
							</div>							
<div class="large-2 columns">
								<label>Extra Oil Qty
							<asp:TextBox ID="txtExtraOilQty" Font-Size="X-Small" TextMode="Number"  runat="server"></asp:TextBox>
								</label>
							</div>
                <div class="large-2 columns">
								<label>Rout
								<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small">
                                    <asp:ListItem>india</asp:ListItem>
                                    <asp:ListItem>BD</asp:ListItem>
                                </asp:DropDownList>
								</label>
							</div>	
<div class="large-4 columns">
								<label>Remarks
							<asp:TextBox ID="txtRemarks" Font-Size="X-Small" TextMode="Number"  runat="server" Height="50px"></asp:TextBox>
								</label>
							</div>
                   <asp:Button ID="btnSave" CssClass="success button" runat="server" Text="Save" Width="90px" OnClick="btnSave_Click" />
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
     
    </ContentTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
        <HeaderTemplate>
            Save Record
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
        <HeaderTemplate>
            Next Record
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
        <HeaderTemplate>
            Pervios Record
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="TabPanel5">
        <HeaderTemplate>
            ReportToFile
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel6" runat="server" HeaderText="TabPanel6">
        <HeaderTemplate>
            Undo Report
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel7" runat="server" HeaderText="TabPanel7">
        <HeaderTemplate>
            Last Record
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel8" runat="server" HeaderText="TabPanel8">
        <HeaderTemplate>
            Job Register
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel9" runat="server" HeaderText="TabPanel9">
        <HeaderTemplate>
            Print Report
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel10" runat="server" HeaderText="TabPanel10">
        <HeaderTemplate>
            Close
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel ID="TabPanel11" runat="server" HeaderText="TabPanel11">
        <HeaderTemplate>
            Refresh
        </HeaderTemplate>
    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>

	  			<div class="foundation-example__form-wrapper">
		

					
						
				
	  			</div>
  			</div>
  		</div>
  		<div style="height: 50px;background: lightblue;"></div>
  	</section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.js"></script>
    <script src="js/app.js"></script>

  </body>
</html>
    </div>
    </form>
</body>
    <link href="//cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/css/foundation.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/js/foundation.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</html>
