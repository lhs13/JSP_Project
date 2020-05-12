package com.work.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import oracle.net.aso.r;

public class WorkDAO {
	//DB설정
	private static WorkDAO instance = new WorkDAO();
	public static WorkDAO getInstance() {
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx =(Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jsp");
		return ds.getConnection();
	}
	
	
	//join
	public void Join(WorkDTO dto) {
		Connection con = null;
		PreparedStatement ps = null;
		String sub = "";
		String aa[] = dto.getSubject();
		for(int i=0; i<aa.length; i++) {
			sub += aa[i]+", ";
		}
		try {
			con=getConnection();
			String sql = "insert into work values(?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getBirth());
			ps.setString(5, dto.getGender());
			ps.setString(6, sub);
			ps.setString(7, dto.getCode());
			ps.executeUpdate();	
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeCon(con,ps);
		}
	}
	
	//id체크
	public String idCheck(String idck) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		String flag = "yes";
		try {
			con = getConnection();
			String sql = "select * from work where id='"+idck+"'";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				flag="no";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeCon(con, st, rs);
		}
		return flag;
	}
	
	//login
	public WorkDTO login(String id, String pwd) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		WorkDTO dto = null; //회원아님
		try {
			con = getConnection();
			String sql = "select * from work where id='"+id+"'";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				dto = new WorkDTO();
				if(rs.getString("pwd").equals(pwd)) { //비번맞음
					dto.setCode(rs.getString("code"));
					dto.setId(rs.getString("id"));
					dto.setName(rs.getString("name"));
					dto.setBirth(rs.getString("birth"));
					String bb = rs.getString("subject");
				}else { //비번틀림
					dto.setCode("2");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeCon(con, st, rs);
		}
		
		return dto;
	}
	
	//mypage
	public void mypageUpdate(WorkDTO dto,String uid) {
		Connection con = null;
		PreparedStatement ps = null;		
		String sub = "";
		
		String aa[] = dto.getSubject();
		for(int i=0; i<aa.length; i++) {
			sub += aa[i]+", ";
		}
		
		try {
			con = getConnection();
			String sql = "update work set name=?, pwd=?, birth=?, gender=?, subject=? where id=?";
			System.out.println(dto.getId());
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getBirth());
			ps.setString(4, dto.getGender());
			ps.setString(5, sub);
			ps.setString(6, uid);
			ps.executeUpdate();			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeCon(con, ps);
		}
	}
	
	//페이지네이션
	
	public ArrayList<HomeWorkDTO> workList(String field, String word, int startRow, int endRow) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<HomeWorkDTO> arr = new ArrayList<HomeWorkDTO>();
		String sql = "";
		try {
			con = getConnection();
			if(word.equals("")) {
				sql = "select * from"
						+" (select rownum rn, aa.* from"
						+" (select * from homework order by num desc)aa)"
						+" where rn>="+startRow+" and rn<="+endRow;
			}else {
				sql = "select * from"
						+" (select rownum rn, aa.*from"
						+" (select * from homework"
						+" where "+field+" like '%"+word+"%' order by num desc)aa)"
						+" where rn>="+startRow+" and rn<="+endRow;
			}
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				HomeWorkDTO hdto = new HomeWorkDTO();
				hdto.setNum(rs.getInt("num"));
				hdto.setContent (rs.getString("content"));
				hdto.setTitle(rs.getString("title"));
				hdto.setId(rs.getString("id"));
				hdto.setDay(rs.getString("day"));
				hdto.setHomework(rs.getString("homework"));
				arr.add(hdto);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeCon(con, st, rs);
		}
		return arr;
	}
	
	
	public int workCount(String field, String word) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		int count = 0;
		String sql = "";
		
		try {
			con = getConnection();
			if(word.equals("")) {
				sql = "select count(*) from homework";
			} else {
				sql = "select count(*) from homework where "+field+" like '%"+word+"%'";
			}
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeCon(con, st, rs);
		}
		return count;
	}
	
	//숙제등록
	public void homeworkInsert(HomeWorkDTO hdto) {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = getConnection();
			String sql = "insert into homework values(homework_seq.nextval,sysdate,?,?,?,?)";
			ps = getConnection().prepareStatement(sql);
			ps.setString(1, hdto.getHomework());
			ps.setString(2, hdto.getContent());
			ps.setString(3, hdto.getTitle());
			ps.setString(4, hdto.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeCon(con,ps);
		}
		
	}
	
	//숙제 수정
	public void homeworkUpdate(HomeWorkDTO hdto) {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = getConnection();
			String sql = "update homework set title=?,content=?,homework=? where num=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, hdto.getTitle());
			ps.setString(2, hdto.getContent());
			ps.setString(3, hdto.getHomework());
			ps.setInt(4, hdto.getNum());
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeCon(con, ps);
		}
	}
	
	//숙제 상세보기
	public HomeWorkDTO workDetail(int num) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		HomeWorkDTO hdto = null;
		
		try {
			con = getConnection();
			String sql = "select * from homework where num="+num;
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				hdto = new HomeWorkDTO();
				hdto.setNum(rs.getInt("num"));
				hdto.setContent(rs.getString("content"));
				hdto.setHomework(rs.getString("homework"));
				hdto.setTitle(rs.getString("title"));
				hdto.setId(rs.getString("id"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeCon(con, st, rs);
		}
		return hdto;
	}
	
	//숙제 리스트
	public ArrayList<HomeWorkDTO> homeworkList() {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<HomeWorkDTO> harr = new ArrayList<HomeWorkDTO>();
		try {
			con = getConnection();
			String sql = "select * from homework";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				HomeWorkDTO hd = new HomeWorkDTO();
				hd.setContent(rs.getString("content"));
				hd.setHomework(rs.getString("homework"));
				hd.setNum(rs.getInt("num"));
				hd.setTitle(rs.getString("title"));
				harr.add(hd);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeCon(con, st, rs);
		}
		return harr;
	}
	
	//숙제 삭제
	public void homeworkDel(int num) {
		Connection con = null;
		Statement st = null;
		
		try {
			con = getConnection();
			String sql = "delete from homework where num="+num;
			st=con.createStatement();
			st.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeCon(con, st);
		}
	}
	
	
	
	
	
	
	private void closeCon(Connection con, Statement st, ResultSet rs) {
		try {
			if(con!=null) con.close();
			if(st!=null) st.close();
			if(rs!=null) rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private void closeCon(Connection con, PreparedStatement ps) {
		try {
			if(con!=null) con.close();
			if(ps!=null) ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void closeCon(Connection con, Statement st) {
		try {
			if(con!=null) con.close();
			if(st!=null) st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
