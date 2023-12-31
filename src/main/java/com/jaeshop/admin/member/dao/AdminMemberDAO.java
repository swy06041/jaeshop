package com.jaeshop.admin.member.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.jaeshop.member.vo.MemberVO;

public interface AdminMemberDAO {
	public ArrayList<MemberVO> listMember(HashMap condMap) throws DataAccessException;

	public MemberVO memberDetail(String member_id) throws DataAccessException;

	public void modifyMemberInfo(HashMap memberMap) throws DataAccessException;

}
