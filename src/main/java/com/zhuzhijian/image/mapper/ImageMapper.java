package com.zhuzhijian.image.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhuzhijian.image.entity.Category;
import com.zhuzhijian.image.entity.Image;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ImageMapper {
    //查找所有图片
    @Select("select id,name,url,category_id from image ")
    List<Image> findAll ();
    //根据分类查找图片
    @Select("select id,name,url,category_id from image where category_id=#{categoryId} ")
    List<Image> find (int categoryId);
    //根据id查找图片
    @Select("select id,name,url,category_id from image where id=#{id} ")
    Image findOne (int id);
    //添加图片
    @Insert("insert into image(url,name,category_id) values (#{url},#{name},#{categoryId})")
    boolean addImage(Image image);
    //根据id修改图片
    @Update("update image set name=#{name},url=#{url},category_id=#{categoryId} where id=#{id}")
    boolean updateImage(Image image);
    //根据id修改图片名称
    @Update("update image set name=#{name} where id=#{id}")
    boolean updateName(Image image);
    //删除图片
    @Delete("delete from image where id=#{id}")
    boolean deleteImageById(int id);
    //查询所有分类
    @Select("select id,name from category")
    List<Category> findCategory();
}
