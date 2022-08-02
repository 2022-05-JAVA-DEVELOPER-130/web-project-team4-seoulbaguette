package com.itwill.bakery.service;

import java.util.List;

import com.itwill.bakery.dao.UserDao;
import com.itwill.bakery.vo.Address;
import com.itwill.bakery.vo.User;



public class UserService {
	private UserDao userDao;
	
	public UserService() throws Exception{
		
		userDao= new UserDao();
		
	}
	
	//회원가입
	
	public int createUser(User user) throws Exception{
		
		if(userDao.existedUser(user.getUser_id())) {
			return -1;
			}else {
				int rowCount = userDao.createUser(user);
				return rowCount;
			}
		
	
	}
	
	
	
	
	
	//로그인 
	
	
	public int login(String userId,String password) throws Exception {
		int result=-1;
		//1.아이디 존재여부
		User user = userDao.checkId(userId);
		if(user==null) {
			//아이디없음
			result=0;
		}else {
			//아이디존재
			if(user.isMatchPassword(password)) {
				//로그인성공
				result=2;
			}else {
				//비밀번호틀림
				result=1;
			}
		}
		
		return result;
	}
	
	//주소추가
	public int createAddress(Address address) throws Exception{
		return userDao.createAddress(address);
	}
		
	//회원정보보기
	public User selectUser(String userId) throws Exception{
		return userDao.selectUser(userId);
	}

	//회원 주소보기
	public List<Address> selectAddress(User user) throws Exception{
		return userDao.selectAddress(user);
	}
	
	//모든회원전체정보
	public List<User> selectAllUser() throws Exception{
		List<User> userList = userDao.selectAllUser();
		return userList;
	}
	
	
	//회원정보수정
	public int updateUser(User user)throws Exception{
		return userDao.updateUser(user);
	}
	//회원 포인트 수정
	public int updatePoint(User user) throws Exception{
		return userDao.updatePoint(user);
	}
	
	//주소한개 삭제
	public int deleteAddress(Address address)throws Exception{
		return userDao.deleteAddress(address);
	}
	//회원탈퇴
	public int deleteUser(User user) throws Exception{
		return userDao.deleteUser(user);
	}
	
	
	
		
	//아이디중복체크

	public boolean isDuplicateId(String userId) throws Exception {
		boolean isExist = userDao.existedUser(userId);
		if (isExist) {
			return true;
		} else {
			return false;
		}
	}
		
		
		
		
	
	
	
	
	}

