<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'compoundInterest.jsp' starting page</title>
    
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
  <h1 align="center">进入复利计算器
  </h1>
  <form name="form1" method="post" action="">
    <table width="379" border="1" align="center">
      <tr>
        <td width="156">请输入本金：</td>
        <td width="207"><label for="principal"></label>
        <input type="text" name="principal" id="principal"></td>
      </tr>
      <tr>
        <td>请输入年利率：</td>
        <td><label for="rate"></label>
        <input type="text" name="rate" id="rate"></td>
      </tr>
      <tr>
        <td>请输入年限：</td>
        <td><label for="time"></label>
        <input type="text" name="time" id="time"></td>
      </tr>
      <tr>
        <td>请输入复利次数：</td>
        <td><label for="count"></label>
        <input type="text" name="count" id="count"></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" name="button" id="button" value="确定"></td>
      </tr>
    </table>
  </form>
  <p>&nbsp;</p>
  
    <%
    	String prin = request.getParameter("principal");
        	  String ra = request.getParameter("rate");
          	  String ti = request.getParameter("time");
          	  String co = request.getParameter("count");
     	if (prin == null || ra == null || ti == null || co == null) {
    		prin = "0";
    		ra = "0";
    		ti = "0";
    		co = "0";
    	}
    	try {
    		double p = Double.valueOf(prin).doubleValue();
    		double r = Double.valueOf(ra).doubleValue();
    		int t = Integer.valueOf(ti).intValue();
    		int c = Integer.valueOf(co).intValue();
    		if (p > 0 || r > 0 || t > 0 || c > 0) {
				r = Math.pow(1+r/c, c)-1;
				double F = p*Math.pow((r+1), t);
				
    			out.print("<BR>复利的结果是：" + F);
    		} else {
    			out.print("<BR>输入不合法！！！！");
    		}
    	} catch (NumberFormatException e) {
    		out.print("<BR>" + "请输入数据！");
    	}
    %>
  
  
  
  
</body>
</html>
