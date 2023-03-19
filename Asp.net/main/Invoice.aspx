<%@ Page Language="VB" MasterPageFile="~/MasterPage.master"  AutoEventWireup="false" CodeFile="Invoice.aspx.vb" Inherits="Invoice" %>

 
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        
    <div style="margin-left:300px">
    
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="ID" DataSourceID="AccessDataSource2" ForeColor="#333333" 
        GridLines="None" style="text-align: right">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333"  />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" />
            <asp:BoundField DataField="cusname" HeaderText="cusname" 
                SortExpression="cusname" />
            <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" 
                SortExpression="Item_Name" />
            <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            <asp:BoundField DataField="prize" HeaderText="prize" SortExpression="prize" />
            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/Database1.mdb" SelectCommand="SELECT * FROM [invoice]">
        </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Database1.mdb" 
        DeleteCommand="DELETE FROM [invoice] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [invoice] ([ID], [oid], [cusname], [odate], [itema_name], [qty], [prize], [TOTAL]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [invoice]" 
        UpdateCommand="UPDATE [invoice] SET [oid] = ?, [cusname] = ?, [odate] = ?, [itema_name] = ?, [qty] = ?, [prize] = ?, [TOTAL] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="oid" Type="String" />
            <asp:Parameter Name="cusname" Type="String" />
            <asp:Parameter Name="odate" Type="DateTime" />
            <asp:Parameter Name="itema_name" Type="String" />
            <asp:Parameter Name="qty" Type="String" />
            <asp:Parameter Name="prize" Type="String" />
            <asp:Parameter Name="TOTAL" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="oid" Type="String" />
            <asp:Parameter Name="cusname" Type="String" />
            <asp:Parameter Name="odate" Type="DateTime" />
            <asp:Parameter Name="itema_name" Type="String" />
            <asp:Parameter Name="qty" Type="String" />
            <asp:Parameter Name="prize" Type="String" />
            <asp:Parameter Name="TOTAL" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    <br />
    <p class="style1" style="margin-left: 160px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </div>
        

</asp:Content>
