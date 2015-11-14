package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import Bean.DetailCourseInfoBean;
import Bean.DetailCultureInfoBean;
import Bean.DetailEventInfoBean;
import Bean.DetailFoodInfoBean;
import Bean.DetailLeportsInfoBean;
import Bean.DetailShoppingInfoBean;
import Bean.DetailStayInfoBean;
import Bean.DetailTourInfoBean;
import Bean.ImageBean;
import Bean.InfoBean;
import DBConn.DBConnectionMgr;

public class DetailDAO {
	
	private DBConnectionMgr pool;
	
	public DetailDAO(){
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//여행코스 디테일
	public String getDetailCourseInfo(){
		ObjectMapper mapper = new ObjectMapper();
		
		String sql = "SELECT * FROM toursite, info, detailcourseinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailcourseinfo.TourSiteContentID AND toursite.ContentTypeID=25 AND toursite.TourSiteContentID=1846248";
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailCourseInfoBean course = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				course = new DetailCourseInfoBean();
				course.setDetailCourseInfoDistance(rs.getString("DetailCourseInfoDistance"));
				course.setDetailCourseInfoInfoCenterOurCourse(rs.getString("DetailCourseInfoInfoCenterOurCourse"));
				course.setDetailCourseInfoSchedule(rs.getString("DetailCourseInfoSchedule"));
				course.setDetailCourseInfoTakeTime(rs.getString("DetailCourseInfoTakeTime"));
				course.setDetailCourseInfoTheme(rs.getString("DetailCourseInfoTheme"));
				course.setInfoBean(new InfoBean());
				course.getInfoBean().setInfoBookTour(rs.getInt("InfoBookTour"));
				course.getInfoBean().setInfoFirstImage2(rs.getString("InfoFirstImage2"));
				course.getInfoBean().setInfoHomePage(rs.getString("InfoHomePage"));
				course.getInfoBean().setInfoOverview(rs.getString("InfoOverview"));
				course.getInfoBean().setInfoTel(rs.getString("InfoTel"));
			}
			jsonStr = mapper.writeValueAsString(course);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return jsonStr;
	}
	
	//문화시설 디테일
	public String getDetailCultureInfo(){
		ObjectMapper mapper = new ObjectMapper();
		
		String sql = "";
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailCultureInfoBean culture = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				culture = new DetailCultureInfoBean();
				
			}
			
			jsonStr = mapper.writeValueAsString(culture);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return jsonStr;
	}
	
	
	//축제공연행사 디테일
	public String getDetailEventInfo(){
		ObjectMapper mapper = new ObjectMapper();
		
		String sql = "";
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailEventInfoBean event = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				event = new DetailEventInfoBean();
				
			}
			
			jsonStr = mapper.writeValueAsString(event);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return jsonStr;
	}
	
	
	//식당 디테일
	public String getDetailFoodInfo(){
		ObjectMapper mapper = new ObjectMapper();
		
		String sql = "";
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailFoodInfoBean food = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				food = new DetailFoodInfoBean();
				
			}
			
			jsonStr = mapper.writeValueAsString(food);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return jsonStr;
	}
	
	
	//레포츠 디테일
	public String getDetailLeportsInfo(){
		ObjectMapper mapper = new ObjectMapper();
		
		String sql = "";
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailLeportsInfoBean leports = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				leports = new DetailLeportsInfoBean();
				
			}
			
			jsonStr = mapper.writeValueAsString(leports);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return jsonStr;
	}
	
	
	//쇼핑 디테일
	public String getDetailShoppingInfo(){
		ObjectMapper mapper = new ObjectMapper();
		
		String sql = "";
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailShoppingInfoBean shopping = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				shopping = new DetailShoppingInfoBean();
				
			}
			
			jsonStr = mapper.writeValueAsString(shopping);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return jsonStr;
	}
	
	
	//숙박 디테일
	public String getDetailStayInfo(){
		ObjectMapper mapper = new ObjectMapper();
		
		String sql = "";
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailStayInfoBean stay = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				stay = new DetailStayInfoBean();
				
			}
			
			jsonStr = mapper.writeValueAsString(stay);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return jsonStr;
	}
	
	
	//관광지 디테일
	public String getDetailTourInfo(){
		ObjectMapper mapper = new ObjectMapper();
		
		String sql = "";
		String jsonStr = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailTourInfoBean tour = null;
		ArrayList<String> image = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			image = new ArrayList<String>();
			while(rs.next()){
				
				image.add(rs.getString("ImageOriginImgUrl"));
				System.out.println(image.get(rs.getRow()-1));
				
				if(rs.isLast()){
					tour = new DetailTourInfoBean();
					tour.setDetailTourInfoAccomcount(rs.getString("DetailTourInfoAccomcount"));
					tour.setDetailTourInfoInfoCenter(rs.getString("DetailTourInfoInfoCenter"));
					tour.setDetailTourInfoChkBabyCarriage(rs.getString("DetailTourInfoChkBabyCarriage"));
					tour.setDetailTourInfoChkCreditCard(rs.getString("DetailTourInfoChkCreditCard"));
					tour.setDetailTourInfoExpAgeRange(rs.getString("DetailTourInfoExpAgeRange"));
					tour.setDetailTourInfoExpGuide(rs.getString("DetailTourInfoExpGuide"));
					tour.setDetailTourInfoHeritage1(rs.getString("DetailTourInfoHeritage1"));
					tour.setDetailTourInfoOpenDate(rs.getString("DetailTourInfoOpenDate"));
					tour.setDetailTourInfoParking(rs.getString("DetailTourInfoParking"));
					tour.setDetailTourInfoRestDate(rs.getString("DetailTourInfoRestDate"));
					tour.setDetailTourInfoUseSeason(rs.getString("DetailTourInfoUseSeason"));
					tour.setDetailTourInfoUseTime(rs.getString("DetailTourInfoUseTime"));
					tour.setInfoBean(new InfoBean());
					tour.getInfoBean().setInfoBookTour(rs.getInt("InfoBookTour"));
					tour.getInfoBean().setInfoFirstImage2(rs.getString("InfoFirstImage2"));
					tour.getInfoBean().setInfoHomePage(rs.getString("InfoHomePage"));
					tour.getInfoBean().setInfoOverview(rs.getString("InfoOverview"));
					tour.getInfoBean().setInfoTel(rs.getString("InfoTel"));
					tour.setImageBean(new ImageBean());
					tour.getImageBean().setImageOriginImgUrl(image);
				}
			}
			jsonStr = mapper.writeValueAsString(tour);
		}catch(Exception e){
			e.printStackTrace();
		}
		return jsonStr;		
	}
	
	public static void main(String args[]){
		DetailDAO d = new DetailDAO();
		//System.out.println(d.getDetailCourseInfo());
		System.out.println(d.getDetailTourInfo());
	}
}
