<%@page contentType="text/html" %>
<%@page pageEncoding="UTF-8" %>
<%@page language="java" %>
<%@page language="java" import="java.sql.*" %>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password") ;
    
    try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con= DriverManager.getConnection("jdbc:derby://localhost:1527/coaching","vaishnavi","pariti");
        Statement st=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        ps=con.prepareStatement("select from vaishnavi. logintable where username=? and password=?");
        rs=ps.executeQuery();
        if(rs.next())
        {
            String redirectURL="purchase.jsp";
            response.sendRedirect("redirectURL");
            
        }
        else {
            out.println("no login");
            
        }}
        catch(Exception e){
                out.println("no data");
        
                
                }
    
     
    %>