<%@ Page Language="VB"  AutoEventWireup="false" CodeFile="order.aspx.vb" Inherits="oder2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
	<title>Wake up cafe</title>
<html xmlns="http://www.w3.org/1999/xhtml">
    <title>Wake up cafe</title>
    
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Coffee Time</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta charset="UTF-8" />
	<meta name="keywords" content="Cappuccino Coffee"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css"/>
	<!-- Bootstrap-Core-CSS -->
	<!-- Flexslider-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/fontawesome-all.css"/>
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Arizonia&amp;subset=latin-ext" rel="stylesheet"/>
	<link href="//fonts.googleapis.com/css?family=Timmana&amp;subset=telugu" rel="stylesheet"/>
	<link href="//fonts.googleapis.com/css?family=Bellefair&amp;subset=hebrew,latin-ext" rel="stylesheet"/>
	<!-- //Web-Fonts -->

</head>
    <body>
	<!-- header -->
	<div class="header">
		<!-- navigation -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<!-- logo -->
			<h1>
				<a class="navbar-brand">Wake up
					<span>Cafe</span>
				</a>
			</h1>
			<!-- //logo -->
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
			    aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item mx-lg-4">
						<a class="nav-link" href="index.aspx">Home
							<span class="sr-only">(current)</span>
						</a>
						<li class="nav-item mx-lg-2">
						<a class="nav-link" href="login.aspx">Log in</a>
	                    
					</li>
					</li>
					<li class="nav-item mx-lg-2">
						<a class="nav-link" href="about.aspx">About Us</a>
					</li>
					<li class="nav-item mx-lg-2 active">
						<a class="nav-link" href="menu.aspx">Menu</a>
					</li>
					<li class="nav-item mx-lg-2">
						<a class="nav-link" href="gallery.aspx">Gallery</a>
					</li>
					<li class="nav-item mx-lg-2">
						<a class="nav-link" href="contact.aspx">Contact Us</a>
					</li>
					
				</ul>
			</div>
		</nav>
		<!-- //navigation -->
	</div>
	<!-- //header -->
	<!-- inner banner -->
	<div class="banner-2" >

	</div>
	<!-- breadcrumb -->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="index.aspx">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">Order</li>
		</ol>
	</nav>
	<!-- breadcrumb -->
	<!-- //inner banner -->

    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<p>
&nbsp;</p>
<body >
    <form id="form1" runat="server" style="margin-left:500px">
        &nbsp;&nbsp;<asp:GridView  ID="GridView1" runat="server" AllowPaging="True" style="align:center; margin-top: 0px;"
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="oid" DataSourceID="AccessDataSource1" Font-Underline="False" 
        ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="oid" HeaderText="oid" InsertVisible="False" 
                ReadOnly="True" SortExpression="oid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            <asp:BoundField DataField="odate" HeaderText="odate" SortExpression="odate" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    &nbsp;<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Database1.mdb" 
        DeleteCommand="DELETE FROM [order] WHERE [oid] = ?" 
        InsertCommand="INSERT INTO [order] ([oid], [name], [qty], [odate]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [order]" 
        UpdateCommand="UPDATE [order] SET [name] = ?, [qty] = ?, [odate] = ? WHERE [oid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="oid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="qty" Type="String" />
            <asp:Parameter Name="odate" Type="DateTime" />
            <asp:Parameter Name="oid" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="oid" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="qty" Type="String" />
            <asp:Parameter Name="odate" Type="DateTime" />
        </InsertParameters>
    </asp:AccessDataSource>
    <p class="style1" style="margin-left: 160px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </form>
</body>
</html>
