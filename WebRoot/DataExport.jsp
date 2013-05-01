<%@ taglib prefix="s" uri="/struts-tags" %>

<s:include value="Banner.jsp" />

<div align="center">  

  <br/><br/> 
  
  <div class="important img-export" id="instructions" style="width: 50%;">
  	   <s:text name="dataExport.title"/>
  </div>	   
  
  <form action="dataExport.action" class="dialog-form" style="width: 55%;">
  
  <table class="dialog">       
    <tr>
   	  <td valign="top" class="boldText"><s:text name="label.reports"/></td>
   	  <td>
   		<ul id="currentReports" class="checklist" style="height:30em;width:30em;">
   		<s:iterator id="report" value="reports">
		   <li>      
        	<input type="checkbox" name="reportIds" value="<s:property value="id"/>" >
        	<s:property value="name"/>
      	   </li>
        </s:iterator>
      </td>   
    </tr>
  </table>
   
  <div class="button-bar" id="buttons" >
       <input class="standardButton" type="submit" name="submitOk" value="<s:text name="button.export"/>">
  </div>     
  
  </form>  
  
  <div class="error"><s:actionerror/></div>
  
</div>  

<s:include value="Footer.jsp" />

