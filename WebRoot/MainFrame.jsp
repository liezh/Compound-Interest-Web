<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MainFrame.jsp' starting page</title>
    
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
  <h1 align="center"><strong>欢迎来使用复利计算器 4.0
    </strong><br>
  </h1>
  <form name="form1" method="post" action="">
    <table width="400" height="177" border="1" align="center">
      <tr>
        <td width="192" align="center"><a href="http://localhost:8080/fuli4.0/singleInterest.jsp">单利计算</a>          <input type="submit" name="singleInterest" id=" singleInterest" value="进入"></td>
        <td width="192" align="center"><a href="http://localhost:8080/fuli4.0/compoundInterest.jsp">复利计算</a>          <input type="submit" name="compoundInterest" id="compoundInterest" value="进入"></td>
      </tr>
      <tr>
        <td align="center"><a href="http://localhost:8080/fuli4.0/principal.jsp">本金估算</a>          <input type="submit" name="principal" id="principal" value="进入"></td>
        <td align="center"><a href="http://localhost:8080/fuli4.0/investmentTime.jsp">投资年限估算</a>          <input type="submit" name="investmentTime" id="investmentTime" value="进入"></td>
      </tr>
      <tr>
        <td align="center"><a href="http://localhost:8080/fuli4.0/bestProject.jsp">最优项目利率估算</a>          <input type="submit" name="bestProject" id="bestProject" value="进入"></td>
        <td align="center"><a href="http://localhost:8080/fuli4.0/periodicIncome.jsp">定期投资收益计算</a>          <input type="submit" name="periodicIncome" id="periodicIncome" value="进入"></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><a href="http://localhost:8080/fuli4.0/refund.jsp">等额本息还款计算</a>          <input type="submit" name="refund" id="refund" value="进入"></td>
      </tr>
    </table>
  </form>
  </body>
</html>
