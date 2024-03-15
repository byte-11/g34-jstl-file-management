package uz.pdp.g34jstlfilemanagement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.URLConnection;
import java.nio.file.Files;
import java.nio.file.Path;


import static uz.pdp.g34jstlfilemanagement.FilesUploadServlet.PATH;

public class FilesDownloadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("download.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String fileName = req.getParameter("fileName");
        System.out.println(fileName);
        resp.addHeader("Content-Type", URLConnection.guessContentTypeFromName(fileName));
        resp.addHeader("Content-Disposition", "attachment;filename="+fileName);
        Path resolve = PATH.resolve(fileName);
        System.out.println(resolve.toString());
        byte[] bytes = Files.readAllBytes(resolve);
        resp.getOutputStream().write(bytes);
    }
}
