<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop_register.aspx.cs" Inherits="Shop_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
<h3 class="heading-tittle text-center font-italic">Add New Shop</h3>
<form id="Form1" runat="server">
	<div class="modal-body">
					<form action="#" method="post">
						<div class="form-group">
							<label class="col-form-label">Shop Name</label>
							<%--<input type="text" class="form-control" placeholder=" " name="Name" required="">--%>
                            <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder=" "  required=""></asp:TextBox>
						</div>
						<div class="form-group">
							<label class="col-form-label">Owner Name</label>
							<%--<input type="password" class="form-control" placeholder=" " name="Password" required="">--%>
                            <asp:TextBox ID="txtowner" runat="server" class="form-control" placeholder=" "  required=""></asp:TextBox>
						</div>
                        <div class="form-group">
							<label class="col-form-label">Contact No. </label>
							<%--<input type="password" class="form-control" placeholder=" " name="Password" required="">--%>
                            <asp:TextBox ID="txtcontact" runat="server" class="form-control" placeholder=" "  required=""></asp:TextBox>
						</div>
                           <div class="form-group">
							<label class="col-form-label">Address </label>
							<%--<input type="password" class="form-control" placeholder=" " name="Password" required="">--%>
                            <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder=" "  required=""></asp:TextBox>
						</div>
                        <div class="form-group">
							<label class="col-form-label">Description</label>
							<%--<input type="password" class="form-control" placeholder=" " name="Password" required="">--%>
                            <asp:TextBox ID="txtdescrib" runat="server" class="form-control" 
                                placeholder=" "  required="" TextMode="MultiLine"></asp:TextBox>
						</div>
                          <div class="form-group">
							<label class="col-form-label">Username</label>
							<%--<input type="password" class="form-control" placeholder=" " name="Password" required="">--%>
                            <asp:TextBox ID="txtuxername" runat="server" class="form-control" 
                                placeholder=" "  required="" TextMode="SingleLine"></asp:TextBox>
						</div>
                          <div class="form-group">
							<label class="col-form-label">Password</label>
							<%--<input type="password" class="form-control" placeholder=" " name="Password" required="">--%>
                            <asp:TextBox ID="txtpwd" runat="server" class="form-control" 
                                placeholder=" "  required="" TextMode="Password"></asp:TextBox>
						</div>
                          <div class="form-group">
							<label class="col-form-label">Confirm Password</label>
							<%--<input type="password" class="form-control" placeholder=" " name="Password" required="">--%>
                            <asp:TextBox ID="txtconfirm" runat="server" class="form-control" 
                                placeholder=" "  required="" TextMode="Password"></asp:TextBox>
						</div>
                         <div class="form-group">
							<label class="col-form-label">Photo Upload</label> <label class="col-form-label" style="color: #FF0000" >(Photo Size Must be 100px X 200px)</label>
							<%--<input type="password" class="form-control" placeholder=" " name="Password" required="">--%>
                             <asp:FileUpload ID="FileUpload_shop" class="form-control" runat="server" />
						</div>
						<div class="right-w3l">
							<%--<input type="submit" class="form-control" value="Log in">--%>
                            <asp:Button ID="btnsubmit" runat="server" class="form-control" Text="Submit" 
                                onclick="btnsubmit_Click"  />
                                <br />
                            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#FF9933"></asp:Label>
						</div>
						
					</form>
				</div>
                </form>
                </div>
</asp:Content>

