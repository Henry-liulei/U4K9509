package cn.mdl.controller;

import cn.mdl.pojo.Student;
import cn.mdl.service.StudentService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;


    @RequestMapping("/show")
    public String show(Model model){
        List<Student> studentList = studentService.findStudentList();
        model.addAttribute("studentList",studentList);
        return "StudentMain";
    }

    @RequestMapping("/showStudent")
    @ResponseBody
    public  Map<String,Object>  showStudent(Integer page,Integer rows) throws ParseException {
        PageInfo<Student> pageInfo = studentService.selectAllStudent(page, rows);
        Map<String,Object> map=new HashMap<>();
        map.put("total",pageInfo.getTotal());
        map.put("rows",pageInfo.getList());
        return map;
    }

}
