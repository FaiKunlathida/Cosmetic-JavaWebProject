package com.example.javawebproject.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.example.javawebproject.model.Comment;
import com.example.javawebproject.model.CommentRepository;
import com.example.javawebproject.model.Community;
import com.example.javawebproject.model.CommunityRepository;
import com.example.javawebproject.model.LikePost;
import com.example.javawebproject.model.LikeRepository;

import jakarta.servlet.http.HttpSession;



@Controller
public class CommunityController {
	
	@Autowired
	CommunityRepository repo;
	
	@Autowired
	CommentRepository repo1;
	
	@Autowired
	LikeRepository repo2;
	
	@GetMapping("/showAllCommunity")
	public String showall(Model m) {
		List<Community> communitylist = repo.getCommunityAll();
		m.addAttribute("communitylist", communitylist);
		
		return "community";
	}

	
	
	@RequestMapping("/new")
    public String showNewPage() {
        return "new"; 
    }
	
    @GetMapping("/addNew")
    public String addCommunity(@ModelAttribute Community community) {
        
        return "new";
    }
    
    @GetMapping("/communityMekup")
    public String communityMekup(@ModelAttribute Community community) {
        
        return "communityMekup";
    }
    

    
    @PostMapping("/addTopic")
    public String addTopic(@RequestParam("tiltle") String tiltle,
                           @RequestParam("type") String type,
                           @RequestParam("image") String image,
                           @RequestParam("detail") String detail) {
        Community community = new Community();
        community.setTiltle(tiltle);
        community.setType(type);
        community.setImage(image);
        community.setDetail(detail);
        community.setDate(new Date());
        community.setTime(new java.sql.Time(System.currentTimeMillis()));
        repo.insert(community);
       
        return "redirect:/showAllCommunity"; // ส่งกลับไปยังหน้าที่แสดงกระทู้ทั้งหมด
    }

//    @GetMapping("/detail/{cid}")
//    public String getCommunityDetail(@PathVariable Integer cid, Model model) {
//        Community community = repo.findById(cid);
//        model.addAttribute("community", community);
//        return "datail";
//    }
    
    @GetMapping("/detail/{cid}")
    public String getCommunityDetail(@PathVariable Integer cid, Model model, Model model1) {
        Community community = repo.findById(cid);
        model.addAttribute("community", community);
        
        List<Comment> comList = repo1.qq();
		ArrayList<Comment> list = new ArrayList<Comment>();
		for(Comment com : comList) {
			if(com.getFid_commu()== community.getCid()) {
				list.add(com);
			}else {
				
			}
			
			
		}
		model1.addAttribute("comlist", list);

        return "datail";
    }
    
    
    
    @PostMapping("/postlove")
	public String update(@RequestParam("id") Integer id,@RequestParam("uid") Integer uid, @RequestParam("love") int likeCount, Model model, HttpSession session) {
    	Community foundComment = repo.findById(id);
    	LikePost com = new LikePost();
    	com.setPost_lid(id);
		com.setUser_lid(uid);
    	
	    foundComment.setLove(likeCount+1);
	    repo.insert(foundComment);
	    
	    
//	    
	    
		
	    repo2.insert(com);
	    System.out.println("Update!! Success");
	    return "redirect:/detail/"+id ;
	}
    
    

	
	

}
