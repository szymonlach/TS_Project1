package szymon.edu.servlets;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import szymon.edu.entities.LaptopsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/InsertLaptopServlet")
public class InsertLaptopServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String model = request.getParameter("model");
        if (model.isEmpty()) {
            model = "NULL";
        }
        String cpu = request.getParameter("cpu");
        if (cpu.isEmpty()) {
            cpu = "NULL";
        }
        String gpu = request.getParameter("gpu");
        if (gpu.isEmpty()) {
            gpu = "NULL";
        }
        String ram = request.getParameter("ram");
        if (ram.isEmpty()) {
            ram = "0";
        }
        String disc = request.getParameter("disc");
        if (disc.isEmpty()) {
            disc = "NULL";
        }

        LaptopsEntity laptop = new LaptopsEntity();
        laptop.setCpu(cpu);
        laptop.setDisc(disc);
        laptop.setGpu(gpu);
        laptop.setModel(model);
        laptop.setRam(Integer.parseInt(ram));

        Session session = new Configuration().configure().buildSessionFactory().openSession();

        Transaction transaction = session.beginTransaction();
        session.save(laptop);
        session.flush();
        transaction.commit();

        session.close();
        response.sendRedirect("GetDataServlet");

    }


}
