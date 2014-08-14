package com.user.file;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class FileUpLoad {
CommonsMultipartFile file;
String name;

public MultipartFile getFile() {
	return file;
}

public void setFile(CommonsMultipartFile file) {
	this.file = file;
}


public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public FileUpLoad() {
	super();
	// TODO Auto-generated constructor stub
}

}
