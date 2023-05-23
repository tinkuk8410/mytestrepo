<%@page import="org.nlt.controller.ParentInteface"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="head.jsp"/>

<body>

<form action="./nlt" method="post">
<!------ Include the above in your HEAD tag ---------->
<input type="hidden" name="page" value="PersonUpdatePage"/>
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>NLT Infotech Pvt Ltd</h3>
                        <p>Works Like A Dream<br>
                        Login:<%=session.getAttribute("LoginName") %>
                        Your Ip:<%=session.getAttribute("Ip") %>
                        </p>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Employee</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Hirer</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Person Registration : Update</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        	<input type="hidden" name="id" value="<%=request.getParameter("id")%>" />
                                        	<input type="hidden" name="page" value="PersonUpdatePage" />
                                            <input type="text" class="form-control" placeholder="Full Name *" name="fname" value="<%=request.getParameter("name")%>"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Person Age *" name="age" value="<%=request.getParameter("age")%>"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Phone No *" name="phone" value="<%=request.getParameter("phone")%>"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" <%=request.getParameter("gender").equals("male")?"checked":""%>>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female"<%=request.getParameter("gender").equals("female")?"checked":""%>>
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                        <div>
                                        	<a href="index.jsp"><input type="button" class="btnRegister" value="HOME" /></a>
                                            <input type="submit" class="btnRegister" value="UPDATE" />
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <table class="table">
                                        	<thead>
                                        	 <tr>
                                        		<th>NAME</th>
                                        		<th>AGE</th>
                                        		<th>PHONE</th>
                                        	</tr>
                                        	</thead>
                                        	<tbody>
                                        	
                                        	<%
                                        	Statement smt =ParentInteface .con.createStatement();
                                        	ResultSet rs= smt.executeQuery("select * from persons");
                                        	while(rs.next())
                                        	{
                                        	%>
                                        	<tr>
                                        		<td><%=rs.getString("name")%></td>
                                        		<td><%=rs.getInt("age")%></td>
                                        		<td><%=rs.getString("phone")%></td>
                                        	</tr>
                                        	<% 
                                        	}
                                        	rs.close();
                                        	smt.close();
                                        	%>
                                        	</tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>

            </div>
   </form>	         
</body>
</html>