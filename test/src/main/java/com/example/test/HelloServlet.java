package com.example.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ShowSweetAlertServlet")
public class HelloServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            int a = (int) Math.floor(Math.random() * 10);
            int b = (int) Math.floor(Math.random() * 10);
            request.setAttribute("a", a);
            request.setAttribute("b", b);
            request.getRequestDispatcher("/show.jsp").forward(request, response);
        } else if (action.equals("kiemtra")) {
            int a = Integer.parseInt(request.getParameter("a"));
            int b = Integer.parseInt(request.getParameter("b"));
            int ketqua = a + b;
            int inputKetqua = Integer.parseInt(request.getParameter("ketqua"));
            if (inputKetqua == ketqua) {
                request.setAttribute("thanhcong", "ok");
            }
            else {
                request.setAttribute("thanhcong", "oook");
            }
            request.getRequestDispatcher("/show.jsp").forward(request, response);
        }
    }
}
