<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'periodicIncome.jsp' starting page</title>
    
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
  <h1 align="center">进入定投计算器
  </h1>
  <form name="form1" method="post" action="">
    <table width="435" height="119" border="1" align="center">
      <tr>
        <td width="214">请输入定期
          <select name="select" id="select">
            <option value="1">年</option>
            <option value="2">月</option>
            <option value="3">季度</option>
          </select>
        投资额：</td>
        <td width="176"><label for="investment"></label>
        <input type="text" name="investment" id="investment">          <label for="select"></label></td>
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
  <p>&nbsp;</p>

	<%
		String sel = request.getParameter("select");
//		out.print("<BR>" + sel);
		String invest = request.getParameter("investment");
		String ra = request.getParameter("rare");
		String ti = request.getParameter("time");
//		out.print(invest + ra + ti);
		if (ra == null || invest == null || ti == null) {
			ra = "0";
			invest = "0";
			ti = "0";
		}
		try {
			double inv = Double.valueOf(invest).doubleValue();
			double r = Double.valueOf(ra).doubleValue();
			int t = Integer.valueOf(ti).intValue();
			
			if (inv > 0 && r > 0 && t > 0) {
				if (sel == "2") {
					r = r / 12.0;
					t = t * 12;
				} else if (sel == "3") {
					r = r / 4.0;
					t = t * 4;
				}
				double F = inv * (1.0 + r) * (-1 + Math.pow(1.0 + r, t)) / r;
				out.print("<BR>投资收益是：" + F);
			} else {
				out.print("<BR>输入不合法！！！！");
			}
		} catch (NumberFormatException e) {
			out.print("<BR>" + "请输入数据！");
		}
	%>

</body>
</html>
