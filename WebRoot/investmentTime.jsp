<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'investmentTime.jsp' starting page</title>
    
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
  <h1 align="center">
    进入投资时间计算器</h1>
  <form name="form1" method="post" action="">
    <table width="322" border="1" align="center">
      <tr>
        <td width="129" height="30">请输入本金：</td>
        <td width="177"><label for="principal"></label>
        <input type="text" name="principal" id="principal"></td>
      </tr>
      <tr>
        <td height="35">请输入最终受益：</td>
        <td><label for="earnings"></label>
        <input type="text" name="earnings" id="earnings"></td>
      </tr>
      <tr>
        <td height="28">请输入年利率：</td>
        <td><label for="rate"></label>
        <input type="text" name="rate" id="rate"></td>
      </tr>
      <tr>
        <td height="35">请输入复利次数</td>
        <td><label for="count"></label>
        <input type="text" name="count" id="count"></td>
      </tr>
      <tr>
        <td height="38" colspan="2" align="center"><input type="submit" name="button" id="button" value="确定"></td>
      </tr>
    </table>
  </form>
  <p>&nbsp;</p>
  
    <%
      	String prin = request.getParameter("principal");
        	  String ra = request.getParameter("rate");
          	  String earn = request.getParameter("earnings");
          	  String co = request.getParameter("count");
     	if (earn == null || ra == null || prin == null || co == null) {
    		earn = "0";
    		ra = "0";
    		prin = "0";
    		co = "0";
    	}
    	try {
    		double e = Double.valueOf(earn).doubleValue();
    		double r = Double.valueOf(ra).doubleValue();
    		int p = Integer.valueOf(prin).intValue();
    		int c = Integer.valueOf(co).intValue();
    		if (e > 0 || r > 0 || p > 0 || c > 0) {
				r = Math.pow(1+r/c, c)-1;
				double F = Math.log(e/p)/Math.log(1+r);
    			out.print("<BR>投资时间是：" + F);
    		} else {
    			out.print("<BR>输入不合法！！！！");
    		}
    	} catch (NumberFormatException e) {
    		out.print("<BR>" + "请输入数据！");
    	}
   %>
  
  
  
  
  </body>
</html>
