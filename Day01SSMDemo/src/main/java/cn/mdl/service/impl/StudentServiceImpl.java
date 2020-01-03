package cn.mdl.service.impl;

import cn.mdl.mapper.StudentMapper;
import cn.mdl.pojo.Student;
import cn.mdl.pojo.StudentExample;
import cn.mdl.service.StudentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> findStudentList() {
        StudentExample studentExample = new StudentExample();
        return studentMapper.selectByExample(studentExample);
    }

    @Override
    public PageInfo<Student> selectAllStudent(Integer pageNum, Integer pageSize) throws ParseException {
        PageHelper.startPage(pageNum,pageSize);
        List<Student> studentList = studentMapper.selectByExample(new StudentExample());
        PageInfo<Student> pageInfo=new PageInfo<>(studentList);
        return pageInfo;
    }
}

