package board;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DBConn.DBConnectionMgr;

public class BoardMgr {

	private DBConnectionMgr pool;/*
	private static final String  SAVEFOLDER = "C:/Jsp/myapp/WebContent/ch14/fileupload";*/
	private static final String  SAVEFOLDER = "http://localhost:8080/testfinal/boardIMG";
	
	
	private static final String ENCTYPE = "UTF-8";
	private static int MAXSIZE = 5*1024*1024;

	public BoardMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//코스리스트
	public Vector<BoardBean> getTourCourse(int memberID) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<BoardBean> courseList = new Vector<BoardBean>();
		try {
			con = pool.getConnection();
			sql = "SELECT * FROM TOURCOURSE WHERE MemberID = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, memberID);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardBean bean = new BoardBean();
				
				bean.setMemberID(rs.getInt("memberID"));
				bean.setTourCourseID(rs.getInt("tourCourseID"));
				bean.setTourCourseDate(rs.getString("tourCourseDate"));
				bean.setTourCourseSequence(rs.getInt("tourCourseSequence"));
				bean.setTourSiteContentID(rs.getInt("tourSiteContentID"));
				bean.setTourCourseGroup(rs.getInt("TourCourseGroup"));
				
				courseList.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return courseList;
	}
	
	//장바구니 group max
	public int getMAXGroup(int memberID) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int MaxCount = 0;
		try {
			con = pool.getConnection();
			sql="select max(CartGroup) from COURSECART where MemberID=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, memberID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				MaxCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return MaxCount;
	}
	//장바구니리스트
		public Vector<BoardBean> getCartCourse(int memberID,int MaxGroup) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			
			Vector<BoardBean> cartList = new Vector<BoardBean>();
			try {
				con = pool.getConnection();
				
				/*
				
				sql="select max(CartGroup) from COURSECART";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					num=rs.getInt(1);
					System.out.println(num);
					}*/
					
					
				sql="select tour.TourSiteContentID,tour.TourSiteTitle,course.TourCourseID,cart.MemberID, cart.CartGroup "; 
				sql+="from TOURSITE tour,TOURCOURSE course, COURSECART cart "; 
				sql+="where tour.TourSiteContentID=course.TourSiteContentID and cart.MemberID=? and cart.TourCourseID=course.TourCourseID and cart.CartGroup=?";
				
				
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, memberID);
				pstmt.setInt(2, MaxGroup);
				
				rs = pstmt.executeQuery();
				while (rs.next()) {
					BoardBean bean = new BoardBean();
					bean.setTourSiteContentID(rs.getInt("tourSiteContentID"));
					bean.setTourSiteTitle(rs.getString("tourSiteTitle"));
					bean.setTourCourseID(rs.getInt("TourCourseID"));
					bean.setMemberID(rs.getInt("MemberID"));
					bean.setTourCourseGroup(rs.getInt("CartGroup"));
					
					cartList.add(bean);
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return cartList;
		}
		
	
	// 게시판 리스트
	public Vector<BoardBean> getBoardList(String keyField, String keyWord,
			int start, int end) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<BoardBean> vlist = new Vector<BoardBean>();
		try {
			con = pool.getConnection();
			if (keyWord.equals("null") || keyWord.equals("")) {
				sql = "select * from MESSAGE order by MessagePostDate desc limit ?, ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
			} 
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardBean bean = new BoardBean();
				bean.setMessageID(rs.getInt("MessageID"));
				bean.setMessageTitle(rs.getString("MessageTitle"));
				bean.setMessageContent(rs.getString("MessageContent"));
				bean.setMessagePostDate(rs.getString("MessagePostDate"));
				bean.setMessageClick(rs.getInt("MessageClick"));
				bean.setMessageGoodCount(rs.getInt("MessageGoodCount"));
				bean.setMessagePoorCount(rs.getInt("MessagePoorCount"));
				bean.setMemberEmail(rs.getString("MemberEmail"));
				
				vlist.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//총 게시물수
	public int getTotalCount(String keyField, String keyWord) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int totalCount = 0;
		try {
			con = pool.getConnection();
			if (keyWord.equals("null") || keyWord.equals("")) {
				sql = "select count(MessageID) from MESSAGE";
				pstmt = con.prepareStatement(sql);
			} else {
				sql = "select count(MessageID) from  MESSAGE where " + keyField + " like ? ";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + keyWord + "%");
			}
			rs = pstmt.executeQuery();
			if (rs.next()) {
				totalCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return totalCount;
	}
	
	// 게시물 입력
	public void insertBoard(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MultipartRequest multi = null;
		int filesize = 0;
		String filename = null;
		try {
			con = pool.getConnection();
			sql = "select max(MessageID)  from MESSAGE";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int ref = 1;
			if (rs.next())
				ref = rs.getInt(1) + 1;
			File file = new File(SAVEFOLDER);
			System.out.println(file.getAbsolutePath());
			if (!file.exists())
				file.mkdirs();
			multi = new MultipartRequest(req, SAVEFOLDER,MAXSIZE, ENCTYPE,
					new DefaultFileRenamePolicy());

			if (multi.getFilesystemName("filename") != null) {
				filename = multi.getFilesystemName("filename");
				filesize = (int) multi.getFile("filename").length();
			}
			String content = multi.getParameter("MessageContent");
		/*	if (multi.getParameter("contentType").equalsIgnoreCase("TEXT")) {
				content = UtilMgr.replace(content, "<", "&lt;");
			}*/
			sql = "insert MESSAGE(MessageTitle,MessageContent,MessagePostDate,MessageSiteGrade,MemberEmail,MemberID,TourCourseGroup)";
			sql += "values(?, ?, now(), ?, ?, ?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, multi.getParameter("MessageTitle"));
			pstmt.setString(2, content);
			pstmt.setInt(3, Integer.parseInt(multi.getParameter("MessageSiteGrade")));
			pstmt.setString(4, multi.getParameter("MemberEmail"));
			pstmt.setInt(5,Integer.parseInt(multi.getParameter("MemberID")));
			pstmt.setInt(6,Integer.parseInt(multi.getParameter("memberGroup")));
			pstmt.executeUpdate();
			
			
			sql="insert MESSAGEPICTURE (MessagePictureURL,MessageID)";
			sql+="values(?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString
			
			
			
			
			
			sql="insert PREFER(messageID) values(?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,ref);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}
	
	
	// 게시물 리턴
		public BoardBean getBoard(int num) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			BoardBean bean = new BoardBean();
			try {
				con = pool.getConnection();
				sql = "select * from MESSAGE where MessageID=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					bean.setMessageID(rs.getInt("MessageID"));
					bean.setMemberEmail(rs.getString("memberEmail"));
					bean.setMessageTitle(rs.getString("messageTitle"));
					bean.setMessageContent(rs.getString("messageContent"));
					bean.setMessagePostDate(rs.getString("messagePostDate"));
					bean.setMessagePoorCount(rs.getInt("messagePoorCount"));
					bean.setMessageGoodCount(rs.getInt("messageGoodCount"));
					bean.setMessageClick(rs.getInt("messageClick"));
					bean.setMessageSiteGrade(rs.getInt("messageSiteGrade"));
					bean.setMemberID(rs.getInt("memberID"));
					bean.setTourCourseGroup(rs.getInt("TourCourseGroup"));
					/*bean.setFilename(SAVEFOLDER+"/"+rs.getString("filename"));
					System.out.println(SAVEFOLDER+"/"+rs.getString("filename"));
					bean.setFilesize(rs.getInt("filesize"));
					bean.setIp(rs.getString("ip"));
					*/
				}
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return bean;
		}

		//코스리턴 리스트(boardDetail용)
		public Vector<BoardBean> getMemberCourse(int memberID,int TourCourseGroup) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			Vector<BoardBean> memberCourseList = new Vector<BoardBean>();
			try {
				con = pool.getConnection();
				sql = "select TOURSITE.TourSiteTitle,TOURCOURSE.TourCourseID,TOURCOURSE.TourCourseSequence,TOURSITE.TourSiteFirstImage  from TOURSITE,TOURCOURSE where TOURSITE.TourSiteContentID=TOURCOURSE.TourSiteContentID and TOURCOURSE.MemberID=? and TOURCOURSE.TourCourseGroup=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, memberID);
				pstmt.setInt(2, TourCourseGroup);
				
				rs = pstmt.executeQuery();
				while (rs.next()) {
					BoardBean bean = new BoardBean();
					
					bean.setTourSiteTitle(rs.getString("tourSiteTitle"));
					bean.setTourCourseID(rs.getInt("tourCourseID"));
					bean.setTourCourseSequence(rs.getInt("tourCourseSequence"));
					bean.setTourSiteFirstImage(rs.getString("TourSiteFirstImage"));
					memberCourseList.add(bean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return memberCourseList;
		}
		
		
		// 조회수 증가
		public void upreadCount(int num) {
			Connection con = null;
			PreparedStatement pstmt = null;
			String sql = null;
			try {
				con = pool.getConnection();
				sql = "update MESSAGE set MessageClick=MessageClick+1 where MessageID=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt);
			}
		}
		
		//좋아요 증가
		public void upGoodCount(int num, int memberID) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			MultipartRequest multi = null;
			try {
				con = pool.getConnection();
				sql = "update MESSAGE set MessageGoodCount=MessageGoodCount+1 where MessageID=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
			
				
				sql="select checkGood from PREFER where MessageID=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs= pstmt.executeQuery();
				
				int checkVal=5;
				if (rs.next())
					checkVal = rs.getInt(1);
				
				System.out.println(checkVal);
				if(checkVal==0||checkVal==2){
					sql="update PREFER set checkGood=1,MemberID=? where MessageID=? ";
					pstmt = con.prepareStatement(sql);
					
					pstmt.setInt(1, memberID);
					pstmt.setInt(2, num);
					pstmt.executeUpdate();
					
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt,rs);
			}
		}
		
		//싫어요 증가
		public void upPoorCount(int num,int memberID) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			try {
				con = pool.getConnection();
				sql = "update MESSAGE set MessagePoorCount=MessagePoorCount+1 where MessageID=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
				sql="select checkGood from PREFER where MessageID=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs= pstmt.executeQuery();
				
				int checkVal=5;
				if (rs.next())
					checkVal = rs.getInt(1);
				
				System.out.println(checkVal);
				if(checkVal==0||checkVal==1){
					sql="update PREFER set checkGood=2,MemberID=? where MessageID=? ";
					pstmt = con.prepareStatement(sql);
					
					pstmt.setInt(1, memberID);
					pstmt.setInt(2, num);
					pstmt.executeUpdate();
					
				}
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt,rs);
			}
		}
		
		
		public int insertCart(String[] courseID,int memberID,int CartGroup){
			Connection con = null;
			PreparedStatement pstmt = null;
			String sql = "INSERT INTO COURSECART(TourCourseID,MemberID,CartGroup) VALUES(?,?,?)";
			int result = 0;
			try{
				con = pool.getConnection();
			
				for(int i=0;i<courseID.length;i++){
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, Integer.parseInt(courseID[i]));
					pstmt.setInt(2,memberID );
					pstmt.setInt(3,CartGroup);
					
					
					if(pstmt.execute())
					{result=1;
					
					}
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				pool.freeConnection(con, pstmt);
			}
			
			return result;
		
		}
		//카운트 체크
		
	/*
		public void checkPrefer(int num) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			try {
				con = pool.getConnection();
				
				sql="select checkGood where MessageID=?";
				pstmt = con.prepareStatement(sql);
				rs= pstmt.executeQuery();
				
				int checkVal=0;
				
				if(rs.getInt(1)==0)
				
				sql = "update prefer set checkGood=1 where MessageID=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt);
			}
		}
		
		*/
	/*댓글입력*/
		public void insertComment(HttpServletRequest req) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			MultipartRequest multi = null;
			int filesize = 0;
			String filename = null;
			try {
				con = pool.getConnection();
				sql = "select max(ReplyID)  from REPLY";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				int ref = 1;
				if (rs.next())
					ref = rs.getInt(1) + 1;
			
				
				/*sql="select MemberID from member";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				int MemberID = rs.getInt(1);*/
				
				multi = new MultipartRequest(req, SAVEFOLDER,MAXSIZE, ENCTYPE,
						new DefaultFileRenamePolicy());

				
				String content = multi.getParameter("content");
				int MessageID = Integer.parseInt(multi.getParameter("num"));
				int MemberID=Integer.parseInt(multi.getParameter("MemberID"));
				
				/*`ReplyID` int(15) NOT NULL AUTO_INCREMENT,
	  `ReplyContent` text,
	  `ReplyPostDate` date DEFAULT NULL,
	  `MemberID` int(10) DEFAULT NULL,
	  `MessageID` int(10) DEFAULT NULL,*/
				sql = "insert REPLY(ReplyContent,MessageID,ReplyPostDate,MemberID)";
				sql += "values(?,?,now(),?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1,content);
				pstmt.setInt(2,MessageID);
				pstmt.setInt(3,MemberID);
				
			/*	pstmt.setInt(2,MemberID);*/
				
				
				
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
		}
		
		// 코멘트 리스트
		public Vector<BoardBean> getCommentList(int num) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			Vector<BoardBean> commentList = new Vector<BoardBean>();
			try {
				con = pool.getConnection();
				sql = "SELECT m.MemberName,r.ReplyContent,r.ReplyPostDate,r.MessageID FROM MEMBER m, REPLY r WHERE m.MemberID = r.MemberID AND r.MessageID = ? order by ReplyPostDate asc";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					BoardBean bean = new BoardBean();
					
					bean.setMessageID(rs.getInt("messageID"));
					bean.setMemberName(rs.getString("memberName"));
					bean.setReplyContent(rs.getString("ReplyContent"));
					bean.setReplyPostDate(rs.getString("ReplyPostDate"));
				
					
					commentList.add(bean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return commentList;
		}
		
		// 댓글 리턴
				public BoardBean getComment(int num) {
					Connection con = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					String sql = null;
					BoardBean bean = new BoardBean();
					
					try {
						con = pool.getConnection();
						sql = "select * from REPLY where MessageID=?";
						pstmt = con.prepareStatement(sql);
						pstmt.setInt(1, num);
						rs = pstmt.executeQuery();
						if (rs.next()) {
							
							bean.setReplyContent(rs.getString("ReplyContent"));
							bean.setReplyPostDate(rs.getString("ReplyPostDate"));
							
						}
						
						sql = "select count(MessageID) from REPLY where MessageID=?";
						pstmt = con.prepareStatement(sql);
						pstmt.setInt(1, num);
						rs = pstmt.executeQuery();
						if (rs.next()) {
							
							bean.setCommentCount(rs.getInt(1));
							
							/*bean.setFilename(SAVEFOLDER+"/"+rs.getString("filename"));
							System.out.println(SAVEFOLDER+"/"+rs.getString("filename"));
							bean.setFilesize(rs.getInt("filesize"));
							bean.setIp(rs.getString("ip"));
							*/
						}
						
						
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						pool.freeConnection(con, pstmt, rs);
					}
					return bean;
				}
		
		
		
		
		
	/*public void insertPicture(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MultipartRequest multi = null;
		int filesize = 0;
		String filename = null;
		try {
			
			
			CREATE TABLE `messagepicture` (
					  `MessagePictureID` int(18) NOT NULL AUTO_INCREMENT,
					  `MessagePictureURL` text,
					  `MessageID` int(10) DEFAULT NULL,
					  PRIMARY KEY (`MessagePictureID`),
					  KEY `fk_messagepicture_message` (`MessageID`),
					  CONSTRAINT `fk_messagepicture_message` FOREIGN KEY (`MessageID`) REFERENCES `message` (`MessageID`) ON DELETE NO ACTION ON UPDATE NO ACTION
					) ENGINE=InnoDB DEFAULT CHARSET=utf8;
		
			
			con = pool.getConnection();
			sql = "select max(MessagePictureID)  from messagepicture";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int ref = 1;
			if (rs.next())
				ref = rs.getInt(1) + 1;
			File file = new File(SAVEFOLDER);
			if (!file.exists())
				file.mkdirs();
			multi = new MultipartRequest(req, SAVEFOLDER,MAXSIZE, ENCTYPE,
					new DefaultFileRenamePolicy());

			if (multi.getFilesystemName("filename") != null) {
				filename = multi.getFilesystemName("filename");
				filesize = (int) multi.getFile("filename").length();
			}
			String URL = multi.getParameter("imageURL");
			if (multi.getParameter("contentType").equalsIgnoreCase("TEXT")) {
				content = UtilMgr.replace(content, "<", "&lt;");
			}
			sql = "insert messagepicture(MessagePictureURL)";
			sql += "values(?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, multi.getParameter("imageURL"));
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}
	
	
	
	public void insertComment(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MultipartRequest multi = null;
		int filesize = 0;
		String filename = null;
		try {
			con = pool.getConnection();
			sql = "select max(ReplyID)  from reply";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int ref = 1;
			if (rs.next())
				ref = rs.getInt(1) + 1;
		
			multi = new MultipartRequest(req, SAVEFOLDER,MAXSIZE, ENCTYPE,
					new DefaultFileRenamePolicy());

			
			String content = multi.getParameter("content");
			String MessageID = multi.getParameter("num");
			
			`ReplyID` int(15) NOT NULL AUTO_INCREMENT,
  `ReplyContent` text,
  `ReplyPostDate` date DEFAULT NULL,
  `MemberID` int(10) DEFAULT NULL,
  `MessageID` int(10) DEFAULT NULL,
			sql = "insert reply(ReplyContent,MessageID)";
			sql += "values(?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,content);
			pstmt.setString(2,"MessageID");
			
			
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}
	
	
	
	
	
	

	
	// 게시물 삭제
	public void deleteBoard(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		ResultSet rs = null;
		try {
			con = pool.getConnection();
			sql = "select filename from tblboard where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next() && rs.getString(1) != null) {
				if (!rs.getString(1).equals("")) {
					File file = new File(SAVEFOLDER + "/" + rs.getString(1));
					if (file.exists())
						UtilMgr.delete(SAVEFOLDER + "/" + rs.getString(1));
				}
			}

			sql = "delete from tblboard where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}

	// 게시물 수정
	public void updateBoard(BoardBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "update tblboard set name=?,subject=?,content=? where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getSubject());
			pstmt.setString(3, bean.getContent());
			pstmt.setInt(4, bean.getNum());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}

	// 게시물 답변
	public void replyBoard(BoardBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "insert tblboard (name,content,subject,ref,pos,depth,regdate,pass,count,ip)";
			sql += "values(?,?,?,?,?,?,now(),?,0,?)";
			int depth = bean.getDepth() + 1;
			int pos = bean.getPos() + 1;
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getContent());
			pstmt.setString(3, bean.getSubject());
			pstmt.setInt(4, bean.getRef());
			pstmt.setInt(5, pos);
			pstmt.setInt(6, depth);
			pstmt.setString(7, bean.getPass());
			pstmt.setString(8, bean.getIp());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}

	// 답변에 위치값 증가
	public void replyUpBoard(int ref, int pos) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "update tblboard set pos = pos + 1 where ref=? and pos > ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, pos);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}

	//파일 다운로드
		public void downLoad(HttpServletRequest req, HttpServletResponse res,
				JspWriter out,PageContext pageContext) {
			try {
				//요청객체인 req에서 다운로드 파일명을 문자열로 리턴 받는다.
				String filename = req.getParameter("filename");
				//저장된 경로와 다운로드 파일명을 합쳐서 File 객체를 생성한다. 
				File file = new File(UtilMgr.con(SAVEFOLDER + File.separator+ filename));
				//파일의 용량 크기 만큼 byte 배열을 선언한다. 
				byte b[] = new byte[(int) file.length()];
				//응답 객체 res 헤더필드에 Accept-Ranges에 bytes 단위로 설정한다.
				res.setHeader("Accept-Ranges", "bytes");
				//요청객체인 req에서 클라이언트의 User-Agent 정보를 리턴 받는다.
				String strClient = req.getHeader("User-Agent");
				//브라우저의 버전과 정보를 구분해서 각각 res 헤더필드와 contentType을 설정한다.
				if (strClient.indexOf("MSIE6.0") != -1) {
					res.setContentType("application/smnet;charset=euc-kr");
					res.setHeader("Content-Disposition", "filename=" + filename + ";");
				} else {
					res.setContentType("application/smnet;charset=euc-kr");
					res.setHeader("Content-Disposition", "attachment;filename="+ filename + ";");
				}
				out.clear();
				out=pageContext.pushBody();
				//파일 존재 여부에 따라 스트링 방식으로 브라우저로 파일을 전송한다.
				if (file.isFile()) {
					BufferedInputStream fin = new BufferedInputStream(
							new FileInputStream(file));
					BufferedOutputStream outs = new BufferedOutputStream(
							res.getOutputStream());
					int read = 0;
					while ((read = fin.read(b)) != -1) {
						outs.write(b, 0, read);
					}
					outs.close();
					fin.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
	//페이징 및 블럭 테스트를 위한 게시물 저장 메소드 
	public void post1000(){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "insert tblboard(name,content,subject,ref,pos,depth,regdate,pass,count,ip,filename,filesize)";
			sql+="values('aaa', 'bbb', 'ccc', 0, 0, 0, now(), '1111',0, '127.0.0.1', null, 0);";
			pstmt = con.prepareStatement(sql);
			for (int i = 0; i < 1000; i++) {
				pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}*/
	
	//main
	public static void main(String[] args) {
		/*new BoardMgr().post1000();*/
		System.out.println("SUCCESS");
	}
}
