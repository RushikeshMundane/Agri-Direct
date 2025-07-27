<%@ Page Title="" Language="C#" MasterPageFile="~/Users/MasterPage.master" AutoEventWireup="true" CodeFile="Add-cart.aspx.cs" Inherits="Add_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
      <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
         
              <div class="privacy py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<!-- //tittle heading -->
			<div class="checkout-right">
				<h4 class="mb-sm-4 mb-3">Your shopping cart contains:
					<%--<span></span>--%>
				</h4>
				<div class="table-responsive">
					<table class="timetable_sub">
						<thead>
							<tr>
								<th>Sr. No.</th>
								<th>Product</th>
								<th>Quality</th>
								<th>Product Name</th>

								<th>Price</th>
								<!--<th>Action</th>-->
							</tr>
						</thead>
						<tbody>
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource_addcart">
              <ItemTemplate>
							<tr class="rem1">
								<td class="invert">
                                
                                    <%#(((RepeaterItem)Container).ItemIndex+1).ToString()%>
                                </td>
								<td class="invert-image">
									<a href="#">
                                       
										<img src="../photos/<%#Eval("photo") %>" alt=" " class="img-responsive" height="100px" width="30px">
									</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td class="invert">
									<div class="quantity">
										<div class="quantity-select">
                                            <span>1</span>
											<%--<div class="entry value-minus">&nbsp;</div>
											<div class="entry value">
												<span>1</span>
											</div>
											<div class="entry value-plus active">&nbsp;</div>--%>
										</div>
									</div>
								</td>
								<td class="invert"><%#Eval("pname") %></td>
								<td class="invert"><%#Eval("prate") %></td>
								 <!--
                                <td class="invert">
                               
									<div class="rem">
										                                            
                                            <asp:Button ID="btnremove" runat="server" Text="Delete" OnClick="btnremove_Click" /> </div>
									</div>
                                   
								</td>
                                 -->
							</tr>
                             </ItemTemplate>
          </asp:Repeater>
							
						</tbody>
					</table>
				</div>
			</div>
			<%--<div class="checkout-left">
				<div class="address_form_agile mt-sm-5 mt-4">
					<h4 class="mb-sm-4 mb-3">Add a new Details</h4>
					<form action="payment.html" method="post" class="creditly-card-form agileinfo_form">
						<div class="creditly-wrapper wthree, w3_agileits_wrapper">
							<div class="information-wrapper">
								<div class="first-row">
									<div class="controls form-group">
										<input class="billing-address-name form-control" type="text" name="name" placeholder="Full Name" required="">
									</div>
									<div class="w3_agileits_card_number_grids">
										<div class="w3_agileits_card_number_grid_left form-group">
											<div class="controls">
												<input type="text" class="form-control" placeholder="Mobile Number" name="number" required="">
											</div>
										</div>
										<div class="w3_agileits_card_number_grid_right form-group">
											<div class="controls">
												<input type="text" class="form-control" placeholder="Landmark" name="landmark" required="">
											</div>
										</div>
									</div>
									<div class="controls form-group">
										<input type="text" class="form-control" placeholder="Town/City" name="city" required="">
									</div>
									<div class="controls form-group">
										<select class="option-w3ls">
											<option>Select Address type</option>
											<option>Office</option>
											<option>Home</option>
											<option>Commercial</option>

										</select>
									</div>
								</div>
								<button class="submit check_out btn">Delivery to this Address</button>
							</div>
						</div>
					</form>
					<div class="checkout-right-basket">
						<a href="payment.html">Make a Payment
							<span class="far fa-hand-point-right"></span>
						</a>
					</div>
				</div>
			</div>--%>
		</div>
	</div>
             
       <%--   <asp:SqlDataSource ID="SqlDataSource_addcart" runat="server" 
              ConnectionString="<%$ ConnectionStrings:FunctionalConnectionString %>" 
              SelectCommand="SELECT * FROM [Add_Product] WHERE ([pid] = @pid)">
              <SelectParameters>
                  <asp:QueryStringParameter Name="pid" QueryStringField="pid" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>--%>
             <asp:SqlDataSource ID="SqlDataSource_addcart" runat="server" 
              ConnectionString="<%$ ConnectionStrings:FunctionalConnectionString %>" 
              SelectCommand="SELECT * FROM [Temp] WHERE ([user_id] = @user_id)">
                 <SelectParameters>
                     <asp:SessionParameter Name="user_id" SessionField="user_id" Type="Int32" />
                 </SelectParameters>
              
          </asp:SqlDataSource>
          
          <asp:Button ID="btnadd" runat="server" Text="CheckOut" class="btn-primary"  onclick="btnadd_Click" />
          <br />
          <asp:Label ID="lblmsg" runat="server" Text="" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label>
          
    </div>
    </form>
</asp:Content>

