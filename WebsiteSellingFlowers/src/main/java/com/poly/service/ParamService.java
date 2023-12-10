package com.poly.service;

import java.io.File;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest request;
	
	public String getString(String name, String defaultValue) {
        // Kiểm tra xem tham số có tồn tại hay không
        if (request.getParameter(name) != null) {
            // Nếu có, trả về giá trị của tham số
            return request.getParameter(name);
        } else {
            // Nếu không, trả về giá trị mặc định
            return defaultValue;
        }
    }
	public int getInt(String name, int defaultValue) {
        // Kiểm tra xem tham số có tồn tại hay không
        if (request.getParameter(name) != null) {
            // Nếu có, chuyển đổi giá trị của tham số thành kiểu dữ liệu `int`
            return Integer.parseInt(request.getParameter(name));
        } else {
            // Nếu không, trả về giá trị mặc định
            return defaultValue;
        }
    }
	public double getDouble(String name, double defaultValue) {
	    // Kiểm tra xem tham số có tồn tại hay không
	    if (request.getParameter(name) != null) {
	        // Nếu có, trả về giá trị của tham số
	        return Double.parseDouble(request.getParameter(name));
	    } else {
	        // Nếu không, trả về giá trị mặc định
	        return defaultValue;
	    }
	}
	public boolean getBoolean(String name, boolean defaultValue) {
	    // Kiểm tra xem tham số có tồn tại hay không
	    if (request.getParameter(name) != null) {
	        // Nếu có, trả về giá trị của tham số
	        return Boolean.parseBoolean(request.getParameter(name));
	    } else {
	        // Nếu không, trả về giá trị mặc định
	        return defaultValue;
	        
	    }
	}
	public Date getDate(String name, String pattern) {
	    // Kiểm tra xem tham số có tồn tại hay không
	    if (request.getParameter(name) != null) {
	        // Nếu có, chuyển đổi giá trị của tham số thành kiểu dữ liệu `Date`
	        try {
	            return new SimpleDateFormat(pattern).parse(request.getParameter(name));
	        } catch (ParseException e) {
	            throw new RuntimeException("Lỗi sai định dạng", e);
	        }
	    } else {
	        // Nếu không, trả về giá trị mặc định
	        return null;
	    }
	}
	public File saveFile(MultipartFile file, String path) throws IOException {
        // Kiểm tra xem có file upload hay không
        if (file != null && !file.isEmpty()) {
            // Tạo đường dẫn đầy đủ của file
            String fullPath = request.getServletContext().getRealPath(path);

            // Tạo thư mục nếu không tồn tại
            File directory = new File(fullPath);
            if (!directory.exists()) {
                directory.mkdirs();
            }

            // Lưu file
            File savedFile = new File(fullPath, file.getOriginalFilename());
            file.transferTo(savedFile);

            return savedFile;
        } else {
            return null;
        }
    }
	public boolean getCheckboxValue(String name) {
	    String[] values = request.getParameterValues(name);

	    // Nếu có ít nhất một giá trị và giá trị đầu tiên là "on"
	    if (values != null && values.length > 0 && values[0].equals("on")) {
	        return true;
	    } else {
	        return false;
	    }
	}
}
