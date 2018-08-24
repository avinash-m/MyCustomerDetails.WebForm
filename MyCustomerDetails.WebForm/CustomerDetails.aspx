<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="MyCustomerDetails.WebForm.CustomerDetails" %>

<asp:Content ID="Customer" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="customer">
        <ContentTemplate>
            <link href="Content/MyCSS.css" rel="stylesheet" />
            <script src="Scripts/MyJavaScript.js"></script>
            <div>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="Insert" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Update" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Delete" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Read" Value="3"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <asp:Panel ID="pnlCreate" runat="server">
                <asp:Table ID="Table1" runat="server">
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="lblID" runat="server" Text="ID: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="txtID" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="txtName" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="lblZip" runat="server" Text="Zip Code: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="txtZip" runat="server" CssClass="txtZip"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%" ColumnSpan="2" HorizontalAlign="Center"> <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%" ColumnSpan="2"> <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>
            <asp:Panel ID="pnlUpdate" runat="server" Visible="false">
                <asp:Table ID="Table3" runat="server">
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="Label1" runat="server" Text="ID: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="Label3" runat="server" Text="Contact Number: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="Label4" runat="server" Text="City: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="Label5" runat="server" Text="Zip Code: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="TextBox5" runat="server" CssClass="txtZip"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%" ColumnSpan="2" HorizontalAlign="Center"> <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btnUpdate_Click" /></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="30%" ColumnSpan="2"> <asp:Label ID="Label6" runat="server" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>
            <asp:Panel ID="pnlDelete" runat="server" Visible="false">
                <asp:Table ID="Table2" runat="server">
                    <asp:TableRow>
                        <asp:TableCell Width="30%"> <asp:Label ID="lblDeleteID" runat="server" Text="ID: "></asp:Label></asp:TableCell>
                        <asp:TableCell> <asp:TextBox ID="txtDeleteID" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell> <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"/></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell> <asp:Label ID="lblDeleteOutput" runat="server" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>
            <asp:Panel ID="pnlRead" runat="server" Visible="false">
                <asp:GridView ID="gvCustomers" runat="server"></asp:GridView>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
