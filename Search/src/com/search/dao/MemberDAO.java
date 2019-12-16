package com.search.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.search.vo.MemberVO;

import util.DBManager;

public class MemberDAO {
	private MemberDAO () {}
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public int insertMember(MemberVO vo) {
		int result = -1;
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?)";
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = DBManager.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getEmail());
			
			result = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			DBManager.close(con, ps);
		}
		return result;
	}
	public int confirmID(String userid) {
		int result = -1;
		String sql="select * from member where id = ?";
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.getConnection();
			ps=con.prepareStatement(sql);
			ps.setString(1, userid);
			rs=ps.executeQuery();
			
			if(rs.next()) {
				result=1;
			}else {
				result=-1;
			}
		} catch (Exception e) {
			System.out.println("예외발생"+e.getMessage());
		}finally {
			DBManager.close(con, ps,rs);
		}
		return result;
	}
	
	public MemberVO getMember(String id) {
		String sql="select * from member where id =?";
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberVO vo = null;
		try {
			con = DBManager.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				vo = new MemberVO();
				vo.setId(rs.getString("id"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
				vo.setEmail(rs.getString("email"));
			}
		} catch (Exception e) {
			System.out.println("예외 발생 : "+e.getMessage());
		}finally {
			DBManager.close(con, ps, rs);
		}
		return vo;
	}
}
