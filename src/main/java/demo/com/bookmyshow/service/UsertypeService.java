package demo.com.bookmyshow.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.com.bookmyshow.repo.Customer2Repo;
import demo.com.bookmyshow.repo.UsertypeRepo;


@Service
public class UsertypeService {
	@Autowired
	Customer2Repo customerRepo;
	
	@Autowired
	UsertypeRepo usrRepo;
	
	public String getType(String name, String pswd) {
		 
		String type=usrRepo.getByIdAndPassword(name,pswd);
		System.out.println(type);
		return  type;
	}

}