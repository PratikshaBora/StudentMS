package com.tka.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.model.Student;
import com.tka.repository.StudentRepository;

@Service
public class StudentService {
	@Autowired
	StudentRepository repository;
	
	public String addStudent(Student s) {
		repository.save(s);
		return "Success.jsp";
	}
	
	public List<Student> showStudent(){
		List<Student> list = repository.findAll();
		return list;
	}

	public void updateStudent(Student s) {
		
		Optional<Student> oldStudent = repository.findById(s.getId());
		
		if(oldStudent.isPresent()) {
			Student os = oldStudent.get();
			
			os.setName(s.getName());
			os.setMarks(s.getMarks());
			os.setUsername(s.getUsername());
			os.setPassword(s.getPassword());
			
			repository.save(os);
		}
		else {
			throw new RuntimeException("Student not found.");
		}
		 
		
	}

	public Student getStudentById(int id) {
		Optional<Student> oldStudent = repository.findById(id);
		if(oldStudent.isPresent()) {
			Student s = oldStudent.get();
			return s;
		}
		else {
			throw new RuntimeException("Student not found.");
		}
	}

	public void deleteStudent(int id) {
		
		repository.deleteById(id);
		
	}
	
	
}

