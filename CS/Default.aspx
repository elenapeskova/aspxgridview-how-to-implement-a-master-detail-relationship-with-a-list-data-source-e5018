<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EditableDetails._Default" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="masterGrid" runat="server" AutoGenerateColumns="true" KeyFieldName="ID">
                <Templates>
                    <DetailRow>
                        <dx:ASPxGridView ID="detailGrid" runat="server" AutoGenerateColumns="true"
                            KeyFieldName="ID" OnBeforePerformDataSelect="detailGrid_BeforePerformDataSelect">
                        </dx:ASPxGridView>
                    </DetailRow>
                </Templates>
                <SettingsDetail ShowDetailRow="True" />
            </dx:ASPxGridView>
        </div>
    </form>
</body>
</html>
