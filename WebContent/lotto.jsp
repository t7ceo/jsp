<%@page import="hybrid.lotto.Lotto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Lotto lotto = new Lotto();
	int[] numbers = lotto.getLotto();
	out.print("{\"lotto\" : [");
	for (int i = 0; i < numbers.length; i++) {
		out.println(numbers[i]);
		if(i < numbers.length -1){
			out.print(", ");
		}
	}
	out.print("]}");
%>lotto
