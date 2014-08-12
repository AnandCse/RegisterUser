package com.user.file;

import org.springframework.web.multipart.MultipartFile;

public class FileUpLoad {
MultipartFile file;

public MultipartFile getFile() {
	return file;
}

public void setFile(MultipartFile file) {
	this.file = file;
}

public FileUpLoad() {
	super();
	// TODO Auto-generated constructor stub
}

}
