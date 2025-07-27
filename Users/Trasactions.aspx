<%@ Page Title="" Language="C#" MasterPageFile="~/Users/MasterPage.master" AutoEventWireup="true" CodeFile="Trasactions.aspx.cs" Inherits="Users_Trasactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
      <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
							<h3 class="heading-tittle text-center font-italic">Transaction Details</h3>
                            <br />
                            <br />
        
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" 
                                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                      ReadOnly="True" SortExpression="id" />
                  <asp:BoundField DataField="user_id" HeaderText="user_id" 
                      SortExpression="user_id" Visible="False" />
                  <asp:BoundField DataField="r_name" HeaderText="Name" 
                      SortExpression="r_name" />
                  <asp:BoundField DataField="address" HeaderText="address" 
                      SortExpression="address" />
                  <asp:BoundField DataField="contact" HeaderText="contact" 
                      SortExpression="contact" />
                  <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                  <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                  <asp:BoundField DataField="tdate" HeaderText="Delivery Date" 
                      SortExpression="tdate" />
              </Columns>
              <EditRowStyle BackColor="#7C6F57" />
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" />
              <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F8FAFA" />
              <SortedAscendingHeaderStyle BackColor="#246B61" />
              <SortedDescendingCellStyle BackColor="#D4DFE1" />
              <SortedDescendingHeaderStyle BackColor="#15524A" />
          </asp:GridView>



                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:FunctionalConnectionString %>" 
                                SelectCommand="SELECT * FROM [book_order] WHERE ([user_id] = @user_id)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="user_id" SessionField="user_id" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>



                            </div>
                            </form>
</asp:Content>

