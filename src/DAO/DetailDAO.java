package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

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
	private ArrayList<String> columnName;
	
	
	public ArrayList<String> getColumnName() {
		return columnName;
	}
	public void setColumnName(ArrayList<String> columnName) {
		this.columnName = columnName;
	}
	
	public DetailDAO(){
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//여행코스 디테일
	public String getDetailCourseInfo(String sql, String tourSiteContentID, String contentTypeID){
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailCourseInfoBean course = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(2,Integer.parseInt(tourSiteContentID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
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
	public String getDetailCultureInfo(String sql, String tourSiteContentID, String contentTypeID){
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailCultureInfoBean culture = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(2,Integer.parseInt(tourSiteContentID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				culture = new DetailCultureInfoBean();
				culture.setDetailCultureInfoAcconCountCulture(rs.getString("DetailCultureInfoAccomcountculture"));
				culture.setDetailCultureInfoChkBabyCarriageCulture(rs.getString("DetailCultureInfoChkBabyCarriageCulture"));
				culture.setDetailCultureInfoChkCreditCardCulture(rs.getString("DetailCultureInfoChkCreditCardCulture"));
				culture.setDetailCultureInfoChkPetCulture(rs.getString("DetailCultureInfoChkPetCulture"));
				culture.setDetailCultureInfoDiscountInfo(rs.getString("DetailCultureInfoDiscountInfo"));
				culture.setDetailCultureInfoInfoCenterCulture(rs.getString("DetailCultureInfoInfoCenterCulture"));
				culture.setDetailCultureInfoParkingCulture(rs.getString("DetailCultureInfoParkingCulture"));
				culture.setDetailCultureInfoParkingFee(rs.getString("DetailCultureInfoParkingFee"));
				culture.setDetailCultureInfoRestDateCulture(rs.getString("DetailCultureInfoRestDateCulture"));
				culture.setDetailCultureInfoSpendTime(rs.getString("DetailCultureInfoSpendTime"));
				culture.setDetailCultureInfoUseFee(rs.getString("DetailCultureInfoUseFee"));
				culture.setDetailCultureInfoUseTimeCulture(rs.getString("DetailCultureInfoUseTimeCulture"));
				culture.setInfoBean(new InfoBean());
				culture.getInfoBean().setInfoBookTour(rs.getInt("InfoBookTour"));
				culture.getInfoBean().setInfoFirstImage2(rs.getString("InfoFirstImage2"));
				culture.getInfoBean().setInfoHomePage(rs.getString("InfoHomePage"));
				culture.getInfoBean().setInfoOverview(rs.getString("InfoOverview"));
				culture.getInfoBean().setInfoTel(rs.getString("InfoTel"));
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
	public String getDetailEventInfo(String sql, String tourSiteContentID, String contentTypeID){
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailEventInfoBean event = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(2,Integer.parseInt(tourSiteContentID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				event = new DetailEventInfoBean();
				event.setDetailEventInfoAgeLimit(rs.getString("DetailEventInfoAgeLimit"));
				event.setDetailEventInfoBookingPlace(rs.getString("DetailEventInfoBookingPlace"));
				event.setDetailEventInfoDiscountInfoFestival(rs.getString("DetailEventInfoDiscountInfoFestival"));
				event.setDetailEventInfoEventEndDate(rs.getString("DetailEventInfoEventEndDate"));
				event.setDetailEventInfoEventHomepage(rs.getString("DetailEventInfoEventHomepage"));
				event.setDetailEventInfoEventPlace(rs.getString("DetailEventInfoEventPlace"));
				event.setDetailEventInfoEventStartDate(rs.getString("DetailEventInfoEventStartDate"));
				event.setDetailEventInfoPlaceInfo(rs.getString("DetailEventInfoPlaceInfo"));
				event.setDetailEventInfoPlayTime(rs.getString("DetailEventInfoPlayTime"));
				event.setDetailEventInfoProgram(rs.getString("DetailEventInfoProgram"));
				event.setDetailEventInfoSpendTimeFestival(rs.getString("DetailEventInfoSpendTimeFestival"));
				event.setDetailEventInfoSubEvent(rs.getString("DetailEventInfoSubEvent"));
				event.setDetailEventInfoUseTimeFestival(rs.getString("DetailEventInfoUseTimeFestival"));
				event.setInfoBean(new InfoBean());
				event.getInfoBean().setInfoBookTour(rs.getInt("InfoBookTour"));
				event.getInfoBean().setInfoFirstImage2(rs.getString("InfoFirstImage2"));
				event.getInfoBean().setInfoHomePage(rs.getString("InfoHomePage"));
				event.getInfoBean().setInfoOverview(rs.getString("InfoOverview"));
				event.getInfoBean().setInfoTel(rs.getString("InfoTel"));
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
	public String getDetailFoodInfo(String sql, String tourSiteContentID, String contentTypeID){
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailFoodInfoBean food = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(2,Integer.parseInt(tourSiteContentID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				food = new DetailFoodInfoBean();
				food.setDetailFoodInfoChkCreditCardFood(rs.getString("DetailFoodInfoChkCreditCardFood"));
				food.setDetailFoodInfoDescountInfoFood(rs.getString("DetailFoodInfoDescountInfoFood"));
				food.setDetailFoodInfoFirstMenu(rs.getString("DetailFoodInfoFirstMenu"));
				food.setDetailFoodInfoInfoCenterFood(rs.getString("DetailFoodInfoInfoCenterFood"));
				food.setDetailFoodInfoKidsFacility(rs.getString("DetailFoodInfoKidsFacility"));
				food.setDetailFoodInfoOpenTimeFood(rs.getString("DetailFoodInfoOpenTimeFood"));
				food.setDetailFoodInfoPacking(rs.getString("DetailFoodInfoPacking"));
				food.setDetailFoodInfoParkingFood(rs.getString("DetailFoodInfoParkingFood"));
				food.setDetailFoodInfoReservationFood(rs.getString("DetailFoodInfoReservationFood"));
				food.setDetailFoodInfoRestDateFood(rs.getString("DetailFoodInfoRestDateFood"));
				food.setDetailFoodInfoSmoking(rs.getString("DetailFoodInfoSmoking"));
				food.setDetailFoodInfoTreatMenu(rs.getString("DetailFoodInfoTreatMenu"));
				food.setInfoBean(new InfoBean());
				food.getInfoBean().setInfoBookTour(rs.getInt("InfoBookTour"));
				food.getInfoBean().setInfoFirstImage2(rs.getString("InfoFirstImage2"));
				food.getInfoBean().setInfoHomePage(rs.getString("InfoHomePage"));
				food.getInfoBean().setInfoOverview(rs.getString("InfoOverview"));
				food.getInfoBean().setInfoTel(rs.getString("InfoTel"));
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
	public String getDetailLeportsInfo(String sql, String tourSiteContentID, String contentTypeID){
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailLeportsInfoBean leports = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(2,Integer.parseInt(tourSiteContentID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				leports = new DetailLeportsInfoBean();
				leports.setDetailLeportsInfoAccomCountLeports(rs.getString("DetailLeportsInfoAccomCountLeports"));
				leports.setDetailLeportsInfoChkBabyCarriageLeports(rs.getString("DetailLeportsInfoChkBabyCarriageLeports"));
				leports.setDetailLeportsInfoChkCreditCardLeports(rs.getString("DetailLeportsInfoChkCreditCardLeports"));
				leports.setDetailLeportsInfoChkPetLeports(rs.getString("DetailLeportsInfoChkPetLeports"));
				leports.setDetailLeportsInfoExpAgeRangeLeports(rs.getString("DetailLeportsInfoExpAgeRangeLeports"));
				leports.setDetailLeportsInfoInfoCenterLeports(rs.getString("DetailLeportsInfoInfoCenterLeports"));
				leports.setDetailLeportsInfoOpenPeriod(rs.getString("DetailLeportsInfoOpenPeriod"));
				leports.setDetailLeportsInfoParkingFeeLeports(rs.getString("DetailLeportsInfoParkingFeeLeports"));
				leports.setDetailLeportsInfoParkingLeports(rs.getString("DetailLeportsInfoParkingLeports"));
				leports.setDetailLeportsInfoReservation(rs.getString("DetailLeportsInfoReservation"));
				leports.setDetailLeportsInfoRestDateLeports(rs.getString("DetailLeportsInfoRestDateLeports"));
				leports.setDetailLeportsInfoUseFeeLeports(rs.getString("DetailLeportsInfoUseFeeLeports"));
				leports.setDetailLeportsInfoUseTimeLeports(rs.getString("DetailLeportsInfoUseTimeLeports"));
				leports.setInfoBean(new InfoBean());
				leports.getInfoBean().setInfoBookTour(rs.getInt("InfoBookTour"));
				leports.getInfoBean().setInfoFirstImage2(rs.getString("InfoFirstImage2"));
				leports.getInfoBean().setInfoHomePage(rs.getString("InfoHomePage"));
				leports.getInfoBean().setInfoOverview(rs.getString("InfoOverview"));
				leports.getInfoBean().setInfoTel(rs.getString("InfoTel"));
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
	public String getDetailShoppingInfo(String sql, String tourSiteContentID, String contentTypeID){
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailShoppingInfoBean shopping = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(2,Integer.parseInt(tourSiteContentID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				shopping = new DetailShoppingInfoBean();
				shopping.setDetailShoppingInfoChkBabyCarriageShopping(rs.getString("DetailShoppingInfoChkBabyCarriageShopping"));
				shopping.setDetailShoppingInfoChkCreditCardShopping(rs.getString("DetailShoppingInfoChkCreditCardShopping"));
				shopping.setDetailShoppingInfoChkPetShopping(rs.getString("DetailShoppingInfoChkPetShopping"));
				shopping.setDetailShoppingInfoFairDay(rs.getString("DetailShoppingInfoFairDay"));
				shopping.setDetailShoppingInfoInfoCenterShopping(rs.getString("DetailShoppingInfoInfoCenterShopping"));
				shopping.setDetailShoppingInfoOpenDateShopping(rs.getString("DetailShoppingInfoOpenDateShopping"));
				shopping.setDetailShoppingInfoOpenTime(rs.getString("DetailShoppingInfoOpenTime"));
				shopping.setDetailShoppingInfoParkingShopping(rs.getString("DetailShoppingInfoParkingShopping"));
				shopping.setDetailShoppingInfoRestDateShopping(rs.getString("DetailShoppingInfoRestDateShopping"));
				shopping.setDetailShoppingInfoRestRoom(rs.getString("DetailShoppingInfoRestRoom"));
				shopping.setDetailShoppingInfoSaleItem(rs.getString("DetailShoppingInfoSaleItem"));
				shopping.setDetailShoppingInfoShopGuide(rs.getString("DetailShoppingInfoShopGuide"));
				shopping.setInfoBean(new InfoBean());
				shopping.getInfoBean().setInfoBookTour(rs.getInt("InfoBookTour"));
				shopping.getInfoBean().setInfoFirstImage2(rs.getString("InfoFirstImage2"));
				shopping.getInfoBean().setInfoHomePage(rs.getString("InfoHomePage"));
				shopping.getInfoBean().setInfoOverview(rs.getString("InfoOverview"));
				shopping.getInfoBean().setInfoTel(rs.getString("InfoTel"));
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
	public String getDetailStayInfo(String sql, String tourSiteContentID, String contentTypeID){
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonStr = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailStayInfoBean stay = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(2,Integer.parseInt(tourSiteContentID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				stay = new DetailStayInfoBean();
				stay.setDetailStayInfoAccomcountlodging(rs.getString("DetailStayInfoAccomcountlodging"));
				stay.setDetailStayInfoBanikia(rs.getString("DetailStayInfoBanikia"));
				stay.setDetailStayInfoBarbecue(rs.getString("DetailStayInfoBarbecue"));
				stay.setDetailStayInfoBeauty(rs.getString("DetailStayInfoBeauty"));
				stay.setDetailStayInfoBicycle(rs.getString("DetailStayInfoBicycle"));
				stay.setDetailStayInfoCampFire(rs.getString("DetailStayInfoCampFire"));
				stay.setDetailStayInfoCheckInTime(rs.getString("DetailStayInfoCheckInTime"));
				stay.setDetailStayInfoCheckOutTime(rs.getString("DetailStayInfoCheckOutTime"));
				stay.setDetailStayInfoChkCooking(rs.getString("DetailStayInfoChkCooking"));
				stay.setDetailStayInfoFitness(rs.getString("DetailStayInfoFitness"));
				stay.setDetailStayInfoFoodPlace(rs.getString("DetailStayInfoFoodPlace"));
				stay.setDetailStayInfoGoodStay(rs.getString("DetailStayInfoGoodStay"));
				stay.setDetailStayInfoHanok(rs.getString("DetailStayInfoHanok"));
				stay.setDetailStayInfoInfoCenterLodging(rs.getString("DetailStayInfoInfoCenterLodging"));
				stay.setDetailStayInfoKaraoke(rs.getString("DetailStayInfoKaraoke"));
				stay.setDetailStayInfoParkingLodging(rs.getString("DetailStayInfoParkingLodging"));
				stay.setDetailStayInfoPickup(rs.getString("DetailStayInfoPickup"));
				stay.setDetailStayInfoPublicBath(rs.getString("DetailStayInfoPublicBath"));
				stay.setDetailStayInfoPublicPC(rs.getString("DetailStayInfoPublicPC"));
				stay.setDetailStayInfoReservationLodging(rs.getString("DetailStayInfoReservationLodging"));
				stay.setDetailStayInfoReservationURL(rs.getString("DetailStayInfoReservationURL"));
				stay.setDetailStayInfoRoomType(rs.getString("DetailStayInfoRoomType"));
				stay.setDetailStayInfoSauna(rs.getString("DetailStayInfoSauna"));
				stay.setDetailStayInfoSeminar(rs.getString("DetailStayInfoSeminar"));
				stay.setDetailStayInfoSports(rs.getString("DetailStayInfoSports"));
				stay.setDetailStayInfoSubFacility(rs.getString("DetailStayInfoSubFacility"));
				stay.setInfoBean(new InfoBean());
				stay.getInfoBean().setInfoBookTour(rs.getInt("InfoBookTour"));
				stay.getInfoBean().setInfoFirstImage2(rs.getString("InfoFirstImage2"));
				stay.getInfoBean().setInfoHomePage(rs.getString("InfoHomePage"));
				stay.getInfoBean().setInfoOverview(rs.getString("InfoOverview"));
				stay.getInfoBean().setInfoTel(rs.getString("InfoTel"));
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
	public String getDetailTourInfo(String sql, String tourSiteContentID, String contentTypeID){
		ObjectMapper mapper = new ObjectMapper();
		String jsonStr = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DetailTourInfoBean tour = null;
		ArrayList<String> image = null;
		
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(2,Integer.parseInt(tourSiteContentID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
			
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
	
	@SuppressWarnings("unchecked")
	public JSONObject getDetailObject(HashMap<String,String> sqlMap, String tourSiteContentID, String contentTypeID){
		JSONObject result = null;
		JSONArray dataArray = null;
		ArrayList<String> colName = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ResultSetMetaData rsmd = null;
		try{
			con = pool.getConnection();
			pstmt = con.prepareStatement(sqlMap.get(contentTypeID));
			pstmt.setInt(1, Integer.parseInt(contentTypeID));
			pstmt.setInt(2, Integer.parseInt(tourSiteContentID));
			rs = pstmt.executeQuery();
			rsmd = rs.getMetaData();
			int size = rsmd.getColumnCount();
			colName = new ArrayList<String>();
			for(int i=0;i<size;i++){
				colName.add(rsmd.getColumnName(i+1));
			}
			setColumnName(colName);
			result = new JSONObject();
			dataArray = new JSONArray();
			while(rs.next()){
				JSONObject data = new JSONObject();
				System.out.println("==========================================");
				for(int i=1;i<size+1;i++){
					System.out.println(i+" : "+rsmd.getColumnName(i));
					data.put(rsmd.getColumnName(i), rs.getString(i));
				}
				System.out.println("==========================================");
				dataArray.add(data);
			}
			result.put("datas", dataArray);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return result;
	}
	
	public static void main(String args[]){
		DetailDAO d = new DetailDAO();
		HashMap<String, String> sqlMap = new HashMap<String, String>();
		sqlMap.put("12", "SELECT * FROM toursite, info, detailtourinfo where toursite.TourSiteContentID = info.TourSiteContentID AND toursite.TourSiteContentID = detailtourinfo.TourSiteContentID AND toursite.ContentTypeID=? AND toursite.TourSiteContentID=?");
		System.out.println("getDetailTourInfo : "+d.getDetailObject(sqlMap, "125266", "12"));
	}
}
