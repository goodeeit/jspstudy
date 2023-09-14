<%--
  지시어(directive)
  1. page    : page 설정, Java import
  2. include : 다른 페이지를 현재 페이지에 포함할 때 사용
  3. taglib  : JSTL(Java Standard Tag Library) 사용할 때 사용
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


  <!-- HTML 주석 : "소스 보기"에서 보인다.    Java 관련 코드는 주석처리하지 못한다. -->
  <%-- JSP  주석 : "소스 보기"에서 안 보인다. Java 관련 코드를 주석처리할 수 있다. --%>


  <%-- 스크립트릿(scriptlet) : Java 코드 --%>
  <% int a = 10; %>


  <%-- 표현식(expression) : Java 값(변수, 반환값이 있는 메소드 호출) --%>
  <div><%=a%></div>


  <%-- 이름과 나이를 변수에 저장한 뒤 보여주자. --%>
  <%
    String name = "홍길동";
    int age = 30;
  %>
  <ul>
    <li>이름 : <%=name%></li>
    <li>나이 : <%=age%></li>
  </ul>
  
  
  <%-- 선언부(declaration) : Java 메소드 정의 --%>
  <%!
    // 0~9 사이의 난수를 반환하는 getRandom() 메소드 정의하기
    public int getRandom(){
      return (int)(Math.random() * 10);
    }
  %>
  <div>0~9 사이 난수 : <%=getRandom()%></div>




</body>
</html>