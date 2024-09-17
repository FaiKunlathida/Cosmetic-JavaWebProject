<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dairy Routine Planner</title>
</head>
<body>

<h1>My Schedule</h1>

<br>
	
	<c:forEach items="${task_schedulelist}" var="task_schedulelist">
        
                <p>Tid:     ${task_schedulelist.Tid}</p>
            
                <p>Tname:     ${task_schedulelist.Tname}</p>
                
                <p>Status:     ${task_schedulelist.Status}</p>
            
                <p>Start:     ${task_schedulelist.Start}</p>
            
              	<p>End:   ${task_schedulelist.End}</p>
            
        <hr>
    </c:forEach>

</body>
</html>