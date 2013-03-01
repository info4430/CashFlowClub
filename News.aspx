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
                <asp:Label ID="N_IDLabel" runat="server" Text='<%# Eval("N_ID") %>' />
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


                       
                        
                        <p>The Cash flow club is getting a new webpage.</p>

                        <hr />

                        <h2>Subheading</h2>

                        <p>Fusce eget justo at odio posuere dignissim. Sed porta, turpis sit amet viverra rhoncus, mauris 
                        urna interdum erat, nec semper dui diam ut libero. Donec adipiscing placerat metus. Integer eu eros 
                        vel risus ornare consequat. </p>

                        <hr />

                        <h2>Subheading 2</h2>

                        <p>Curabitur sem erat, tempor non, ullamcorper quis, dapibus a, ante. Aliquam tempus tellus eget 
                        est. In hendrerit turpis sed ligula. Integer vulputate nibh congue magna. Duis commodo leo sit 
                        amet quam. Nunc commodo sodales nunc. Donec est nunc, porttitor et, accumsan nec, pretium quis, 
                        mauris. Duis sapien. Nulla felis lorem, accumsan vitae, ultricies et, hendrerit vel, massa. In 
                        nonummy tortor et metus. Aenean lacinia orci non risus. Aenean vulputate vel lectus.</p>
                    </asp:Content>


