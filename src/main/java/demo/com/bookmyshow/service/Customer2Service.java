package demo.com.bookmyshow.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.com.bookmyshow.entity.Customer2;
import demo.com.bookmyshow.repo.Customer2Repo;
import demo.com.bookmyshow.repo.UsertypeRepo;



@Service
public class Customer2Service {

	@Autowired
	Customer2Repo customerRepo;
	
	@Autowired
	UsertypeRepo usrRepo;
	

	
	public void register(Customer2 customer) {
		customerRepo.save(customer);
	}


	public List<Customer2> getAll() {
		 List<Customer2> list=customerRepo.findAll();
		return list;
	}

	public Customer2 updateCustomer(int id) {
		List<Customer2> list=customerRepo.findAll();
		Customer2 c1=new Customer2();
		for(Customer2 c:list)
		{
			if(c.getCustomerId()==id)
			{
				c1.setCustomerId(id);
				c1.setfname(c.getfname());
				c1.setlname(c.getlname());
				c1.setEmail(c.getEmail());
				c1.setMobileNo(c.getMobileNo());
				c1.setDob(c.getDob());
			}
		}
		return c1;
	}

	public void changePwd(String npass, String loginid) {
		usrRepo.changePassword(npass, loginid);
	}
	public Customer2 getCustomer(String loginid) {
		Customer2 customer=customerRepo.getCustomerByLoginId(loginid);	
			return customer;
		
	}
	public void chaangePass(String npass, String loginid) {
		usrRepo.changePassword(npass,loginid);
	}
	public void updateCust(String id,Customer2 customer) {
		 customerRepo.deleteById(Integer.parseInt(id));
		customerRepo.save(customer);
 
			//customerRepo.updateById(customer.getfName(),customer.getlName(),customer.getEmail(),customer.getMobileNo(),customer.getDob(),customer.getCustomerId());
		 
	}

	public void deleteCustomer(int id) {
		customerRepo.deleteById(id);

	}


}
