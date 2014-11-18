<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeListReport.aspx.cs" Inherits="Assessments_EmployeeListReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="my" TagName="MessageUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <center><h1>Assessment: Report</h1></center>
    Select the position:&nbsp;&nbsp;
    <asp:DropDownList ID="PositionList" runat="server" DataSourceID="ODSPositions" DataTextField="Description" DataValueField="PositionID" AppendDataBoundItems="True" AutoPostBack="True">
        <asp:ListItem Value="-1">Position ??</asp:ListItem>
        <asp:ListItem Value="0">All</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;Press the report refresh button.
    
    


    <my:MessageUserControl runat="server" ID="MessageUserControl" />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
         OldValuesParameterFormatString="original_{0}" 
        SelectMethod="Employee_byPositionReport" TypeName="eToolsSystem.BLL.ToolsController">
        <SelectParameters>
            <asp:ControlParameter ControlID="PositionList"
                 PropertyName="SelectedValue" Name="positionid" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:ObjectDataSource>

    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%" >
        <LocalReport ReportPath="Assessments\EmployeeListReport.rdlc">
            <DataSources>
                <rsweb:ReportDataSource Name="DataSet1" DataSourceId="ObjectDataSource1"></rsweb:ReportDataSource>
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>

     <asp:ObjectDataSource ID="ODSPositions" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="Positions_List" 
        TypeName="eToolsSystem.BLL.ToolsController" >
    </asp:ObjectDataSource>

    </asp:Content>

