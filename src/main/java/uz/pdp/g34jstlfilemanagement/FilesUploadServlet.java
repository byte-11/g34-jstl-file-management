package uz.pdp.g34jstlfilemanagement;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

@MultipartConfig
public class FilesUploadServlet extends HttpServlet {

    public static final Path PATH = Path.of(System.getProperty("user.home"), "/files/uploaded");

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("user.home => " + System.getProperty("user.home"));
        if (!Files.exists(PATH)){
            try {
                Files.createDirectories(PATH);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        super.init(config);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("upload.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part file = req.getPart("file");
        Files.copy(file.getInputStream(), PATH.resolve(file.getSubmittedFileName()), StandardCopyOption.REPLACE_EXISTING);
        System.out.println(file.getSubmittedFileName());
        System.out.println(file.getContentType());
        System.out.println(file.getSize());
    }
}
