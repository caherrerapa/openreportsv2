<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<s:include value="Banner.jsp" />

<a class="back-link img-report-small" href="reportAdmin.action"><s:text name="link.back.admin"/></a>

<br/>

<s:actionerror/>

<div align="center">
  
  <div class="important img-stats" id="instructions" style="width: 70%;">
		   <s:text name="analyzeReportLogs.title"/>
  </div>	
	
  <form action="analyzeReportLogs.action" class="dialog-form" style="width: 75%;">
	
  <table class="dialog" >   
  	<tr>  	    
  		<td colspan="3">
  		<div id="important">
  		&nbsp;&nbsp;<s:text name="label.query"/>     	
      	<select name="queryName">
      		<option value="topReports" <s:if test="'topReports'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topReports"/></option>
      		<option value="topReportsByUser" <s:if test="'topReportsByUser'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topReportsByUser"/></option>
      		<option value="topReports30Days" <s:if test="'topReports30Days'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topReports30Days"/></option>      		
      		<option value="topReports60Days" <s:if test="'topReports60Days'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topReports60Days"/></option>      		
      		<option value="topReports90Days" <s:if test="'topReports90Days'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topReports90Days"/></option>            		
      		<option value="topFailures" <s:if test="'topFailures'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topFailures"/></option>
      		<option value="topEmpty" <s:if test="'topEmpty'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topEmpty"/></option>      		      		
      		<option value="topAlerts" <s:if test="'topAlerts'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topAlerts"/></option>
      		<option value="topAlertsByUser" <s:if test="'topAlertsByUser'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topAlertsByUser"/></option>
      		<option value="topTriggeredAlerts" <s:if test="'topTriggeredAlerts'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topTriggeredAlerts"/></option>
      		<option value="topNotTriggeredAlerts" <s:if test="'topNotTriggeredAlerts'.equals(queryName)">selected="selected"</s:if> ><s:text name="analyzeReportLogs.query.topNotTriggeredAlerts"/></option>      	      		
      	</select>      
        <input class="standardButton" type="submit" name="submit" value="<s:text name="button.submit"/>"> &nbsp;&nbsp; 
        </div> 
      </td>
    </tr>
  </table>
  
  </form>
  
</div>

<br/>

<div align="center">	

    <s:set name="results" value="results" scope="request" />  
    
    <s:if test="'topReports'.equals(queryName) || 'topReports30Days'.equals(queryName) || 'topReports60Days'.equals(queryName) || 'topReports90Days'.equals(queryName)">
	
      <display:table name="results" class="displayTag" export="true" sort="list" pagesize="10">  	      
  	      <display:column property="[0]" titleKey="label.report" sortable="true" headerClass="sortable"/>  	     
  	      <display:column property="[1]" titleKey="label.hits" sortable="true" headerClass="sortable"/>
  	      <display:setProperty name="export.pdf" value="true"/>	
		  <display:setProperty name="export.xml" value="false"/>
		  <display:setProperty name="export.pdf.filename" value="TopReports.pdf"/>
		  <display:setProperty name="export.csv.filename" value="TopReports.csv"/>
		  <display:setProperty name="export.excel.filename" value="TopReports.xls"/>
	   </display:table>		
		
	</s:if>
	
	<s:if test="'topReportsByUser'.equals(queryName)">  	
   
      <display:table name="results" class="displayTag" export="true" sort="list" pagesize="10">          
          <display:column property="[0]" titleKey="label.user" sortable="true" headerClass="sortable"/>         
          <display:column property="[1]" titleKey="label.report" sortable="true" headerClass="sortable"/>         
          <display:column property="[2]" titleKey="label.hits" sortable="true" headerClass="sortable"/>
          <display:setProperty name="export.pdf" value="true"/> 
          <display:setProperty name="export.xml" value="false"/>
         <display:setProperty name="export.pdf.filename" value="TopReportsByUser.pdf"/>
         <display:setProperty name="export.csv.filename" value="TopReportsByUser.csv"/>
         <display:setProperty name="export.excel.filename" value="TopReportsByUser.xls"/>
      </display:table>   		
		
	</s:if>
	
	<s:if test="'topFailures'.equals(queryName)"> 	  	
  
      <display:table name="results" class="displayTag" export="true" sort="list" pagesize="10">         
          <display:column property="[0]" titleKey="label.report" sortable="true" headerClass="sortable"/>         
          <display:column property="[1]" titleKey="label.hits" sortable="true" headerClass="sortable"/>
          <display:setProperty name="export.pdf" value="true"/> 
          <display:setProperty name="export.xml" value="false"/>
          <display:setProperty name="export.pdf.filename" value="TopFailures.pdf"/>
          <display:setProperty name="export.csv.filename" value="TopFailures.csv"/>
          <display:setProperty name="export.excel.filename" value="TopFailures.xls"/>
      </display:table>  
		
	</s:if>
  
    <s:if test="'topEmpty'.equals(queryName)">       
  
      <display:table name="results" class="displayTag" export="true" sort="list" pagesize="10">         
          <display:column property="[0]" titleKey="label.report" sortable="true" headerClass="sortable"/>         
          <display:column property="[1]" titleKey="label.hits" sortable="true" headerClass="sortable"/>
          <display:setProperty name="export.pdf" value="true"/> 
          <display:setProperty name="export.xml" value="false"/>
          <display:setProperty name="export.pdf.filename" value="TopEmptyReports.pdf"/>
          <display:setProperty name="export.csv.filename" value="TopEmptyReports.csv"/>
          <display:setProperty name="export.excel.filename" value="TopEmptyReports.xls"/>
      </display:table>  
    
    </s:if>	
    
    <s:if test="'topAlerts'.equals(queryName)">       
  
      <display:table name="results" class="displayTag" export="true" sort="list" pagesize="10">         
          <display:column property="[0]" titleKey="label.alert" sortable="true" headerClass="sortable"/>         
          <display:column property="[1]" titleKey="label.hits" sortable="true" headerClass="sortable"/>
          <display:setProperty name="export.pdf" value="true"/> 
          <display:setProperty name="export.xml" value="false"/>
          <display:setProperty name="export.pdf.filename" value="TopAlerts.pdf"/>
          <display:setProperty name="export.csv.filename" value="TopAlerts.csv"/>
          <display:setProperty name="export.excel.filename" value="TopAlerts.xls"/>
      </display:table>  
    
    </s:if> 	
	
    <s:if test="'topAlertsByUser'.equals(queryName)">       
  
      <display:table name="results" class="displayTag" export="true" sort="list" pagesize="10">         
          <display:column property="[0]" titleKey="label.user" sortable="true" headerClass="sortable"/>         
          <display:column property="[1]" titleKey="label.alert" sortable="true" headerClass="sortable"/>         
          <display:column property="[2]" titleKey="label.hits" sortable="true" headerClass="sortable"/>
          <display:setProperty name="export.pdf" value="true"/> 
          <display:setProperty name="export.xml" value="false"/>
          <display:setProperty name="export.pdf.filename" value="TopAlertsByUser.pdf"/>
          <display:setProperty name="export.csv.filename" value="TopAlertsByUser.csv"/>
          <display:setProperty name="export.excel.filename" value="TopAlertsByUser.xls"/>
      </display:table>  
    
    </s:if>   
		
    <s:if test="'topTriggeredAlerts'.equals(queryName)">       
  
      <display:table name="results" class="displayTag" export="true" sort="list" pagesize="10">         
          <display:column property="[0]" titleKey="label.alert" sortable="true" headerClass="sortable"/>         
          <display:column property="[1]" titleKey="label.hits" sortable="true" headerClass="sortable"/>
          <display:setProperty name="export.pdf" value="true"/> 
          <display:setProperty name="export.xml" value="false"/>
          <display:setProperty name="export.pdf.filename" value="TopAlertsTriggered.pdf"/>
          <display:setProperty name="export.csv.filename" value="TopAlertsTriggered.csv"/>
          <display:setProperty name="export.excel.filename" value="TopAlertsTriggered.xls"/>
      </display:table>  
    
    </s:if> 
    
    <s:if test="'topNotTriggeredAlerts'.equals(queryName)">       
  
      <display:table name="results" class="displayTag" export="true" sort="list" pagesize="10">         
          <display:column property="[0]" titleKey="label.alert" sortable="true" headerClass="sortable"/>         
          <display:column property="[1]" titleKey="label.hits" sortable="true" headerClass="sortable"/>
          <display:setProperty name="export.pdf" value="true"/> 
          <display:setProperty name="export.xml" value="false"/>
          <display:setProperty name="export.pdf.filename" value="TopAlertsNotTriggered.pdf"/>
          <display:setProperty name="export.csv.filename" value="TopAlertsNotTriggered.csv"/>
          <display:setProperty name="export.excel.filename" value="TopAlertsNotTriggered.xls"/>
      </display:table>  
    
    </s:if> 
      
</div>

<br/>

<s:include value="Footer.jsp" />