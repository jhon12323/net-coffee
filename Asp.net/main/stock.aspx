<%@ Page Language="VB" MasterPageFile="~/MasterPage.master"  AutoEventWireup="false" CodeFile="stock.aspx.vb" Inherits="stock" %>

   <asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
         <div class="style3" style="margin-left:300px">
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="SID" DataSourceID="AccessDataSource1" ForeColor="#333333" 
        GridLines="None">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" 
                     ReadOnly="True" SortExpression="SID" />
                 <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                 <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                 <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
             </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
             <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                 DataFile="~/App_Data/Database1.mdb" SelectCommand="SELECT * FROM [stock]">
             </asp:AccessDataSource>
             <div class="style3">
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <br />
                 <br />
                 <asp:Label ID="Label2" runat="server" Text="Cname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="Label4" runat="server" Text="Qty"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </div>
             <p style="margin-left: 480px">
        <asp:Button ID="Button1" runat="server" Height="37px" Text="Insert" 
            Width="78px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
   
    </div>
  

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style3
        {}
    </style>

</asp:Content>

