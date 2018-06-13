package szymon.edu.servlets;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import szymon.edu.entities.LaptopsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/GetDataServlet")
public class GetDataServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Session session = new Configuration().configure().buildSessionFactory().openSession();
        Query query = session.createQuery("from LaptopsEntity ");

        List<LaptopsEntity> laptops = query.list();
        session.close();
        request.setAttribute("laptops", laptops);
        request.getRequestDispatcher("laptopDetails.jsp").forward(request, response);

    }
}
