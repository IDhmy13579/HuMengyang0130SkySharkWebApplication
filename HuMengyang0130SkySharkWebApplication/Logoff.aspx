<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logoff.aspx.cs" Inherits="HuMengyang0130SkySharkWebApplication.Logoff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        #TextArea1 {
            height: 104px;
            width: 494px;
        }
        #form1 {
            margin-right: 259px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div style="width: 501px; height: 149px">
    <textarea id="TextArea1">
        Thank you for using SkyShark Airline.
        Looing forward serving you again.
    </textarea><br />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Click here to logon</asp:HyperLink>
    </div>
    </form>
</asp:Content>
