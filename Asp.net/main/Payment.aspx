<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Payment.aspx.vb" Inherits="Payment" %>

 
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    
    <div style="margin-left:300px">
    
   
    <ul>
        <li>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="ID" DataSourceID="AccessDataSource1" ForeColor="#333333" 
                GridLines="None" style="text-align: center">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="pdate" HeaderText="pdate" SortExpression="pdate" />
                    <asp:BoundField DataField="invoice_id" HeaderText="invoice_id" 
                        SortExpression="invoice_id" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/Database1.mdb" 
                DeleteCommand="DELETE FROM [payment] WHERE [ID] = ?" 
                InsertCommand="INSERT INTO [payment] ([ID], [pdate], [invoice_id], [price], [total]) VALUES (?, ?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [payment]" 
                UpdateCommand="UPDATE [payment] SET [pdate] = ?, [invoice_id] = ?, [price] = ?, [total] = ? WHERE [ID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pdate" Type="DateTime" />
                    <asp:Parameter Name="invoice_id" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="total" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="pdate" Type="DateTime" />
                    <asp:Parameter Name="invoice_id" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="total" Type="String" />
                </InsertParameters>
            </asp:AccessDataSource>
        </li>
    </ul>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="style1" style="margin-left: 160px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
     </div>        
        

</asp:Content>
