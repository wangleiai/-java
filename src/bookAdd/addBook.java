package bookAdd;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.jni.OS;

import jdbc.BookImageJDBC;
import jdbc.BookJDBC;
import jdbcUtils.Book;
import jdbcUtils.BookImage;
import sun.nio.cs.ext.ISCII91;
import uuid.Uuid;

/**
 * Servlet implementation class addBook
 */
@WebServlet("/addBook")
public class addBook extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 数据接收
		// 文件上传基本操作
		// 1.车床件要给磁盘文件项工厂对象
		// 2.创建一个核心解析类
		// 3.解析request请求，返回的是List集合，集合中存放的是FileItem对象
		// 4.遍历集合，获得每个FileItem，判断是表单项还是文件上传项
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
		Book book = new Book();
		String imageUrl = "";
		try {
			// 定义一个Map集合用于保存接受到的数据
			Map<String, String> map = new HashMap<>();
			List<FileItem> list = servletFileUpload.parseRequest(request);
			System.out.println("fileItem size: " + list.size());
			for (FileItem fileItem : list) {
				// 判断是表单项还是文件上传项

				if (fileItem.isFormField()) {
					// 普通表单项
					// 接受表单项参数的值
					String name = fileItem.getFieldName();
					String value = fileItem.getString("utf-8");
					System.out.println(name + "  " + value);

					map.put(name, value);

//					 System.out.println(map);
				} else {
					// 文件上传项
					// 文件上传功能
					// 获得文件上传的名称
					String fileName = fileItem.getName();
					String uuidFileName = getUUIDFileName(fileName);
					// 获得文件上传的数据
					InputStream inputStream = fileItem.getInputStream();
					// 后的文件的上传路径
					String path = this.getServletContext().getRealPath("/upload");
					// if()
//					System.out.println("path: " + path);
					// 将输入流对接到输出流就可以
					String url = path + "\\" + uuidFileName;
					imageUrl = url;
//					System.out.println("url: " + url);
					OutputStream outputStream = new FileOutputStream(url);
					int len = 0;
					byte[] bs = new byte[1024];
					System.out.println(len);
					while ((len = inputStream.read(bs)) != -1) {
						outputStream.write(bs, 0, len);
					}
					inputStream.close();
					outputStream.close();
//					System.out.println(url);
				}
				
				
				
			}
			book.setBookAuthor(map.get("bookAuthor"));
			book.setBookName(map.get("bookName"));
			book.setCateId(map.get("cate"));
			book.setBookPrice(Integer.parseInt(map.get("bookPrice")));
			book.setBookSurplus(Integer.parseInt(map.get("bookNum")));
			book.setBookDec(map.get("bookDec"));
			String bookId = Uuid.getUUID();
			book.setBookId(bookId);
			
			boolean b = BookJDBC.insert(book);
			BookImageJDBC.insert(new BookImage(Uuid.getUUID(), bookId, imageUrl));
			System.out.println(b);
			request.getRequestDispatcher("/admin.jsp").forward(request, response);
		} catch (FileUploadException e) {

		}

		// 这里写 保存数据库

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public static String getUUIDFileName(String fileName) {
		// 将文件名的前面部分进行截取：xx.jpg --> .jpg
		int inx = fileName.lastIndexOf(".");
		String extention = fileName.substring(inx);
		String uuid = UUID.randomUUID().toString().replaceAll("-", "") + extention;

		return uuid;
	}
}
