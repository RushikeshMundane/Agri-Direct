<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
							<h3 class="heading-tittle text-center font-italic">Product Details</h3>
							 <asp:Repeater ID="Repeater1" runat="server" 
        DataSourceID="SqlDataSource_product">
        <ItemTemplate>
        <div class="banner-bootom-w3-agileits py-5">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<%--<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>P</span>roduct
				<span>D</span>etail</h3>--%>
			<!-- //tittle heading -->
			<div class="row">
				<div class="col-lg-5 col-md-8 single-right-left ">
					<div class="grid images_3_of_2">

                    <div class="flexslider">
                    	<ul class="slides">
							<li data-thumb="photos/<%#Eval("photo") %>">
                                
								<div class="thumb-image">
									<img src="photos/<%#Eval("photo") %>"  data-imagezoom="true" class="img-responsive" alt="" height="300px" width="200px"> </div>
							</li>
							<%--<li data-thumb="photos/<%#Eval("photo") %>" >
								<div class="thumb-image">
									<img src="photos/<%#Eval("photo") %>"  data-imagezoom="true" class="img-responsive" alt=""> </div>
							</li>
							<li data-thumb="photos/<%#Eval("photo") %>" >
								<div class="thumb-image">
									<img src="photos/<%#Eval("photo") %>"  data-imagezoom="true" class="img-responsive" alt=""> </div>
							</li>--%>
						</ul>
                        <div class="clearfix"></div>
                        </div>
				
					</div>
				</div>
                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("shopid") %>' />
				<div class="col-lg-7 single-right-left simpleCart_shelfItem">
					<h3 class="mb-3"><%#Eval("pname") %></h3>
					<p class="mb-3">
						<span class="item_price"><%#Eval("prate") %></span>
						<del class="mx-2 font-weight-light"><%#Eval("mrp") %></del>
						<label>Free delivery</label>
					</p>
			<%--		<div class="single-infoagile">
						<ul>
							<li class="mb-3">
								Cash on Delivery Eligible.
							</li>
							<li class="mb-3">
								Shipping Speed to Delivery.
							</li>
							<li class="mb-3">
								EMIs from $655/month.
							</li>
							<li class="mb-3">
								Bank OfferExtra 5% off* with Axis Bank Buzz Credit CardT&C
							</li>
						</ul>
					</div>--%>
					<div class="product-single-w3l">
						<p class="my-3">
							<i class="far fa-hand-point-right mr-2"></i>
							<label><%#Eval("describe") %></label></p>
                            <hr />
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource_shop">
                        <ItemTemplate>
                        <p class="my-3">
							<i class="far fa-hand-point-right mr-2"></i>
							<label>Shop Name: <%#Eval("shop_name") %></label></p>
                            <p class="my-3">
							<i class="far fa-hand-point-right mr-2"></i>
							<label>Shop owner: <%#Eval("owner") %></label></p>
                            <p class="my-3">
							<i class="far fa-hand-point-right mr-2"></i>
							<label>contact: <%#Eval("contact") %></label></p>
                            <p class="my-3">
							<i class="far fa-hand-point-right mr-2"></i>
							<label>Address: <%#Eval("address") %></label></p>
                            <p class="my-3">
							<i class="far fa-hand-point-right mr-2"></i>
							<label>Shop Details: <%#Eval("description") %></label></p>
                        </ItemTemplate>
                        </asp:Repeater>
                        	<asp:SqlDataSource ID="SqlDataSource_shop" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FunctionalConnectionString %>" 
        SelectCommand='select * from Add_Shop where id=@shopid'>
        <SelectParameters>
            <asp:ControlParameter
                Name="shopid"
                Type="String"
                ControlID="HiddenField1"
                PropertyName="Value"
            />
        </SelectParameters>
       
    </asp:SqlDataSource>



						<%--<ul>
							<li class="mb-1">
								3 GB RAM | 16 GB ROM | Expandable Upto 256 GB
							</li>
							<li class="mb-1">
								5.5 inch Full HD Display
							</li>
							<li class="mb-1">
								13MP Rear Camera | 8MP Front Camera
							</li>
							<li class="mb-1">
								3300 mAh Battery
							</li>
							<li class="mb-1">
								Exynos 7870 Octa Core 1.6GHz Processor
							</li>
						</ul>--%>
						<%--<p class="my-sm-4 my-3">
							<i class="fas fa-retweet mr-3"></i>Net banking & Credit/ Debit/ ATM card
						</p>--%>
					</div>
					<div class="occasion-cart">
                   <%-- <a href="Add-cart.aspx?pid=<%#Eval("pid") %>&stk=<%#Eval("stock") %>" class="btn btn-primary">Add to cart</a>--%>
                 <%--  <a href="Addtocart.aspx?pid=<%#Eval("pid") %>&stk=<%#Eval("stock") %>" class="btn btn-primary">Add to cart</a>--%>
                 <a href="#" data-toggle="modal" data-target="#login" class="text-white"><span class="btn btn-primary">Add to cart</span></a>
						<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
								<fieldset>
									<%--<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" />
									<input type="hidden" name="business" value=" " />
									<input type="hidden" name="item_name" value="Samsung Galaxy J7 Prime" />
									<input type="hidden" name="amount" value="200.00" />
									<input type="hidden" name="discount_amount" value="1.00" />
									<input type="hidden" name="currency_code" value="USD" />
									<input type="hidden" name="return" value=" " />
									<input type="hidden" name="cancel_return" value=" " />
									<input type="submit" name="submit" value="Add to cart" class="button" />--%>
								</fieldset>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
        </ItemTemplate>
    </asp:Repeater>
	<asp:SqlDataSource ID="SqlDataSource_product" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FunctionalConnectionString %>" 
        SelectCommand="SELECT * FROM [Add_Product] WHERE ([pname] = @pname)">
        <SelectParameters>
            <asp:QueryStringParameter Name="pname" QueryStringField="pname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
						</div>

                         <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center">Log In</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form  method="post">
						<div class="form-group">
							<label class="col-form-label">Username</label>
							<input type="text" class="form-control" placeholder=" " name="Name" required="">
						</div>
						<div class="form-group">
							<label class="col-form-label">Password</label>
							<input type="password" class="form-control" placeholder=" " name="Password" required="">
						</div>
						<div class="right-w3l">
							<%--<input type="submit" class="form-control" value="Log in">--%>
                            <asp:Button ID="Button2" runat="server" class="form-control" Text="Log In" onclick="Button2_Click" />
						</div>
						<div class="sub-w3l">
							<div class="custom-control custom-checkbox mr-sm-2">
								<input type="checkbox" class="custom-control-input" id="customControlAutosizing">
								<label class="custom-control-label" for="customControlAutosizing">Remember me?</label>
							</div>
						</div>
						<p class="text-center dont-do mt-3">Don't have an account?
							<a href="#" data-toggle="modal" data-target="#exampleModal2">
								Register Now</a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
    
</asp:Content>

