package cn.mdl.mapper;

import cn.mdl.pojo.Student;
import cn.mdl.pojo.StudentExample;
import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer sno);

    int insert(Student record);

    int insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(Integer sno);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}