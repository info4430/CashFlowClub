<%@ Page Title="Home" Language="C#" MasterPageFile="~/2ColMasterGrLeft.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">
    <h1>Welcome</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftColumnGreen" Runat="Server">
    <h2>Introduction</h2>
    <p>
        The Cashflow Club is a Utah Valley University (UVU) club that teaches students sound financial principles, responsibilities, and practices. Local investors, business owners, and entrepreneurs participate in club events and activities, even helping to fund its existence.
    </p> 
    <p>
        One of the regular events the Cashflow Club hosts is Cashflow 101. Cashflow 101 is a board game born from the book Rich Dad Poor Dad. The manufacturer credits the game with helping individuals get out of the “rat race” and onto the “fast track”. Its primary goal is to shift habits and thought processes so a participant’s money is working for them instead of them working for their money.

    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightColumn" Runat="Server">
    <asp:Login ID="Login1" runat="server" CssClass="center">
    </asp:Login>
</asp:Content>

