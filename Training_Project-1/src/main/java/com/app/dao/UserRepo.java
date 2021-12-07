package com.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.pojos.User;
@Repository
public interface UserRepo extends JpaRepository<User,Integer>{
	User findByUserIdAndPassword(int userid,String password); 
}
