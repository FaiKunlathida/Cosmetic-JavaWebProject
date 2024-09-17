package com.example.javawebproject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.javawebproject.model.AllRepositpry;
import com.example.javawebproject.model.Comment;
import com.example.javawebproject.model.CommentRepository;
import com.example.javawebproject.model.Community;
import com.example.javawebproject.model.CommunityRepository;
import com.example.javawebproject.model.LikePost;
import com.example.javawebproject.model.LikeRepository;
import com.example.javawebproject.model.Users;
import com.example.javawebproject.model.UsersRepository;

import jakarta.persistence.EntityManager;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@Controller
public class ControllerUser {
	private EntityManager entityManager;
	@Autowired
	private AllRepositpry repo;
	private Integer update_view  ;
	
	@Autowired
	CommentRepository CommunityRepository;
	
	@Autowired
	UsersRepository repo1;
	
	@Autowired
	CommunityRepository repo2;
	
	@Autowired
	LikeRepository repolike;
	
////////////////------หน้าแรกก่อนเข้าสู่ระบบ-----///////////////////
	@GetMapping("/fpage")
    public String showFirstPage() {
        return "firstpage";
	}
	
////////////////------login-----///////////////////
	@GetMapping("/login")
	public String login() {
		return "/login";
	}

	@PostMapping("/form_login")
	public String form_login(@RequestParam("username") String username, @RequestParam("password") String password, Model model, HttpSession session) {
	    // เรียกใช้ class repository  return ค่าที่ได้ 
	    Users users = repo.findByUsernameAndPassword(username, password);
	    
	    // เช็คว่า users ที่ได้จาก query เป็น null ไหม
	    if(users == null) {
	        model.addAttribute("message", "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง");
	        return "/login";
	    } else {
	        // set session
	        session.setAttribute("users", users);
	        session.setAttribute("id", users.getUser_id());
	        session.setAttribute("username", users.getUsername());
	        session.setAttribute("password", users.getPassword());
	        session.setAttribute("status", users.getStatus());
	        return "redirect:/showAllCommunity"; // ใช้ redirect เพื่อเรียกใช้ showall หลังจากเข้าสู่ระบบสำเร็จ
	    }
	}

	
	
////////////////------register-----///////////////////
	@GetMapping("/register")
	public String register() {
		return "/register";
	}
	
	@GetMapping("/form_register")
	public String form_register(@ModelAttribute Users users,Model model,@RequestParam("username") String username,@RequestParam("password") String password,@RequestParam("password2") String password2) {
	boolean password_validate  ;
		if(password.equals(password2)) {
			password_validate = true ;
		}else {
			password_validate = false ;
			//model.addAttribute("password_validate","password ไม่ตรงกัน" );
		}
		
		Users check_username = repo.findByUsername(username);
		
		
		if(check_username==null & password_validate == true ) {
			repo.save(users);
			return "/login";
	
		}else if (check_username==null & password_validate == false ) {
			String[ ] message = {"ชื่อผู้ใช้นี้สามารถใช้ได้",username,"green", "รหัสผ่านไม่ตรงกัน","red"};
			model.addAttribute("message",message);
			return "/register";
			
		}else if (check_username!=null & password_validate == true ) {
			String[ ] message = {"มีชื่อผู้ใช้นี้แล้ว",username,"red", "รหัสผ่านตรงกัน","green"};
			model.addAttribute("message",message);
			return "/register";
			
		}else if (check_username!=null & password_validate == false ) {
			String[ ] message = {"มีชื่อผู้ใช้นี้แล้ว",username,"red","รหัสผ่านไม่ตรงกัน","red"};
			model.addAttribute("message",message);
			return "/register";
		}else {
			return "/error";
		}
		
	}
////////////////------Profile-----///////////////////
	@GetMapping("/profile")
	public String showUserProfile(Model m, HttpSession session) {
		Integer id = (Integer) session.getAttribute("id");
		List<Community> stringList = new ArrayList<>(); 
	    List<Community> communitylist = repo2.getCommunityAll();
	    List<LikePost> likelist = repolike.qq();
	    
	    for (LikePost likep : likelist) {
	    	System.out.println(likep.getPost_lid());
	        if(likep.getUser_lid()==id) {
	        	System.out.println(likep.getPost_lid()); 
	        	for (Community community : communitylist) {
	        		if(community.getCid()==likep.getPost_lid()) {
	        			stringList.add(community);
	        		}
	        	}
	        }
	    }
	    
	    
	    m.addAttribute("communitylist", stringList);
	    return "user_profile";
	}

	
	
	@PostMapping("/updateprofile") 
	public String updateProfile(@RequestParam("id") Integer id, @RequestParam("username") String username, @RequestParam("password") String password, Model model, HttpSession session) {
	    // ใช้ไอดีที่รับมาจากฟอร์มเพื่อค้นหาข้อมูลผู้ใช้
	    Users foundUser = repo1.findById(id);
	    
	    // ตรวจสอบว่าพบข้อมูลผู้ใช้หรือไม่
	    if (foundUser != null) {
	        // ทำการอัปเดตข้อมูลตามต้องการ
	        foundUser.setUsername(username);
	        
	        // บันทึกการเปลี่ยนแปลง
	        repo1.insert(foundUser);
	        
	        // อัปเดต session ด้วยข้อมูลผู้ใช้ที่อัปเดต
	        session.setAttribute("users", foundUser);
	        session.setAttribute("id", foundUser.getUser_id());
	        session.setAttribute("username", foundUser.getUsername());
	        session.setAttribute("password", foundUser.getPassword());
	        session.setAttribute("status", foundUser.getStatus());
	        
	        System.out.println("Update!! Success");
	        return "user_profile"; // ใช้ redirect เพื่อเรียกใช้หน้า user_profile หลังจากอัปเดตข้อมูลสำเร็จ
	    } else {
	        // หากไม่พบข้อมูลผู้ใช้ สามารถจัดการได้ตามลำดับการทำงานของคุณ
	        return "/error"; // หรือส่งไปยังหน้า error ตามต้องการ
	    }
	}


	
	
	
	
    
}

