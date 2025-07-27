<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WeatherInfo1.aspx.cs" Inherits="WeatherInfo1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weather Information</title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="weather">
            <div class="weatherCard">
                <!-- Header with City name -->
                <div class="city-name">
                    <h1>Current Weather Report</h1>
                    <span>
                        <asp:Label ID="lblcity" runat="server"></asp:Label>
                    </span>
                    <!-- Label for City and Country -->
                    <span>
                        <asp:Label ID="lblCity_Country" runat="server"></asp:Label>
                    </span>
                </div>

                <!-- Flag Image for the Country -->
                <div class="country-flag">
                    <asp:Image ID="imgCountryFlag" runat="server" />
                </div>

                <!-- TextBox for entering city name -->
                <div class="city-input">
                    <asp:TextBox ID="txtCity" runat="server" placeholder="Enter city name" />
                    <asp:Button ID="btnGetWeather" runat="server" Text="Get Weather" OnClick="GetWeatherInfo" />
                </div>

                <!-- Error Message Label -->
                <div>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                </div>

                <!-- Weather Icon and Description -->
                <div class="weather-info">
                    <div class="icon">
                        <asp:Image ID="imgWeatherIcon" runat="server" />
                        <div class="description">
                        <asp:Label ID="lblDescription" runat="server" />
                    </div>

                    </div>
                    <div class="weather-info">
                    <div class="humidity">
                        <h4>Humidity:</h4>
                        <asp:Label ID="lblHumidity" runat="server" />
                    </div>
                </div>
                    <div class="weather-info">
                    <div class="temp">
                        <h4>Temperature:</h4>
                        <p>Min: <asp:Label ID="lblTempMin" runat="server" /></p>
                        <p>Max: <asp:Label ID="lblTempMax" runat="server" /></p>
                        <p>Day: <asp:Label ID="lblTempDay" runat="server" /></p>
                        <p>Night: <asp:Label ID="lblTempNight" runat="server" /></p>
                    </div>
                </div>
                </div>

                <!-- Humidity Information -->
                

                <!-- Temperature Information -->
                
            </div>
        </div>
    </form>
</body>
</html>
