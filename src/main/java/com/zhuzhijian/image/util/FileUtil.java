package com.zhuzhijian.image.util;

import com.zhuzhijian.image.entity.Image;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class FileUtil {
    public static Image fileUpload(MultipartFile file, HttpServletRequest request)throws IOException {
        String fileName = UUID.randomUUID().toString();
        String showName = file.getOriginalFilename();
        String sufix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        fileName = fileName +sufix;
        String path = request.getServletContext().getRealPath("");
        //当前项目根目录
        File root = new File(path);
        //在根目录下创建文件夹存放图片
        File upload = new File(root, "upload");
        System.out.println(path);
        System.out.println(upload);
        //如果不存在，创建文件夹
        if (!upload.exists()) {
            upload.mkdirs();
        }
        File serverFile = new File(upload+"/"+fileName);
        file.transferTo(serverFile);
        Image image = new Image();
        image.setName(showName);
        image.setUrl("upload"+"/"+fileName);
        return image;
    }
}
