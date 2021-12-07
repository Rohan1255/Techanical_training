package com.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.Admin;

public interface AdminRepo extends JpaRepository<Admin,Integer>{
	Admin findByAdminIdAndPassword(int adminId,String password);
}
