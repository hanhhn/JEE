/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thanh Thuy
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    private String Username= "UIT";
    private String Password= "123";
    private int visitCount = 0;
    private boolean isFirst=false;
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        if(visitCount>0)
        {
            if(!isFirst)
                visitCount++;
            switch (visitCount) {
                case 1:
                    request.setAttribute("msg","Bạn đã truy cập lần thứ: "+visitCount+"<p>Chào mừng lần đầu tiên bạn đến với website</p>");
                    break;
                case 5:
                    request.setAttribute("msg","Bạn đã truy cập lần thứ: "+visitCount+"<p>Chào mừng bạn đã trở lại, Chúc mừng bạn đã nhận được một voucher</p>");
                    break;
                default:
                    request.setAttribute("username",Username);
                    request.setAttribute("msg","Bạn đã truy cập lần thứ: "+visitCount+"<p>Chào mừng bạn đã trở lại</p>");
                    break;
            }
        }else{
            request.setAttribute("username","");
        }
        request.getRequestDispatcher("Login.jsp").forward(request, response); 
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String name=  request.getParameter("user_name");
        String pas=  request.getParameter("password");
        if(name.equals(Username) && pas.equals(Password))
        {
            if(visitCount==0){
                visitCount = visitCount +1;
                isFirst=true;
            }else{
                isFirst=false;
            }
            doGet(request, response);
        }else{
           if(visitCount==0)
            {
                request.setAttribute("msg","Sai tài khoản hoặc mật khẩu");
                request.getRequestDispatcher("Login.jsp").forward(request, response); 
            }
            else{
                request.setAttribute("msg1","Sai tài khoản hoặc mật khẩu");
                doGet(request, response);
            }
        }    
    }

}
