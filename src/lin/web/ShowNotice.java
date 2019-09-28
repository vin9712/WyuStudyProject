package lin.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ShowNotice")
public class ShowNotice extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

        // 前端的内容
        String noticeName = request.getParameter("noticename");
        String noticeTile = request.getParameter("noticetitle");
        String content = request.getParameter("container");


        System.out.println("标题: " + noticeName);
        System.out.println("主题: " + noticeTile);
        System.out.println("内容: " + content);

        response.getWriter().append(content);
    }

}
