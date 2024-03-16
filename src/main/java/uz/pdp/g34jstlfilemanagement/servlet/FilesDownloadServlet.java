package uz.pdp.g34jstlfilemanagement.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import uz.pdp.g34jstlfilemanagement.model.SystemFile;
import uz.pdp.g34jstlfilemanagement.repo.SystemFileRepository;

import java.io.IOException;
import java.net.URLConnection;
import java.nio.file.Files;
import java.nio.file.Path;


import static uz.pdp.g34jstlfilemanagement.servlet.FilesUploadServlet.PATH;

public class FilesDownloadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("fileName") != null){
            String fileName = req.getParameter("fileName");
            resp.addHeader("Content-Type", URLConnection.guessContentTypeFromName(fileName));
            resp.addHeader("Content-Disposition", "attachment;filename="+fileName);
            Path resolve = PATH.resolve(fileName);
            byte[] bytes = Files.readAllBytes(resolve);
            resp.getOutputStream().write(bytes);
        }else {
            req.getRequestDispatcher("download.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String fileName = req.getParameter("name");
        System.out.println(fileName);
        resp.addHeader("Content-Type", URLConnection.guessContentTypeFromName(fileName));
        resp.addHeader("Content-Disposition", "attachment;filename="+fileName);
        Path resolve = PATH.resolve(fileName);
        System.out.println(resolve.toString());
        byte[] bytes = Files.readAllBytes(resolve);
        resp.getOutputStream().write(bytes);
    }
}
