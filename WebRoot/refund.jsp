<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'refund.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1 align="center">进入本息还款计算器 </h1>
  <form name="form1" method="post" action="">
    <table width="350" border="1" align="center">
      <tr>
        <td width="130">请输入贷款金额：</td>
        <td width="204"><label for="loan"></label>
        <input type="text" name="loan" id="loan"></td>
      </tr>
      <tr>
        <td>请输入年利率：</td>
        <td><label for="rare"></label>
        <input type="text" name="rare" id="rare"></td>
      </tr>
      <tr>
        <td>请输入年限：</td>
        <td><label for="time"></label>
        <input type="text" name="time" id="time"></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" name="button" id="button" value="确定"></td>
      </tr>
    </table>
  </form>
  <h1><br>
  </h1>
  
      <%
      	String lo = request.getParameter("loan");
        	  String ra = request.getParameter("rare");
          	  String ti = request.getParameter("time");
     	if (ra == null || lo == null || ti == null) {
    		ra = "0";
    		lo = "0";
    		ti = "0";
    	}
    	try {
    		double l = Double.valueOf(lo).doubleValue();
    		double r = Double.valueOf(ra).doubleValue();
    		int t = Integer.valueOf(ti).intValue();
    		if (r > 0 || l > 0 || t > 0) {
				r = r/12.0;
				int month = t*12;
				double F = l*r*Math.pow((1.0+r), month)/(Math.pow(1.0+r, month)-1);
    			out.print("<BR>每月还：" + F + "元");
    		} else {
    			out.print("<BR>输入不合法！！！！");
    		}
    	} catch (NumberFormatException e) {
    		out.print("<BR>" + "请输入数据！");
    	}
   %>
  
  
  </body>
</html>
