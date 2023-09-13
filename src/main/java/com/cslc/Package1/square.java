package com.cslc.Package1;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class square extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
String numberParam = request.getParameter("number");
if (numberParam != null && !numberParam.isEmpty()) {
try {
Double number = Double.parseDouble(numberParam);
Double squareRoot = Math.sqrt(number);
response.getWriter().println("The square root of " + number + " is " + squareRoot);
} catch (NumberFormatException e) {
response.getWriter().println("Invalid input. Please provide a valid number.");
}
} else {
response.getWriter().println("Please provide a 'number' parameter.");
}
}
}
