<%@ Page Title="Registration" Language="C#" MasterPageFile="~/2ColMasterWtLeft.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftColumnWhite" Runat="Server">
    <%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>--%>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
    oncreateduser="CreateUserWizard1_CreatedUser">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2" class="style1">
                                Sign Up for Your New Account</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" ontextchanged="UserName_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="Security question is required." 
                                    ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                    ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
    DeleteCommand="DELETE FROM [Profile] WHERE [Profile_ID] = @Profile_ID" 
    InsertCommand="INSERT INTO [Profile] ([FName], [LName], [Ph_Number], [Email_Address], [PR_ID], [M_ID], [A_ID], [Address_ID]) VALUES (@FName, @LName, @Ph_Number, @Email_Address, @PR_ID, @M_ID, @A_ID, @Address_ID)" 
    SelectCommand="SELECT * FROM [Profile]" 
    UpdateCommand="UPDATE [Profile] SET [FName] = @FName, [LName] = @LName, [Ph_Number] = @Ph_Number, [Email_Address] = @Email_Address, [PR_ID] = @PR_ID, [M_ID] = @M_ID, [A_ID] = @A_ID, [Address_ID] = @Address_ID WHERE [Profile_ID] = @Profile_ID">
    <DeleteParameters>
        <asp:Parameter Name="Profile_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FName" Type="String" />
        <asp:Parameter Name="LName" Type="String" />
        <asp:Parameter Name="Ph_Number" Type="String" />
        <asp:Parameter Name="Email_Address" Type="String" />
        <asp:Parameter Name="PR_ID" Type="Int32" />
        <asp:Parameter Name="M_ID" Type="Int32" />
        <asp:Parameter Name="A_ID" Type="Int32" />
        <asp:Parameter Name="Address_ID" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FName" Type="String" />
        <asp:Parameter Name="LName" Type="String" />
        <asp:Parameter Name="Ph_Number" Type="String" />
        <asp:Parameter Name="Email_Address" Type="String" />
        <asp:Parameter Name="PR_ID" Type="Int32" />
        <asp:Parameter Name="M_ID" Type="Int32" />
        <asp:Parameter Name="A_ID" Type="Int32" />
        <asp:Parameter Name="Address_ID" Type="Int32" />
        <asp:Parameter Name="Profile_ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightColumn" Runat="Server">
</asp:Content>

