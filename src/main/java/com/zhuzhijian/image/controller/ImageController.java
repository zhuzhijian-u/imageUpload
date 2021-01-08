package com.zhuzhijian.image.controller;


import com.zhuzhijian.image.dto.ImageDto;
import com.zhuzhijian.image.entity.Category;
import com.zhuzhijian.image.entity.Image;
import com.zhuzhijian.image.service.FileUploadService;
import com.zhuzhijian.image.service.ImageService;
import com.zhuzhijian.image.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/image")
@Controller
@CrossOrigin
public class ImageController {
    @Autowired
    private ImageService imageService;
    @Autowired
    private FileUploadService fileUploadService;
    //查找所有图片
    @ResponseBody
    @RequestMapping("/findall")
    public ImageDto findAllImage(){

        ImageDto imageDto = new ImageDto();
        List<Image> images = imageService.findAll();
        if (images!=null){
            imageDto.setData(images);
            imageDto.setStatus(200);
            imageDto.setMassage("查找成功");
            return imageDto;
        }
        imageDto.setStatus(500);
        imageDto.setMassage("系统繁忙");
        return imageDto;
    }
    //根据分类id查找图片
    @ResponseBody
    @RequestMapping("/findbycategoryid")
    public ImageDto findByCategoryId(int id){
        ImageDto imageDto = new ImageDto();
        List<Image> images = imageService.find(id);

        if (images!=null){
            imageDto.setData(images);
            imageDto.setStatus(200);
            imageDto.setMassage("查找成功");
            return imageDto;
        }
        imageDto.setStatus(500);
        imageDto.setMassage("系统繁忙");
        return imageDto;
    }
    //根据图片id查找单个图片
    @ResponseBody
    @RequestMapping("/findone")
    public ImageDto findOne(int id ){

        ImageDto imageDto = new ImageDto();
       Image image = imageService.findOne(id);

        if (image!=null){
            imageDto.setData(image);
            imageDto.setStatus(200);
            imageDto.setMassage("查找成功");
            return imageDto;
        }
        imageDto.setStatus(500);
        imageDto.setMassage("系统繁忙");
        return imageDto;
    }

    //修改图片
    @ResponseBody
    @PostMapping("/update")
    public ImageDto updateImage(@RequestBody @RequestParam("file")MultipartFile file,@RequestBody @RequestParam("categoryId")String categoryId,@RequestBody @RequestParam("id")int id, HttpServletRequest request)throws IOException {
        System.out.println("update");
        int i = Integer.parseInt(categoryId);
        ImageDto imageDto = new ImageDto();
        Image image = FileUtil.fileUpload(file,request);
        image.setId(id);
        image.setCategoryId(i);
        if (imageService.updateImage(image)==1){
            imageDto.setStatus(200);
            imageDto.setMassage("修改成功");
            return imageDto;
        }
        imageDto.setStatus(500);
        imageDto.setMassage("系统繁忙");
        return imageDto;
    }
    //修改图片名称
    @ResponseBody
    @RequestMapping("/updatename")
    public ImageDto updateName(Image image){
        ImageDto imageDto = new ImageDto();
        if (imageService.updateName(image)==1){
            imageDto.setStatus(200);
            imageDto.setMassage("修改成功");
            return imageDto;
        }
        imageDto.setStatus(500);
        imageDto.setMassage("系统繁忙");
        return imageDto;
    }
    //根据图片ID删除图片
    @ResponseBody
    @RequestMapping("/delete")
    public ImageDto deleteImageById(int id){
        ImageDto imageDto = new ImageDto();
        if (imageService.deleteImageById(id)==1){
            imageDto.setStatus(200);
            imageDto.setMassage("删除成功");
            return imageDto;
        }
        imageDto.setStatus(500);
        imageDto.setMassage("系统繁忙");
        return imageDto;
    }
    //查询所有分类
    @RequestMapping("/findCategory")
    @ResponseBody
    public ImageDto findCategory(){
        ImageDto imageDto = new ImageDto();
        List<Category> categorys = imageService.findCategory();
        if (categorys!=null){
            imageDto.setData(categorys);
            imageDto.setStatus(200);
            imageDto.setMassage("查询成功");
            return imageDto;
        }
        imageDto.setStatus(500);
        imageDto.setMassage("系统繁忙");
        return imageDto;
    }
    //添加多张图片
    @PostMapping("/fileUpload")
    public String fileUpload (MultipartFile[] files, HttpServletRequest request)throws IOException {

        Image image = null;
        if (files != null && files.length > 0) {
            for (int i = 0; i < files.length; i++) {
                    image = FileUtil.fileUpload(files[i],request);
                    image.setCategoryId(5);
                    imageService.addImage(image);
            }
        }

        return "redirect:/index.html";
    }


}
