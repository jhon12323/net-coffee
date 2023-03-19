<%@ Page Language="VB" AutoEventWireup="false" CodeFile="coffelist.aspx.vb" Inherits="coffelist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <p>
        <asp:Label ID="Label1" runat="server" Text="CoffeeId"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="CoffeeName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Quty"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="SID" DataSourceID="AccessDataSource2" ForeColor="#333333" 
            GridLines="None">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="SID" HeaderText="stock id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="SID" />
                <asp:BoundField DataField="Cname" HeaderText="Coffee name" 
                    SortExpression="Cname" />
                <asp:BoundField DataField="Price" HeaderText="Coffee Price" 
                    SortExpression="Price" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" DataFile="~/App_Data/Database1.mdb" 
            DeleteCommand="DELETE FROM [stock] WHERE [SID] = ? AND (([Cname] = ?) OR ([Cname] IS NULL AND ? IS NULL)) AND (([Price] = ?) OR ([Price] IS NULL AND ? IS NULL)) AND (([Qty] = ?) OR ([Qty] IS NULL AND ? IS NULL)) AND (([Img] = ?) OR ([Img] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [stock] ([SID], [Cname], [Price], [Qty], [Img]) VALUES (?, ?, ?, ?, ?)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [stock]" 
            UpdateCommand="UPDATE [stock] SET [Cname] = ?, [Price] = ?, [Qty] = ?, [Img] = ? WHERE [SID] = ? AND (([Cname] = ?) OR ([Cname] IS NULL AND ? IS NULL)) AND (([Price] = ?) OR ([Price] IS NULL AND ? IS NULL)) AND (([Qty] = ?) OR ([Qty] IS NULL AND ? IS NULL)) AND (([Img] = ?) OR ([Img] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SID" Type="Int32" />
                <asp:Parameter Name="original_Cname" Type="String" />
                <asp:Parameter Name="original_Price" Type="Int32" />
                <asp:Parameter Name="original_Qty" Type="Int32" />
                <asp:Parameter Name="original_Img" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="Img" Type="String" />
                <asp:Parameter Name="original_SID" Type="Int32" />
                <asp:Parameter Name="original_Cname" Type="String" />
                <asp:Parameter Name="original_Price" Type="Int32" />
                <asp:Parameter Name="original_Qty" Type="Int32" />
                <asp:Parameter Name="original_Img" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="SID" Type="Int32" />
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="Img" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    </p>
    <p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Database1.mdb" SelectCommand="SELECT * FROM [stock]">
        </asp:AccessDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="31px" Text="Inert" 
            Width="92px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="31px" Text="Update" 
            Width="92px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="31px" Text="Delete" 
            Width="92px" />
    </p>
    <p>
        <asp:Button ID="Button4" runat="server" Height="31px" Text="Button" 
            Width="92px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Height="31px" Text="Button" 
            Width="92px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Height="31px" Text="Button" 
            Width="92px" />
    </p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
