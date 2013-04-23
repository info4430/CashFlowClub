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
    ConnectionString="<%$ ConnectionStrings:Eventsadminconnectionstring %>" 
    SelectCommand="SELECT * FROM [Events]" 
        DeleteCommand="DELETE FROM [Events] WHERE [E_ID] = @E_ID" 
        InsertCommand="INSERT INTO [Events] ([A_ID], [E_Date], [E_Time], [E_Name], [E_Descr]) VALUES (@A_ID, @E_Date, @E_Time, @E_Name, @E_Descr)" 
        UpdateCommand="UPDATE [Events] SET [A_ID] = @A_ID, [E_Date] = @E_Date, [E_Time] = @E_Time, [E_Name] = @E_Name, [E_Descr] = @E_Descr WHERE [E_ID] = @E_ID">
        <DeleteParameters>
            <asp:Parameter Name="E_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="A_ID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="E_Date" />
            <asp:Parameter Name="E_Time" Type="String" />
            <asp:Parameter Name="E_Name" Type="String" />
            <asp:Parameter Name="E_Descr" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="A_ID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="E_Date" />
            <asp:Parameter Name="E_Time" Type="String" />
            <asp:Parameter Name="E_Name" Type="String" />
            <asp:Parameter Name="E_Descr" Type="String" />
            <asp:Parameter Name="E_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:DataList ID="Events" runat="server" DataKeyField="E_ID" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>


             <asp:Label ID="A_IDLabel" runat="server" Text='<%# Eval("A_ID") %>' />
             <br />

             <asp:Label ID="E_DateLabel" runat="server" Text='<%# Eval("E_Date") %>' />
             <br />

             <asp:Label ID="E_TimeLabel" runat="server" Text='<%# Eval("E_Time") %>' />
             <br />

             <asp:Label ID="E_NameLabel" runat="server" Text='<%# Eval("E_Name") %>' />
             <br />

             <asp:Label ID="E_DescrLabel" runat="server" Text='<%# Eval("E_Descr") %>' />
             <br />
             <hr />
             <br />
        </ItemTemplate>
    </asp:DataList>


                       
                        
                        
                    </asp:Content>


