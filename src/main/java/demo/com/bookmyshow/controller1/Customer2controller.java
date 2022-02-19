package demo.com.bookmyshow.controller1;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import demo.com.bookmyshow.entity.Customer2;
import demo.com.bookmyshow.entity.Usertype;
import demo.com.bookmyshow.service.Customer2Service;
import demo.com.bookmyshow.service.MovieService;


@Controller
@RequestMapping("/customer")
public class Customer2controller {
	
	@Autowired
	Customer2Service cservice;
	
	@Autowired 
	MovieService movieService;
	
	 String loginid=null;
	 String password=null;
	 
	@RequestMapping(value="/signup1", method = RequestMethod.GET)
	public String signup() {
		return "signup";
	}
	@RequestMapping(value="/customer", method = RequestMethod.GET)
	public String custhomre() {
		return "customerhome";
	}
	@RequestMapping(value="/login1", method = RequestMethod.GET)
	public String signeup() {
		return "index";
	}
	
	@RequestMapping(value="/custhome", method = RequestMethod.GET)
	public String signseup() {
		return "customer";
	}
	@RequestMapping(value="/changepass", method = RequestMethod.GET)
	public String signseupf() {
		return "chnagepswd";
	}
	
	
	@RequestMapping(value = "/changepass1", method = RequestMethod.POST)
	public String changePassword(@RequestParam("oldpass") String oldPwd, @RequestParam("newpass") String newPwd,
	@RequestParam("conpass") String confirmPwd, Model model,HttpSession session) {
		
	loginid=(String) session.getAttribute("loginid");
	password=(String) session.getAttribute("password");

	if (password.equals(oldPwd)) {
	if (newPwd.equals(confirmPwd)) {
	cservice.changePwd(newPwd, loginid);
	System.out.println("Password Updated Successfully");
	model.addAttribute("msg", "Password Updated Successfully");
	return "chnagepswd";
	} else {
	System.out.println("new password & confirm password are different");
	model.addAttribute("msg", "new password & confirm password are different");
	return "chnagepswd";
	}
	} 
	else {
	System.out.println("my pass " + password);
	model.addAttribute("msg", "Please enter the correct old password");
	return "chnagepswd";
	}
	}
	
	@RequestMapping(value="/create", method = RequestMethod.POST)
	public String createCustomer(@RequestParam("fname")String fname,
			@RequestParam("lname")String lname,
			@RequestParam("email")String email,
			@RequestParam("mobile")String mobile,
			@RequestParam("dob")String dob,
			@RequestParam("id")String loginid,
			@RequestParam("pwd")String pwd,
			@RequestParam("usertype")String usertype,
			Model model,HttpSession session)
	{
		 Customer2 customer=new Customer2();
		 customer.setfname(fname);
		 
		 
		 customer.setlname(lname);
		 customer.setEmail(email);
		 customer.setMobileNo(mobile);
		 customer.setDob(dob);
		 Usertype login=new Usertype();
		 login.setLoginid(loginid);
		 login.setPassword(pwd);
		 login.setUsertype(usertype);
		 customer.setLogin(login);
		 cservice.register(customer);
		 session.setAttribute("name",usertype);
		return "login";
		
	}

	@GetMapping("/update")
	public String openUpdate(Model model)
	{
		loginid=Usertypecontroller.loginid;
		password=Usertypecontroller.password;
		System.out.println(loginid);
		Customer2 customer=cservice.getCustomer(loginid);
		System.out.println(customer);
		model.addAttribute("update", customer);
		return "customerupdate";	
	}
	@GetMapping("/update1")
	public String custUpdate(@RequestParam("id")String id,Model model)
	{
		Customer2 cust=cservice.updateCustomer(Integer.parseInt(id));
	System.out.println(cust);
		model.addAttribute("update", cust);
		return "customerupdateform";
	}
	
	@RequestMapping(value="/custupdate", method = RequestMethod.POST)
	public String updateCustomer(@RequestParam("id")String id,
			@RequestParam("fname")String fname,
			@RequestParam("lname")String lname,
			@RequestParam("email")String email,
			@RequestParam("mobile")String mobile,
			@RequestParam("dob")String dob,
			Model model)
	{
		 Customer2 customer=new Customer2();
		 
		 customer.setfname(fname);
		 customer.setlname(lname);
		 customer.setEmail(email);
		 customer.setMobileNo(mobile);
		 customer.setDob(dob);
			
			  Usertype login=new Usertype();
			  login.setLoginid(loginid);
			  login.setPassword(password);
			  login.setUsertype("customer");
			  
			  customer.setLogin(login);
			 
		 cservice.updateCust(id,customer);
		 
			loginid=Usertypecontroller.loginid;
			password=Usertypecontroller.password;
			 
			Customer2 customer1=cservice.getCustomer(loginid);
			model.addAttribute("update", customer1);
			return "customerupdate";
		
	}

	@GetMapping("/delete")
	public String hangePass(Model model)
	{Customer2 customer=cservice.getCustomer(loginid);
	model.addAttribute("update", customer);
		return "deletecustomer";
		
	}
	
	
	@PostMapping("/delete2")
	public String custDelete(@RequestParam("id1")String id,Model model)
	{
		cservice.deleteCustomer(Integer.parseInt(id));
		model.addAttribute("msg","one record deleted sucessfully");
		Customer2 customer=cservice.getCustomer(loginid);
		model.addAttribute("update", customer);
		return "deletecustomer";
	}
	
	
	
	
	
	
	

	@RequestMapping(value ="/customer_index",method = RequestMethod.GET)
	public String getDelete(Model model)
	{
	List<Customer2> customer=cservice.getAll();

	model.addAttribute("update",customer);
	return "userdetails";

	}
	
	

	@PostMapping("/delete3")
	public String custDelete2(@RequestParam("id1")String id,Model model)
	{
		cservice.deleteCustomer(Integer.parseInt(id));
	model.addAttribute("msg", "one customer record deleted sucessfully");

	List<Customer2> cust=cservice.getAll();
	model.addAttribute("update", cust);
	return "userdetails";
	}
	
	
	@GetMapping("/deleteCustomer/{id}")
	public String deletemovie(@PathVariable (value = "id") int id) {
		
 		this.cservice.deleteCustomer(id);
		return "redirect:/userdetails";
	}
	
	
	
	
	
	
	@GetMapping("/logout")
	public String logoutmethod(HttpSession session) {
		session.removeAttribute("name");
		session.invalidate();
		return "index";
	}
}