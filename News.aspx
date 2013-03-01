<%@ Page Title="News" Language="C#" MasterPageFile="~/2ColMasterWtLeft.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="LeftColumn">
                    <h1>News</h1>
                </asp:Content>
<asp:Content ID="Content6" runat="server" 
    contentplaceholderid="LeftColumnWhite">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" 
    SelectCommand="SELECT * FROM [News] ORDER BY [N_Date]"></asp:SqlDataSource>


    <asp:DataList ID="News" runat="server" DataKeyField="N_ID" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
             <h2>
                <asp:Label ID="N_Title" runat="server" Text='<%# Eval("Title") %>' />
                <br />
            </h2>
            
            
            <p>
                <asp:Label ID="N_DateLabel" runat="server" Text='<%# Eval("N_Date") %>' />
                <br />
            </p>
           
            <p>
                <asp:Label ID="N_DescrLabel" runat="server" Text='<%# Eval("N_Descr") %>' />
                <br />
            </p>
            <hr />
<br />
        </ItemTemplate>
    </asp:DataList>

