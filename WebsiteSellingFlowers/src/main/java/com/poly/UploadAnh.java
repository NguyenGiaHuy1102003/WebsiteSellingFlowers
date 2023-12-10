package com.poly;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.web.multipart.MultipartFile;

public class UploadAnh {
	public static void saveFile(String uploadDir, String fileName, MultipartFile multipartFile) throws IOException
	{
		Path path = Paths.get(uploadDir);
		if (!Files.exists(path))
		{
			Files.createDirectories(path);
		}
		try(InputStream inputStream = multipartFile.getInputStream())
		{
			Path filepPath = path.resolve(fileName);
			Files.copy(inputStream, filepPath,StandardCopyOption.REPLACE_EXISTING);
		} catch (Exception e) {
			throw new IOException("Count not save image file" +fileName);
		}
	}
}
