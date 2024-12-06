package com.tka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.model.Student;
import com.tka.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	StudentService service;
	
	@GetMapping("/welcome")
	public String welcome() {
		return "Welcome.jsp";
	}
	
	@GetMapping("/addStudent")
	public String addStudent(@ModelAttribute Student s,Model m) {
		m.addAttribute("student", s);
		m.addAttribute("academy","The Kiran Academy");
		return service.addStudent(s);
	}
	
	@GetMapping("/studentsRecord")
	public String allStudentData(Model m) {
		m.addAttribute("studentList", service.showStudent());
		return "StudentData.jsp";
	}
	
	@GetMapping("/updateStudentForm")
    public String updateStudentForm(@RequestParam("id") int id, Model m) {
        // Fetch the existing student details and pass it to the update form
        Student existingStudent = service.getStudentById(id);
        m.addAttribute("student", existingStudent);
        return "UpdateStudent.jsp"; // Create a new JSP page for the update form
    }

    @PostMapping("/updateStudent")
    public String updateStudent(@ModelAttribute Student updatedStudent, Model m) {
        service.updateStudent(updatedStudent);
        m.addAttribute("studentList", service.showStudent());
        return "redirect:/studentsRecord"; // Redirect back to the student list
    }

    @GetMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("id") int id, Model m) {
        service.deleteStudent(id);
        m.addAttribute("studentList", service.showStudent());
        return "redirect:/studentsRecord"; // Redirect back to the student list
    }

}
