<%@ Page Title="" Language="C#" MasterPageFile="~/1ColMaster.master" AutoEventWireup="true" CodeFile="EventsAdmin.aspx.cs" Inherits="EventsAdmin2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FullColumn" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FullColumnContent" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" ScrollBars="Horizontal">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:EventsConnectionString %>"
    DeleteCommand="DELETE FROM [Events] WHERE [E_ID] = @E_ID" 
    InsertCommand="INSERT INTO [Events] ([E_Date], [E_Time], [E_Name], [E_Descr]) VALUES (@E_Date, @E_Time, @E_Name, @E_Descr)"
    ProviderName="<%$ ConnectionStrings:EventsConnectionString.ProviderName %>" 
    SelectCommand="SELECT * FROM [Events] ORDER BY [E_Date]"
    UpdateCommand="UPDATE [Events] SET [E_Date] = @E_Date, [E_Time] = @E_Time, [E_Name] = @E_Name, [E_Descr] = @E_Descr WHERE [E_ID] = @E_ID">
    <DeleteParameters>
                <asp:Parameter Name="E_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="E_Date" Type="DateTime" />
                <asp:Parameter Name="E_Time" Type="Char" />
                <asp:Parameter Name="E_Name" Type="Char" />
                <asp:Parameter Name="E_Descr" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="E_Date" Type="DateTime" />
                <asp:Parameter Name="E_Time" Type="Char" />
                <asp:Parameter Name="E_Name" Type="Char" />
                <asp:Parameter Name="E_Descr" Type="String" />
                <asp:Parameter Name="E_ID" Type="Int32" />
            </UpdateParameters>
        
    </asp:SqlDataSource>

        
        <asp:GridView ID="EventsGridView" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="E_ID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                    <ControlStyle BorderColor="#467019" />
                    <FooterStyle BorderColor="#467019" />
                    <HeaderStyle BackColor="White" BorderColor="#467019" />
                    </asp:CommandField>
                    <asp:BoundField DataField="E_ID" HeaderText="Event ID" ReadOnly="True" 
                        SortExpression="E_ID" InsertVisible="False" >
                    <ControlStyle BorderColor="#467019" BorderStyle="Solid" />
                    <HeaderStyle BackColor="White" />
                    <ItemStyle ForeColor="#467019" />
                    </asp:BoundField>
                    <asp:BoundField DataField="E_Date" HeaderText="Event Date" 
                        SortExpression="E_Date" >
                    <HeaderStyle BackColor="White" />
                    <ItemStyle ForeColor="#467019" />
                    </asp:BoundField>
                    <asp:BoundField DataField="E_Time" HeaderText="Event Time" 
                        SortExpression="E_Time" >
                    <HeaderStyle BackColor="White" />
                    <ItemStyle ForeColor="#467019" />
                    </asp:BoundField>
                    <asp:BoundField DataField="E_Name" HeaderText="Event Name" 
                        SortExpression="E_Time" >
                    <HeaderStyle BackColor="White" />
                    <ItemStyle ForeColor="#467019" />
                    </asp:BoundField>
                    <asp:BoundField DataField="E_Descr" HeaderText="Event Description" 
                        SortExpression="E_Descr" >
                    <HeaderStyle BackColor="White" />
                    <ItemStyle ForeColor="#467019" />
                    </asp:BoundField>
            </Columns>
        </asp:GridView>

        </asp:Panel>

         <asp:ValidationSummary ID="VEventVS" runat="server" ValidationGroup="VEvent" 
        HeaderText="Please fix the following errors:" ForeColor="Red" />
    <br />


    <asp:Label ID="ErrorLBL" class="smpad" runat="server" Text="" ForeColor="Red"></asp:Label>

    <br />


         <h3 class="center2">Add a new event</h3>
        <ol>
            <li class="productleft">
                <asp:Label ID="EventNameLBL" runat="server" 
                Text="Event Name:" ></asp:Label>
            </li> 

            <li class="productright">     
                <asp:TextBox ID="EventNameTXT" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Must have an Event name" ControlToValidate="EventNameTXT" 
                ValidationGroup="VEvent" Display="Dynamic">*</asp:RequiredFieldValidator>       
            </li>
             
            <li class="productleft">
                <asp:Label ID="EventDateLBL" runat="server" Text="Event Date:"></asp:Label>
            </li>

            <li class="productright"> 
                <asp:TextBox ID="EventDateTXT" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="You must include a date for the event" ControlToValidate="EventDateTXT" 
                ValidationGroup="VEvent" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Event Date must follow format DD/MM/YYYY" ControlToValidate="EventDateTXT" 
                Type="Date" ValidationGroup="VEvent" Operator="DataTypeCheck" Display="Dynamic">*</asp:CompareValidator>
            </li>
            
            <li class="productleft">
                <asp:Label ID="EventTimeLBL" runat="server" Text="Event Time:"></asp:Label>
            </li>

            <li class="productright"> 
                <asp:TextBox ID="EventTimeTXT" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="You must include a time for the event" ControlToValidate="EventTimeTXT" 
                ValidationGroup="VEvent" Display="Dynamic">*</asp:RequiredFieldValidator>                
            </li>    
                 
            <li class="productleft">
                <asp:Label ID="EventDescrLBL" runat="server" Text="Event Description:"></asp:Label>
            </li>

            <li class="productright">
                <asp:TextBox ID="EventDescrTXT" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Must provide a description" ValidationGroup="VEvent" 
                ControlToValidate="EventDescrTXT" Display="Dynamic">*</asp:RequiredFieldValidator>
            </li>

            
            <li class="productleft">
                <asp:Button ID="AddBTN" runat="server" Text="Add Product" ValidationGroup="VEvent" 
                    onclick="AddBTN_Click" />
            </li>

             
        </ol>

</asp:Content>

