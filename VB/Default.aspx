<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="EditableDetails._Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dxwgv:ASPxGridView ID="masterGrid" runat="server" AutoGenerateColumns="true" KeyFieldName="ID">
				<Templates>
					<DetailRow>
						<dxwgv:ASPxGridView ID="detailGrid" runat="server" AutoGenerateColumns="true"
							KeyFieldName="ID" OnBeforePerformDataSelect="detailGrid_BeforePerformDataSelect">
						</dxwgv:ASPxGridView>
					</DetailRow>
				</Templates>
				<SettingsDetail ShowDetailRow="True" />
			</dxwgv:ASPxGridView>
		</div>
	</form>
</body>
</html>
