/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

/**
 *
 * @author java2
 */
public class Upload extends HttpServlet {

    private static java.sql.Date getCurrentDate() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Date(today.getTime());
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Connection con;
            PreparedStatement pstm = null;
             String title = "";
             String studentname = "";
             String year = "";
             String guide = "";
            String abstract1 = "";
           // String a = (String) request.getSession().getAttribute("user");
           // System.out.println("User Name : " + a);
            try {
                boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
                if (!isMultipartContent) {
                    return;
                }
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                try {
                    List<FileItem> fields = upload.parseRequest(request);
                    Iterator<FileItem> it = fields.iterator();
                    if (!it.hasNext()) {
                        return;
                    }
                    while (it.hasNext()) {
                        FileItem fileItem = it.next();
                        if (fileItem.getFieldName().equals("title")) {
                            title = fileItem.getString();
                            System.out.println("File Name" + title);
                        
                        }
                        else if (fileItem.getFieldName().equals("studentname")) {
                            studentname = fileItem.getString();
                            System.out.println("File Keyword" + studentname);
                        }
                        else if (fileItem.getFieldName().equals("year")) {
                            year = fileItem.getString();
                            System.out.println("File Keyword" + year);
                        }
                        else if (fileItem.getFieldName().equals("guide")) {
                            guide = fileItem.getString();
                            System.out.println("File Keyword" + guide);
                        }
                        else if (fileItem.getFieldName().equals("abstract1")) {
                            abstract1 = fileItem.getString();
                            System.out.println("File Keyword" + abstract1);
                        }
                        else {

                        }
                        boolean isFormField = fileItem.isFormField();
                        if (isFormField) {
                        } else {
                        try {
                            
                        Connection connection = null;   
                        Class.forName("com.mysql.jdbc.Driver");	
                        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentperformance","root","root");
                        
                        pstm = connection.prepareStatement("insert into file (file, title, studentname, year, guide, abstract1, CDate, data)values(?,?,?,?,?,?,?,?)");
                        System.out.println("getD " + fileItem.getName());
                        String str = getStringFromInputStream(fileItem.getInputStream(),fileItem.getContentType());


                       pstm.setBinaryStream(1, fileItem.getInputStream());
                       pstm.setString(2, title);
                       pstm.setString(3, studentname); 
                       pstm.setString(4, year);
                       pstm.setString(5, guide);
                       pstm.setString(6, abstract1);
                       pstm.setDate(7, getCurrentDate());
                       pstm.setString(8, str);

                       int i = pstm.executeUpdate();
                       if (i == 1) {
                            response.sendRedirect("upload.jsp?msg1=success");
                        } else {
                            response.sendRedirect("upload.jsp?msgg=failed");
                        }
                        connection.close();
                            } catch (Exception e) {
                               response.sendRedirect("upload.jsp?m3=Duplicate Data");
                            }
                        }
                    }
                } catch (FileUploadException e) {
                } catch (Exception ex) {
                    Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
                }
            } finally {
                out.close();
            }
        }
    }

    private static String getStringFromInputStream(InputStream is,String fileType) {
        String line = null;
       
             
           
        if(fileType!=null){ //is a docx
    try {
    //    fis = new FileInputStream(new File(fileName));
        XWPFDocument doc = new XWPFDocument(is);
        XWPFWordExtractor extract = new XWPFWordExtractor(doc);
         System.out.println(extract.getText());
       return extract.getText();
       
    } catch (IOException e) {

        e.printStackTrace();
    }
        }
         else { //is not a docx
        try {
             HWPFDocument doc = new HWPFDocument(is);
        //    WordExtractor extractor = new WordExtractor(doc);
         //   System.out.println(extractor.getText());
        } catch (IOException e) {
            e.printStackTrace();
        }
        }
       return line ;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
