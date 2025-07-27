<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaymentGatway.aspx.cs" Inherits="PaymentGatway" %>
<!DOCTYPE html>
<script runat="server">

   
</script>
<html>

<head runat="server"> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Project Payment Gateway</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
    <link rel="stylesheet" type="text/css" href="assets/css/demo.css">

    
<script>
    function myFunction() 
    {
        var card = document.getElementById("cardNumber").value;
            <%Session["card"] = "'+ card +'";%>              
            
            alert('<%=Session["card"]%>');   
        alert("" + card);
    }
</script>

</head>

<body>
<form name="form1" runat="server" action="#">
    <div class="container-fluid">
        <header>
            <div class="limiter">
                <h3>Project Payment Gateway</h3>
                <a href="Payment.aspx">Cancel Transaction</a>
            </div>
        </header>
        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirm Purchase</h1>
            </div>
            <div class="payment">
                
                    <div class="form-group owner">
                        <label for="owner">Owner</label>                        <%--<input type="text" class="form-control" id="owner">--%>
    <asp:TextBox ID="txtOwnerName" class="form-control" runat="server" autocomplete="off"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="RegularExpressionValidator" ControlToValidate="txtOwnerName" 
                            ForeColor="#FF3300" SetFocusOnError="True" 
                            ValidationExpression="[a-z A-Z ]*$" Display="Dynamic">Enter name in proper format</asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="txtOwnerName" 
                            Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True">Enter the name</asp:RequiredFieldValidator>
                        
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <asp:TextBox ID="txtCvv" class="form-control" runat="server" MaxLength="3" 
                            autocomplete="off" TextMode="Password"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="RegularExpressionValidator" ControlToValidate="txtCvv" 
                            ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="\d{3}" 
                            Display="Dynamic">Enter Cvv in proper format</asp:RegularExpressionValidator>
     
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Card Number</label>
                        <%--<input type="text" class="form-control" id="cardNumber" name="cardNumber" runat="server" enableviewstate="true">--%>
                        <asp:TextBox ID="txtCardNumber" class="form-control" runat="server" 
                            MaxLength="16" autocomplete="off"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="RegularExpressionValidator" ControlToValidate="txtCardNumber" 
                            ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="\d{16}" 
                            Display="Dynamic">Card No. must be proper format</asp:RegularExpressionValidator>

                            <asp:Label ID="lblcard" runat="server" ForeColor="#FF3300"></asp:Label>
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Expiration Date</label>
                        <%--  <select>
                            <option value="01">January</option>
                            <option value="02">February </option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">August</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                        <select>
                            
                            <option value="18"> 2018</option>
                            <option value="19"> 2021</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                        </select>--%>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Jan</asp:ListItem>
            <asp:ListItem>Feb</asp:ListItem>
            <asp:ListItem>Mar</asp:ListItem>
            <asp:ListItem>Apr</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>Jun</asp:ListItem>
            <asp:ListItem>Jul</asp:ListItem>
            <asp:ListItem>Aug</asp:ListItem>
            <asp:ListItem>Sep</asp:ListItem>
            <asp:ListItem>Oct</asp:ListItem>
            <asp:ListItem>Nov</asp:ListItem>
            <asp:ListItem>Dec</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server">
            
            
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
            <asp:ListItem>2023</asp:ListItem>
            <asp:ListItem>2024</asp:ListItem>
            <asp:ListItem>2025</asp:ListItem>
        </asp:DropDownList>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src="assets/images/visa.jpg" id="visa">
                        <img src="assets/images/mastercard.jpg" id="mastercard">
                        <img src="assets/images/amex.jpg" id="amex">
                    </div>
                    <div class="form-group" id="pay-now">
                        <%--<button type="submit" class="btn btn-default" id="confirm-purchase" onclick="myFunction()" >Confirm</button>--%>
                            <asp:Button class="btn btn-default" id="btnConfirm" runat="server" 
                            Text="Confirm" onclick="btnConfirm_Click" />

                            <br />
            <asp:Label ID="lblmsg" runat="server" ForeColor="#FF9933"></asp:Label>
                    </div>
                
            </div>
        </div>

        <div class="examples">
            <div class="table-responsive">
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="assets/js/script.js"></script>
</form>
</body>

</html>
