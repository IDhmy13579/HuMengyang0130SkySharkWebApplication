<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="HuMengyang0130SkySharkWebApplication.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        .auto-style1 {
            width: 96px;
        }
        .auto-style2 {
            width: 96px;
            height: 33px;
        }
        .auto-style3 {
            height: 33px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 11px;
        }
        .auto-style2 {
            width: 12px;
            height: 33px;
        }
        .auto-style3 {
            width: 14px;
            height: 33px;
        }
        .auto-style4 {
            width: 204px;
        }
        .auto-style5 {
            width: 1552px;
        }
        .auto-style6 {
            width: 1552px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Label ID="txtUser" runat="server" Text="Changing Password For:"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                     </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please specify a valid password."></asp:RequiredFieldValidator>
                     </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                     </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtConfPassword" runat="server" TextMode="Password"></asp:TextBox>
                     </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConfPassword" ErrorMessage="Please specify a valid password."></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfPassword" ErrorMessage="The password specified by you do not match.Please Try Again."></asp:CompareValidator>
                     </td>
                     
                </tr>
                 <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                     </td>
                    <td class="auto-style6"></td>
                </tr>
                 <tr>
                    <td class="auto-style1"></td>
                    <td></td>
                    <td class="auto-style5"></td>
                </tr>
                 <tr>
                    <td class="auto-style1"></td>
                    <td></td>
                    <td class="auto-style5"></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
//week 6