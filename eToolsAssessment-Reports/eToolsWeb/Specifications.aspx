<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Specifications.aspx.cs" Inherits="Specifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <%--div#topicid.bobclass--%>

<%--<div id="topic" class="bob">--%>
   <%-- h1+p+(ul>li*3>lorem)+p*3+figure>figcaption--%>
    <header class="page-header">
        <img src="Images/Logo.PNG" style="float:right; width:300px; height: 135px" />
        <h1>Reporting</h1>
        <h2>
            <span class="fa-stack fa-lg">
                <i class="fa fa-github fa-stack-1x text-muted"></i>
                <i class="fa fa-ban fa-stack-2x text-danger"></i>
            </span>
            Do <u>NOT</u> Store in a Repository
        </h2>
    </header>
    <table>

    <tr>
        <td>
            Course Weight:
        </td>
        <td>
            10% &nbsp;&nbsp;<a href="MarkingRubik.aspx">Evalutation</a>
        </td>
    </tr>
     <tr>
        <td>
            Assessment Date:
        </td>
        <td>
            Nov 13, 2014
        </td>
    </tr>
     <tr>
        <td>
            Student Name:
        </td>
        <td>
            
        </td>
    </tr>
    </table>
    <br /><br />
    <p>
        In this assessment you are required to implement simple Linq to Entity queries to obtain employees by position. In this assesment, you will be evaluated on the following:
     </p>   <ul>
        <li>create controller method containing Linq to Entity call</li>
        <li>Implement a POCO class definition</li>
        <li>Implement a web form which will display a Report Viewer</li>
        <li>Use the ObjectDatasource control for data-binding controls to controller methods</li>
    </ul>  
  
    <p>
You have been supplied a starting solution for this assessment called eToolsAssessment. You are to place this folder onto your 
        machine’s desktop. You have also been supplied a database as a .bak (backup file) 
        called eToolsMaster.bak. The starting solution has certain portions of the assessment pre-coded. This code works and should not be altered.</p>
    <p>
You are to complete each of the activities to create a successful solution to this assessment. You will need to use specified names 
        in portions of the activities to integrate with the existing code. You many need to create local variables to use in your answer (these variables can be 
        called whatever you wish). Use the following activity instructions to complete this assessment.
    </p>
    <h4>Activity 1 Setup</h4>
    <p>Restore the supplied SQL database. The database name is <strong>eTools</strong>. The database contains data for testing your solution.</p>
    <h4>Activity 2 Create Linq queries</h4>
    <p>You will need to complete a query and implement a DataObjectMethod. Your query will create a <strong>flat</strong> data collection to be used in a ReportViewer. 
        The query is to be placed in a DataOjectMethod called Employee_byPositionReport(int positionid) in the supplied controller class. 
        The method will receive one parameter. If this parameter value is 0 (zero) all employees and their positions should be returned. 
        If the parameter has any other value, only the employees of that particular position are to be returned.</p>
    <p>
        The query will obtain the position description, the employee name (last name, firstname), hired date and release date 
        (which is nullable). You will need to complete the POCOS.ReportEmployee class to represent the collection of flat data to be viewed on the EmployeeListReport.aspx form. 
         </p>
   
    <h4>Activity 3 Report Designer:</h4>
    <p>You will use the Report wizard to design the report (as seen in Activity 4). You will row group by Position. The row detail values will be the employee
        full name, hired date and release date. You will format the report as seen in the supplied report image. You will add a report header and footer. Add the 
        built-in values for Execution time, User ID, report title and page count.
    </p>

    <h4>Activity 4 Report: Employee by Position</h4>
    <p>
        You will need to add an ObjectDataSource for access to the DataObjectMethod within your controller (Activity 2). Your ODS will obtain the parameter value from
        the PostionList control.
        You are to use a ReportViewer to display the data. You will need to wire the viewer to the ODS. The refresh button is part of the report viewer. No code is necessary 
        for the button.</p>
    <p>The web form has error handling partially implemented. The necessary code for error handling has been placed in the code-behind. 
        The Message user control has been placed on the starter web form. 
    </p>
    <center>
            <figure>
        <img src="Images/ReportFinal.png" width="500" height="400"/>
        <figcaption>Display of the report.</figcaption>
    </figure>
     </center>
    
      
       
  


    <%--</div>--%>
</asp:Content>