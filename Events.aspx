<%@ Page Title="Events" Language="C#" MasterPageFile="~/2ColMasterWtLeft.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftColumnWhite" Runat="Server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightColumn" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content5" runat="server" contentplaceholderid="LeftColumn">
                    <h1>Events</h1>
                </asp:Content>
<asp:Content ID="Content6" runat="server" 
    contentplaceholderid="LeftColumnWhite">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" 
    SelectCommand="SELECT * FROM [Events] ORDER BY [E_Date]"></asp:SqlDataSource>


    <asp:DataList ID="Events" runat="server" DataKeyField="E_ID" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
             <h2>
                <asp:Label ID="E_IDLabel" runat="server" Text='<%# Eval("E_Name") %>' />
                <br />
            </h2>
            
            
            <p>
                <asp:Label ID="E_DateLabel" runat="server" 
                    Text='<%# Eval("E_Date", "{0:d}") %>' />
                <br />
            </p>
           
            <p>
                <asp:Label ID="N_DescrLabel" runat="server" Text='<%# Eval("E_Descr") %>' />
                <br />
            </p>
            <hr />
<br />
        </ItemTemplate>
    </asp:DataList>


                       
                        
                        
                    </asp:Content>


