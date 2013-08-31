<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ITextSharpPDFGeneration.Default"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3 style="color: red"><%= DateTime.Now.ToString() %></h3>
        <h3 style="color:green"><%= Request.Browser.Browser %> browser detected.</h3>
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="EmployeeID" AllowPaging="True" AllowSorting="True" HeaderStyle-ForeColor="blue">
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" InsertVisible="False" SortExpression="EmployeeID"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:NorthwindConnectionString %>' SelectCommand="SELECT [EmployeeID], [Title], [FirstName], [LastName], [BirthDate], [Address], [City], [Country] FROM [Employees]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Export page to PDF" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
