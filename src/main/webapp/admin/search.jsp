<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Search Page</title>
</head>
<body>
    <h2>Search Page</h2>
    
    <form action="/search" method="get"> 
        <input type="text"  name="keyword" required>
        <button type="submit">Search</button>
    </form>
    
    <%-- Display search results if available --%>
    
        <h3>Search Results:</h3>
        <c:forEach var="search" items="${results}">
            <div style="border: 1px solid #ccc; padding: 10px; margin-top: 10px;">
                <p>Title: ${search.tiltle}</p>
                <p>Type: ${search.type}</p>
                <!-- Add other properties as needed -->
            </div>
        </c:forEach>
    
</body>
</html>