<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>University Enrollments</title>
 
    <style>
        tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
    </style>
 
</head>
 
 
<body>
    <h2>List of Employees</h2>  
    <table>
        <tr>
            <td>NAME</td><td>Joining Date</td><td>Salary</td><td>SSN</td><td></td>
        </tr>
        <c:forEach items="${employees}" var="employee">
            <tr>
            <td>${employee.name}</td>
            <td>${employee.joiningDate}</td>
            <td>${employee.salary}</td>
            <td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
            <td><a href="<c:url value='/delete-${employee.ssn}-employee' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="<c:url value='/new' />">Add New Employee</a>
    
    <h:form>
    <p:growl id="growl" life="2000" />
     
    <p:commandButton value="Ajax Submit" id="ajax" update="growl" actionListener="#{buttonView.buttonAction}" styleClass="ui-priority-primary" />
 
    <p:commandButton value="Non-Ajax Submit" id="nonAjax" actionListener="#{buttonView.buttonAction}" ajax="false" />
 
    <p:commandButton value="With Icon" id="withIcon" actionListener="#{buttonView.buttonAction}" update="growl" icon="ui-icon-disk" />
 
    <p:commandButton actionListener="#{buttonView.buttonAction}" id="iconOnly" update="growl" icon="ui-icon-disk" title="Icon Only" />
 
    <p:commandButton value="Disabled" id="disabled" disabled="true" />
</h:form>
</body>
</html>