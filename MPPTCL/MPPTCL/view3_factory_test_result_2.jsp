
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

<%String s1=new String();%>
<%String s2=new String();%>
<%String s3=new String();%>
<%String s4=new String();%>
<%String s5=new String();%>
<%String s6=new String();%>
<%String s7=new String();%>
<%String s8=new String();%>
<%String s9=new String();%>
<%String s10=new String();%>
<%String s11=new String();%>
<%String s12=new String();%>
<%String s13=new String();%>
<%String s14=new String();%>
<%String s15=new String();%>
<%String s16=new String();%>
<%String s17=new String();%>
<%String s18=new String();%>
<%String s19=new String();%>
<%String s20=new String();%>
<%String s21=new String();%>
<%String s22=new String();%>
<%String s23=new String();%>

<%String s24=new String();%>
<%String s25=new String();%>
<%String s26=new String();%>
<%String s27=new String();%>
<%String s28=new String();%>
<%String s29=new String();%>
<%String s30=new String();%>
<%String s31=new String();%>
<%String s32=new String();%>
<%String s33=new String();%>
<%String s34=new String();%>
<%String s35=new String();%>
<% Connection con =null;

 
 s1 = request.getParameter("1");
 s2 = request.getParameter("2");
 s3 = request.getParameter("3");
 s4 = request.getParameter("4");
 s5 = request.getParameter("5");
 s6 = request.getParameter("6");
 s7 = request.getParameter("7");
 s8 = request.getParameter("8");
 s9 = request.getParameter("9");
 s10 = request.getParameter("10");
 s11 = request.getParameter("11");
 s12 = request.getParameter("12");
 s13 = request.getParameter("13");
 s14 = request.getParameter("14");
  s15 = request.getParameter("15");
   s16 = request.getParameter("16");
    s17 = request.getParameter("17");
	 s18 = request.getParameter("18");
	  s19 = request.getParameter("19");
	   s20 = request.getParameter("20");
	    s21 = request.getParameter("21");
		 s22 = request.getParameter("22");
		  s23 = request.getParameter("23");
		   s24 = request.getParameter("24");
		    s25 = request.getParameter("25");
			 s26 = request.getParameter("26");
			  s27 = request.getParameter("27");
			  s28 = request.getParameter("28");
			  s29 = request.getParameter("29");
			  s30 = request.getParameter("30");
			  s31 = request.getParameter("31");
			  s32 = request.getParameter("32");
			  s33 = request.getParameter("33");
			  s34 = request.getParameter("34");
			  s35 = request.getParameter("35");
			  
			  

int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
			  String s="INSERT INTO      d1_2(Tap_No_HV_1,1U_N_V,1U_C,1V_1W_V,1V_C,1W_1U_V,1W_C,2U_N,2U,2V_N,2V,2W_N,2W,2U_2V,2U_C,2V_2W,2V_C,2W_2U,2W_C,1U_1V,1U,1V_1W,1V,1W_1U,1W,3U_3V,3U,3V_3W,3V,3W_3U,3W,Tap_No_HV_2,Tap_No_IV_1,Tap_No_IV_2,Tap_No_LV_1)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
              ps=con.prepareStatement(s);
               
			    ps.setString(1,s1);
                 ps.setString(2,s2);
                   ps.setString(3,s3);
                     ps.setString(4,s4);
                       ps.setString(5,s5);
                         ps.setString(6,s6);
                           ps.setString(7,s7);  
                           ps.setString(8,s8); 
                           ps.setString(9,s9);
                             ps.setString(10,s10);
                                 ps.setString(11,s11);
                                     ps.setString(12,s12);
                                         ps.setString(13,s13);
										    ps.setString(14,s14);
										  ps.setString(15,s15);
										  ps.setString(16,s16);
										  ps.setString(17,s17);
										  ps.setString(18,s18);
										  ps.setString(19,s19);
										  ps.setString(20,s20);
										  ps.setString(21,s21);
										  ps.setString(22,s22);
										  ps.setString(23,s23);
										  ps.setString(24,s24);
										  ps.setString(25,s25);
										  ps.setString(26,s26);
										  ps.setString(27,s27);
										  ps.setString(28,s28);
										  ps.setString(29,s29);
										  ps.setString(30,s30);
										  ps.setString(31,s31);
										  ps.setString(32,s32);
										  ps.setString(33,s33);
										   ps.setString(34,s34);
										    ps.setString(35,s35);
                          
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_factory_test_result_2.jsp");
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