<%@ Page Title="" Language="C#" MasterPageFile="~/Users/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Users_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
<h3 class="heading-tittle text-center font-italic">Receiver's Details</h3>
<form id="Form1" runat="server">
	<div class="modal-body">
					<form action="#" method="post">
                    	
                        <div class="form-group">
							<label class="col-form-label">Recevier Name</label>
						
                            <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder=" "  required=""></asp:TextBox>
						</div>
                        <div class="form-group">
							<label class="col-form-label">Address</label>
							
                            <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder=" "  required="" TextMode="MultiLine"></asp:TextBox>
						</div>
						<div class="form-group">
							<label class="col-form-label">Contact No.</label>
						
                            <asp:TextBox ID="txtcontact" runat="server" class="form-control" placeholder=" "  required=""></asp:TextBox><asp:RegularExpressionValidator
                                ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtcontact" Font-Bold="True" Font-Size="Medium" ValidationExpression="\d{10}" Text="Enter valid number" ForeColor="#FF3300"></asp:RegularExpressionValidator>
						</div>
                        <hr />
                      <div class="form-group">
							<label class="col-form-label">Total Amount to Pay=</label>
						    <asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                            
						</div>

                        <div class="form-group">
							<label class="col-form-label"><strong>Payment Mode</strong></label>
                            <br />
                            <asp:RadioButton ID="rbCOD" runat="server" GroupName="A" 
                                Text="Cash On Delivery" />&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="rbOnlineCard"
                                runat="server" GroupName="A" Text="Online Card Payment" />
                            
						</div>

                     <%--   <div class="form-group">
							<asp:Button ID="btnotp" runat="server" class="btn btn-block" Text="Send OTP" 
                                onclick="btnotp_Click"  />
						</div>--%>
                           <%-- <div class="form-group">
							<label class="col-form-label">Enter OTP </label>
							
                            <asp:TextBox ID="txtotp" runat="server" class="form-control" placeholder=""  ></asp:TextBox>
						</div>--%>
                         
						<div class="right-w3l">
							<%--<input type="submit" class="form-control" value="Log in">--%>
                            <asp:Button ID="btnsubmit" runat="server" class="form-control" 
                                Text="Book Order" onclick="btnsubmit_Click" />
                                <br />
                            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
						</div>
						
					</form>
				</div>
                </form>
                </div>
</asp:Content>

