package demo.com.bookmyshow.controller1;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.com.bookmyshow.service.Customer2Service;
import demo.com.bookmyshow.service.MovieService;
import demo.com.bookmyshow.service.UsertypeService;


@Controller
@RequestMapping("/login")

public class Usertypecontroller {

@Autowired
UsertypeService usrService;

@Autowired 
MovieService movieService;
@Autowired
private Customer2Service customerser;



static String loginid = null;
static String password = null;

@RequestMapping("/")
public String getMessage() {
	return "index";
}

@RequestMapping("/login")
public String getResult(@RequestParam("user") String name, @RequestParam("pwd") String pswd, Model model,HttpSession session) {
loginid = name;
password = pswd;
		

String type = usrService.getType(name, pswd);
if (type != null) {
if (type.equals("admin")) {
return "admin";
}
else if (type.equals("customer")) {
	 
	session.setAttribute("loginid", name); 
	 session.setAttribute("password",
	  pswd);
	session.setAttribute("cname", customerser.getCustomer(loginid).getfname());
		model.addAttribute("movie1", movieService.getMovie());
		session.setAttribute("c_id",customerser.getCustomer(loginid).getCustomerId());
 		return "customer";	

	

}
}
else {
model.addAttribute("msg", "Invalid Credentials!!!");
}

return "login";
}

}