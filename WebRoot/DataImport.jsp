<%@ taglib prefix="s" uri="/struts-tags" %>

<s:include value="Banner.jsp" />

<div align="center">

  <br/><br/>

  <div class="img-upload important" id="instructions" style="width:75%;"><s:text name="dataImport.title"/></div></td>
    
  <form action="dataImport.action" method="POST" enctype="multipart/form-data" class="dialog-form" style="width:80%;">
  
  <br/>  
  
  <table>
    <tr colspan="2">      
      <td>
        <input type="file" name="importFile" value="Browse..." size="50"/>&nbsp;
        <input type="submit" class="standardButton" value="<s:text name="button.import"/>">
      </td>
    </tr>   
  </table> 
 
  <br/>
  
  </form>  
  
  <br/>   
  
  <div class="error"><s:actionerror/></div>
		
<s:include value="Footer.jsp" />