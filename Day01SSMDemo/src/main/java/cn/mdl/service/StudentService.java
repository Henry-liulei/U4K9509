package cn.mdl.service;

import cn.mdl.pojo.Student;
import com.github.pagehelper.PageInfo;

import java.text.ParseException;
import java.util.List;

public interface StudentService {
    List<Student> findStudentList();

   PageInfo<Student> selectAllStudent(Integer pageNum,Integer pageSize) throws ParseException;
}
