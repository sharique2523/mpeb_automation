
<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<html>
<head>

</head>




<body>
<% Connection con =null;

String s1 = request.getParameter("Date");
String s2 = request.getParameter("Tap No.");
String s3 = request.getParameter("Megger");
String s4 = request.getParameter("Oil Temp");
String s5 = request.getParameter("Core-Tank");
String s6 = request.getParameter("Core-Core Clamp");
String s7 = request.getParameter("Core Clamp-Tank");
String s8 = request.getParameter("Remarks Name Sign. of Engineer");
int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
         String s="INSERT INTO ir_values_between_core_or_end_frame_or_tank (Date, tap_no, megger, oil_temp, IR_core_tank,core_coreclamp, IR_core_clamp_tank, remarks_and_name_of_engineer)VALUES(?,?,?,?,?,?,?,?)";
            ps=con.prepareStatement(s);
           
               
                   ps.setString(1,s1);
                     ps.setString(2,s2);
                       ps.setString(3,s3);
                         ps.setString(4,s4);
                           ps.setString(5,s5);  
                              ps.setString(6,s6);  
                                 ps.setString(7,s7);
ps.setString(8,s8);                                    
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_IR_VALUES_BETWEEN_CORE _END_FRAME_CORE_CLAMP_TANK.jsp");
                       }                         
        

       
           
            con.close();
        } catch (Exception e) 
        {
      out.print(e);
   out.print("unable to insert");
         }

       
%>



</body>


</html>           