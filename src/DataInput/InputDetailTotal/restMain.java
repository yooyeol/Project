package DataInput.InputDetailTotal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class restMain {
	public static void main(String[] args) throws Exception {

		String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		String DB_URL = "jdbc:mysql://192.168.25.44:3306/temp";

		String user = "root";
		String pass = "root";
		String sql = "SELECT toursitecontentid, contenttypeid from toursite where TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM DETAILTOURINFO) and TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM DETAILCOURSEINFO) and TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM DETAILCULTUREINFO) and TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM DETAILEVENTINFO) and TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM DETAILFOODINFO) and TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM DETAILLEPORTSINFO) and TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM DETAILSHOPPINGINFO) and TourSiteContentID NOT IN (SELECT DISTINCT TourSiteContentID FROM DETAILSTAYINFO);";
		Connection con = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;

		try {
			Class.forName(JDBC_DRIVER);
			con = DriverManager.getConnection(DB_URL, user, pass);
			System.out.println("드라이버 연결 성공");
			pstmt = con.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			int i = 0;
			int k = 0;
			while (rs.next()) {
				i++;
				if (i % 190 == 0){
					try {
						Thread.sleep(60000);
					} catch (InterruptedException e) {
					}
				}
				try {
					restTest t = new restTest();
					String json = t.restClient(String.valueOf(rs.getInt(1)), String.valueOf(rs.getInt(2)));
					k++;
					System.out.println(i + " -> " + rs.getInt(1) + ", " + rs.getInt(2));
					System.out.println(json);
					JSONParser jsonParser = new JSONParser();
					JSONObject jsonObject = (JSONObject) jsonParser.parse(json);

					System.out.println("==============================================");

					JSONObject info = (JSONObject) jsonObject.get("response");
					JSONObject info_body = (JSONObject) info.get("body");

					if (info_body.get("items").equals("") || (JSONObject) info_body.get("items") == null) {
						continue;
					}

					JSONObject info_body_items = (JSONObject) info_body.get("items");

					JSONObject item = (JSONObject) info_body_items.get("item");

					System.out.println();
					System.out.println("==============================================");
					System.out.println(i + " >>> " + item);
					k++;
					System.out.println("==============================================");

					if (rs.getInt(2) == 12) {
						String sql1 = "INSERT INTO DETAILTOURINFO(TourSiteContentID, DETAILTOURInfoAccomcount, DetailTourInfoChkBabycarriage, DetailTourInfoChkCreditCard, DetailTourInfoChkPet, DetailTourInfoExpAgeRange, DetailTourInfoExpGuide, DetailTourInfoHeritage1, DetailTourInfoInfoCenter, DetailTourInfoOpenDate, DetailTourInfoParking, DetailTourInfoRestDate, DetailTourInfoUseSeason, DetailTourInfoUseTime) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						pstmt1 = con.prepareStatement(sql1);

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("DETAILTOURInfoAccomcount : " + (String) item.get("accomcount")); // accomcount
						if (String.valueOf(item.get("accomcount")) != null) {
							pstmt1.setString(2, String.valueOf(item.get("accomcount")));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("DetailTourInfoChkBabycarriage : " + (String) item.get("chkbabycarriage")); // chkbabycarriage
						if (String.valueOf(item.get("chkbabycarriage")) != null) {
							pstmt1.setString(3, (String) item.get("chkbabycarriage"));
						} else {
							pstmt1.setString(3, "");
						}

						System.out.println("DetailTourInfoChkCreditCard : " + (String) item.get("chkcreditcard")); // chkcreditcard
						if (String.valueOf(item.get("chkcreditcard")) != null) {
							pstmt1.setString(4, (String) item.get("chkcreditcard"));
						} else {
							pstmt1.setString(4, "");
						}

						System.out.println("DetailTourInfoChkPet : " + (String) item.get("chkpet")); // chkpet
						if (String.valueOf(item.get("chkpet")) != null) {
							pstmt1.setString(5, (String) item.get("chkpet"));
						} else {
							pstmt1.setString(5, "");
						}

						System.out.println("DetailTourInfoExpAgeRange : " + (String) item.get("expagerange")); // expagerange
						if (String.valueOf(item.get("expagerange")) != null) {
							pstmt1.setString(6, String.valueOf(item.get("expagerange")));
						} else {
							pstmt1.setString(6, "");
						}

						System.out.println("DetailTourInfoExpGuide : " + (String) item.get("expguide")); // expguide
						if (String.valueOf(item.get("expguide")) != null) {
							pstmt1.setString(7, (String) item.get("expguide"));
						} else {
							pstmt1.setString(7, "");
						}

						System.out.println("DetailTourInfoHeritage1 : " + (Long) item.get("heritage1")); // heritage1
						if (Long.valueOf(String.valueOf(item.get("heritage1"))) != null) {
							pstmt1.setLong(8, Long.valueOf(String.valueOf(item.get("heritage1"))));
						} else {
							pstmt1.setString(8, "");
						}

						System.out.println("DetailTourInfoInfoCenter : " + (String) item.get("infocenter")); // infocenter
						if (String.valueOf(item.get("infocenter")) != null) {
							pstmt1.setString(9, (String) item.get("infocenter"));
						} else {
							pstmt1.setString(9, "");
						}

						System.out.println("DetailTourInfoOpenDate : " + (String) item.get("opendate")); // opendate
						if (String.valueOf(item.get("opendate")) != null) {
							pstmt1.setString(10, (String) item.get("opendate"));
						} else {
							pstmt1.setString(10, "");
						}

						System.out.println("DetailTourInfoParking : " + (String) item.get("parking")); // parking
						if (String.valueOf(item.get("parking")) != null) {
							pstmt1.setString(11, (String) item.get("parking"));
						} else {
							pstmt1.setString(11, "");
						}

						System.out.println("DetailTourInfoRestDate : " + (String) item.get("restdate")); // restdate
						if (String.valueOf(item.get("restdate")) != null) {
							pstmt1.setString(12, (String) item.get("restdate"));
						} else {
							pstmt1.setString(12, "");
						}

						System.out.println("DetailTourInfoUseSeason : " + (String) item.get("useseason")); // useseason
						if (String.valueOf(item.get("useseason")) != null) {
							pstmt1.setString(13, (String) item.get("useseason"));
						} else {
							pstmt1.setString(13, "");
						}

						System.out.println("DetailTourInfoUseTime : " + (String) item.get("usetime")); // usetime
						if (String.valueOf(item.get("usetime")) != null) {
							pstmt1.setString(14, (String) item.get("usetime"));
						} else {
							pstmt1.setString(14, "");
						}
					}
					else if (rs.getInt(2) == 14) {
						String sql1 = "INSERT INTO DETAILCULTUREINFO(TourSiteContentID, DetailCultureInfoAccomcountculture, DetailCultureInfoChkBabyCarriageCulture, DetailCultureInfoChkCreditCardCulture, DetailCultureInfoChkPetCulture, DetailCultureInfoDiscountInfo, DetailCultureInfoInfoCenterCulture, DetailCultureInfoParkingCulture, DetailCultureInfoParkingFee, DetailCultureInfoRestDateCulture, DetailCultureInfoUseFee, DetailCultureInfoUseTimeCulture, DetailCultureInfoSpendTime) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
						pstmt1 = con.prepareStatement(sql1);

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("DetailCultureInfoAccomcountculture : " + (String) item.get("accomcountculture")); // accomcountculture
						if (String.valueOf(item.get("accomcountculture")) != null) {
							pstmt1.setString(2, (String) item.get("accomcountculture"));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("DetailCultureInfoChkBabyCarriageCulture : " + (String) item.get("chkbabycarriageculture")); // chkbabycarriageculture
						if (String.valueOf(item.get("chkbabycarriageculture")) != null) {
							pstmt1.setString(3, (String) item.get("chkbabycarriageculture"));
						} else {
							pstmt1.setString(3, "");
						}

						System.out.println("DetailCultureInfoChkCreditCardCulture : " + (String) item.get("chkcreditcardculture")); // chkcreditcardculture
						if (String.valueOf(item.get("chkcreditcardculture")) != null) {
							pstmt1.setString(4, (String) item.get("chkcreditcardculture"));
						} else {
							pstmt1.setString(4, "");
						}

						System.out.println("DetailCultureInfoChkPetCulture : " + (String) item.get("chkpetculture")); // chkpetculture
						if (String.valueOf(item.get("chkpetculture")) != null) {
							pstmt1.setString(5, (String) item.get("chkpetculture"));
						} else {
							pstmt1.setString(5, "");
						}

						System.out.println("DetailCultureInfoDiscountInfo : " + (String) item.get("discountinfo")); // discountinfo
						if (String.valueOf(item.get("discountinfo")) != null) {
							pstmt1.setString(6, String.valueOf(item.get("discountinfo")));
						} else {
							pstmt1.setString(6, "");
						}

						System.out.println("DetailCultureInfoInfoCenterCulture : " + (String) item.get("infocenterculture")); // expguide
						if (String.valueOf(item.get("infocenterculture")) != null) {
							pstmt1.setString(7, (String) item.get("infocenterculture"));
						} else {
							pstmt1.setString(7, "");
						}

						System.out.println("DetailCultureInfoParkingCulture : " + item.get("parkingculture")); // parkingculture
						if (String.valueOf(item.get("parkingculture")) != null) {
							pstmt1.setString(8, String.valueOf(item.get("parkingculture")));
						} else {
							pstmt1.setString(8, "");
						}

						System.out.println("DetailCultureInfoParkingFee : " + (String) item.get("parkingfee")); // parkingfee
						if (String.valueOf(item.get("parkingfee")) != null) {
							pstmt1.setString(9, (String) item.get("parkingfee"));
						} else {
							pstmt1.setString(9, "");
						}

						System.out.println("DetailCultureInfoRestDateCulture : " + (String) item.get("restdateculture")); // restdateculture
						if (String.valueOf(item.get("restdateculture")) != null) {
							pstmt1.setString(10, (String) item.get("restdateculture"));
						} else {
							pstmt1.setString(10, "");
						}

						System.out.println("DetailCultureInfoUseFee : " + (String) item.get("usefee")); // usefee
						if (String.valueOf(item.get("usefee")) != null) {
							pstmt1.setString(11, (String) item.get("usefee"));
						} else {
							pstmt1.setString(11, "");
						}

						System.out.println("DetailCultureInfoUseTimeCulture : " + (String) item.get("usetimeculture")); // usetimeculture
						if (String.valueOf(item.get("usetimeculture")) != null) {
							pstmt1.setString(12, (String) item.get("usetimeculture"));
						} else {
							pstmt1.setString(12, "");
						}

						System.out.println("DetailCultureInfoSpendTime : " + (String) item.get("spendtime")); // spendtime
						if (String.valueOf(item.get("spendtime")) != null) {
							pstmt1.setString(13, (String) item.get("spendtime"));
						} else {
							pstmt1.setString(13, "");
						}
					}

					else if (rs.getInt(2) == 15) {
						String sql1 = "INSERT INTO DETAILEVENTINFO(TourSiteContentID, DetailEventInfoAgeLimit, DetailEventInfoBookingPlace, DetailEventInfoDiscountInfoFestival, DetailEventInfoEventEndDate, DetailEventInfoEventHomepage, DetailEventInfoEventPlace, DetailEventInfoEventStartDate, DetailEventInfoPlaceInfo, DetailEventInfoPlayTime, DetailEventInfoProgram, DetailEventInfoSpendTimeFestival, DetailEventInfoSubEvent, DetailEventInfoUseTimeFestival) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						pstmt1 = con.prepareStatement(sql1);

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("DetailEventInfoAgeLimit : " + (String) item.get("agelimit")); // agelimit
						if (String.valueOf(item.get("agelimit")) != null) {
							pstmt1.setString(2, (String) item.get("agelimit"));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("DetailEventInfoBookingPlace : " + (String) item.get("bookingplace")); // bookingplace
						if (String.valueOf(item.get("bookingplace")) != null) {
							pstmt1.setString(3, (String) item.get("bookingplace"));
						} else {
							pstmt1.setString(3, "");
						}

						System.out.println("DetailEventInfoDiscountInfoFestival : " + (String) item.get("discountinfofestival")); // discountinfofestival
						if (String.valueOf(item.get("discountinfofestival")) == "") {
							pstmt1.setString(4, "");
						} else if (String.valueOf(item.get("discountinfofestival")) != null) {
							pstmt1.setString(4, (String) item.get("discountinfofestival"));
						} else {
							pstmt1.setString(4, "");
						}

						System.out.println("DetailEventInfoEventEndDate : " + item.get("eventenddate")); // eventenddate
						if (String.valueOf(item.get("eventenddate")) != null) {
							pstmt1.setString(5, String.valueOf(item.get("eventenddate")));
						} else {
							pstmt1.setString(5, "");
						}

						System.out.println("DetailEventInfoEventHomepage : " + (String) item.get("eventhomepage")); // eventhomepage
						if (String.valueOf(item.get("eventhomepage")) != null) {
							pstmt1.setString(6, String.valueOf(item.get("eventhomepage")));
						} else {
							pstmt1.setString(6, "");
						}

						System.out.println("DetailEventInfoEventPlace : " + (String) item.get("eventplace")); // eventplace
						if (String.valueOf(item.get("eventplace")) != null) {
							pstmt1.setString(7, (String) item.get("eventplace"));
						} else {
							pstmt1.setString(7, "");
						}

						System.out.println("DetailEventInfoEventStartDate : " + (Long) item.get("eventstartdate")); // eventstartdate
						if (Long.valueOf(String.valueOf(item.get("eventstartdate"))) != null) {
							pstmt1.setLong(8, Long.valueOf(String.valueOf(item.get("eventstartdate"))));
						} else {
							pstmt1.setString(8, "");
						}

						System.out.println("DetailEventInfoPlaceInfo : " + (String) item.get("placeinfo")); // placeinfo
						if (String.valueOf(item.get("placeinfo")) != null) {
							pstmt1.setString(9, (String) item.get("placeinfo"));
						} else {
							pstmt1.setString(9, "");
						}

						System.out.println("DetailEventInfoPlayTime : " + (String) item.get("playtime")); // playtime
						if (String.valueOf(item.get("playtime")) != null) {
							pstmt1.setString(10, (String) item.get("playtime"));
						} else {
							pstmt1.setString(10, "");
						}

						System.out.println("DetailEventInfoProgram : " + (String) item.get("program")); // program
						if (String.valueOf(item.get("program")) != null) {
							pstmt1.setString(11, (String) item.get("program"));
						} else {
							pstmt1.setString(11, "");
						}

						System.out.println("DetailEventInfoSpendTimeFestival : " + (String) item.get("spendtimefestival")); // spendtimefestival
						if (String.valueOf(item.get("spendtimefestival")) != null) {
							pstmt1.setString(12, (String) item.get("spendtimefestival"));
						} else {
							pstmt1.setString(12, "");
						}

						System.out.println("DetailEventInfoSubEvent : " + (String) item.get("subevent")); // subevent
						if (String.valueOf(item.get("subevent")) != null) {
							pstmt1.setString(13, (String) item.get("subevent"));
						} else {
							pstmt1.setString(13, "");
						}

						System.out.println("DetailEventInfoUseTimeFestival : " + (String) item.get("usetimefestival")); // usetimefestival
						if (String.valueOf(item.get("spendusetimefestivale")) != null) {
							pstmt1.setString(14, (String) item.get("usetimefestival"));
						} else {
							pstmt1.setString(14, "");
						}
					}
					
					else if (rs.getInt(2) == 25) {
						String sql1 = "INSERT INTO DETAILCOURSEINFO(TourSiteContentID, DetailCourseInfoDistance, DetailCourseInfoInfocenterOurCourse, DetailCourseInfoSchedule, DetailCourseInfoTakeTime, DetailCourseInfoTheme) VALUES(?,?,?,?,?,?)";
						pstmt1 = con.prepareStatement(sql1);

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("DetailCourseInfoDistance : " + (String) item.get("distance")); // distance
						if (String.valueOf(item.get("distance")) != null) {
							pstmt1.setString(2, (String) item.get("distance"));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("DetailCourseInfoInfocenterOurCourse : " + (String) item.get("infocentertourcourse")); // infocentertourcourse
						if (String.valueOf(item.get("infocentertourcourse")) != null) {
							pstmt1.setString(3, (String) item.get("infocentertourcourse"));
						} else {
							pstmt1.setString(3, "");
						}

						System.out.println("DetailCourseInfoSchedule : " + (String) item.get("schedule")); // schedule
						if (String.valueOf(item.get("schedule")) != null) {
							pstmt1.setString(4, (String) item.get("schedule"));
						} else {
							pstmt1.setString(4, "");
						}

						System.out.println("DetailCourseInfoTakeTime : " + (String) item.get("taketime")); // taketime
						if (String.valueOf(item.get("taketime")) != null) {
							pstmt1.setString(5, (String) item.get("taketime"));
						} else {
							pstmt1.setString(5, "");
						}

						System.out.println("DetailCourseInfoTheme : " + (String) item.get("theme")); // theme
						if (String.valueOf(item.get("theme")) != null) {
							pstmt1.setString(6, String.valueOf(item.get("theme")));
						} else {
							pstmt1.setString(6, "");
						}
					}

					else if (rs.getInt(2) == 28) {
						String sql1 = "INSERT INTO DETAILLEPORTSINFO(TourSiteContentID, DETAILLEPORTSINFOAccomcountleports, DetailLeportsInfoChkBabyCarriageLeports, DetailLeportsInfoChkCreditCardLeports, DetailLeportsInfoChkPetLepotrs, DetailLeportsInfoExpAgeRangeLeports, DetailLeportsInfoInfoCenterLeports, DetailLeportsInfoOpenPeriod, DetailLeportsInfoParkingFeeLeports, DetailLeportsInfoParkingLeports, DetailLeportsInfoReservation, DetailLeportsInfoRestDateLeports, DetailLeportsInfoUseFeeLeports, DetailLeportsInfoUseTimeLeports) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						pstmt1 = con.prepareStatement(sql1);

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("DETAILLEPORTSINFOAccomcountleports : " + (String) item.get("accomcountleports")); // accomcountleports
						if (String.valueOf(item.get("accomcountleports")) != null) {
							pstmt1.setString(2, (String) item.get("accomcountleports"));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("DetailLeportsInfoChkBabyCarriageLeports : " + (String) item.get("chkbabycarriageleports")); // chkbabycarriageleports
						if (String.valueOf(item.get("chkbabycarriageleports")) != null) {
							pstmt1.setString(3, (String) item.get("chkbabycarriageleports"));
						} else {
							pstmt1.setString(3, "");
						}

						System.out.println("DetailLeportsInfoChkCreditCardLeports : " + (String) item.get("chkcreditcardleports")); // chkcreditcardleports
						if (String.valueOf(item.get("chkcreditcardleports")) != null) {
							pstmt1.setString(4, (String) item.get("chkcreditcardleports"));
						} else {
							pstmt1.setString(4, "");
						}

						System.out.println("DetailLeportsInfoChkPetLepotrs : " + (String) item.get("chkpetleports")); // chkpetleports
						if (String.valueOf(item.get("chkpetleports")) != null) {
							pstmt1.setString(5, (String) item.get("chkpetleports"));
						} else {
							pstmt1.setString(5, "");
						}

						System.out.println("DetailLeportsInfoExpAgeRangeLeports : " + (String) item.get("expagerangeleports")); // expagerangeleports
						if (String.valueOf(item.get("expagerangeleports")) != null) {
							pstmt1.setString(6, String.valueOf(item.get("expagerangeleports")));
						} else {
							pstmt1.setString(6, "");
						}

						System.out.println("DetailLeportsInfoInfoCenterLeports : " + (String) item.get("infocenterleports")); // infocenterleports
						if (String.valueOf(item.get("infocenterleports")) != null) {
							pstmt1.setString(7, (String) item.get("infocenterleports"));
						} else {
							pstmt1.setString(7, "");
						}

						System.out.println("DetailLeportsInfoOpenPeriod : " + item.get("openperiod")); // openperiod
						if (String.valueOf(item.get("openperiod")) != null) {
							pstmt1.setString(8, String.valueOf(item.get("openperiod")));
						} else {
							pstmt1.setString(8, "");
						}

						System.out.println("DetailLeportsInfoParkingFeeLeports : " + (String) item.get("parkingfeeleports")); // parkingfeeleports
						if (String.valueOf(item.get("parkingfeeleports")) != null) {
							pstmt1.setString(9, (String) item.get("parkingfeeleports"));
						} else {
							pstmt1.setString(9, "");
						}

						System.out.println("DetailLeportsInfoParkingLeports : " + (String) item.get("parkingleports")); // parkingleports
						if (String.valueOf(item.get("parkingleports")) != null) {
							pstmt1.setString(10, (String) item.get("parkingleports"));
						} else {
							pstmt1.setString(10, "");
						}

						System.out.println("DetailLeportsInfoReservation : " + (String) item.get("reservation")); // reservation
						if (String.valueOf(item.get("reservation")) != null) {
							pstmt1.setString(11, (String) item.get("reservation"));
						} else {
							pstmt1.setString(11, "");
						}

						System.out.println("DetailLeportsInfoRestDateLeports : " + (String) item.get("restdateleports")); // restdateleports
						if (String.valueOf(item.get("restdateleports")) != null) {
							pstmt1.setString(12, (String) item.get("restdateleports"));
						} else {
							pstmt1.setString(12, "");
						}

						System.out.println("DetailLeportsInfoUseFeeLeports : " + (String) item.get("usefeeleports")); // usefeeleports
						if (String.valueOf(item.get("usefeeleports")) != null) {
							pstmt1.setString(13, (String) item.get("usefeeleports"));
						} else {
							pstmt1.setString(13, "");
						}

						System.out.println("DetailLeportsInfoUseTimeLeports : " + (String) item.get("usefeeleports")); // usefeeleports
						if (String.valueOf(item.get("usefeeleports")) != null) {
							pstmt1.setString(14, (String) item.get("usefeeleports"));
						} else {
							pstmt1.setString(14, "");
						}					}

					else if (rs.getInt(2) == 32) {
						String sql1 = "INSERT INTO DETAILCULTUREINFO(TourSiteContentID, DETAILSTAYINFOAccomcountlodging, DetailStayInfoBanikia, DetailStayInfoCheckInTime, DetailStayInfoCheckOutTime, DetailStayInfoChkCooking, DetailStayInfoFoodPlace, DetailStayInfoGoodStay, DetailStayInfoHanok, DetailStayInfoInfoCenterLodging, DetailStayInfoParkingLodging, DetailStayInfoPickup, DetailStayInfoReservationLodging, DetailStayInfoReservationURL, DetailStayInfoRoomType, DetailStayInfoSubFacility, DetailStayInfoBarbecue, DetailStayInfoBeauty, DetailStayInfoBicycle, DetailStayInfoCampFire, DetailStayInfoFitness, DetailStayInfoKaraoke, DetailStayInfoPublicBath, DetailStayInfoPublicPC, DetailStayInfoSauna, DetailStayInfoSeminar, DetailStayInfoSports) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						pstmt1 = con.prepareStatement(sql1);

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("DETAILSTAYINFOAccomcountlodging : " + (String) item.get("accomcountlodging")); // accomcountlodging
						if (String.valueOf(item.get("accomcountlodging")) != null) {
							pstmt1.setString(2, (String) item.get("accomcountlodging"));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("DetailStayInfoBanikia : " + (String) item.get("benikia")); // benikia
						if (String.valueOf(item.get("benikia")) != null) {
							pstmt1.setString(3, (String) item.get("benikia"));
						} else {
							pstmt1.setString(3, "");
						}

						System.out.println("DetailStayInfoCheckInTime : " + (String) item.get("checkintime")); // checkintime
						if (String.valueOf(item.get("checkintime")) != null) {
							pstmt1.setString(4, (String) item.get("checkintime"));
						} else {
							pstmt1.setString(4, "");
						}

						System.out.println("DetailStayInfoCheckOutTime : " + (String) item.get("checkouttime")); // checkouttime
						if (String.valueOf(item.get("checkouttime")) != null) {
							pstmt1.setString(5, (String) item.get("checkouttime"));
						} else {
							pstmt1.setString(5, "");
						}

						System.out.println("DetailStayInfoChkCooking : " + (String) item.get("chkcooking")); // chkcooking
						if (String.valueOf(item.get("chkcooking")) != null) {
							pstmt1.setString(6, String.valueOf(item.get("chkcooking")));
						} else {
							pstmt1.setString(6, "");
						}

						System.out.println("DetailStayInfoFoodPlace : " + (String) item.get("foodplace")); // foodplace
						if (String.valueOf(item.get("foodplace")) != null) {
							pstmt1.setString(7, (String) item.get("foodplace"));
						} else {
							pstmt1.setString(7, "");
						}

						System.out.println("DetailStayInfoGoodStay : " + item.get("goodstay")); // goodstay
						if (String.valueOf(item.get("goodstay")) != null) {
							pstmt1.setString(8, String.valueOf(item.get("goodstay")));
						} else {
							pstmt1.setString(8, "");
						}

						System.out.println("DetailStayInfoHanok : " + (String) item.get("hanok")); // hanok
						if (String.valueOf(item.get("hanok")) != null) {
							pstmt1.setString(9, (String) item.get("hanok"));
						} else {
							pstmt1.setString(9, "");
						}

						System.out.println("DetailStayInfoInfoCenterLodging : " + (String) item.get("infocenterlodging")); // infocenterlodging
						if (String.valueOf(item.get("infocenterlodging")) != null) {
							pstmt1.setString(10, (String) item.get("infocenterlodging"));
						} else {
							pstmt1.setString(10, "");
						}

						System.out.println("DetailStayInfoParkingLodging : " + (String) item.get("parkinglodging")); // parkinglodging
						if (String.valueOf(item.get("parkinglodging")) != null) {
							pstmt1.setString(11, (String) item.get("parkinglodging"));
						} else {
							pstmt1.setString(11, "");
						}

						System.out.println("DetailStayInfoPickup : " + (String) item.get("pickup")); // pickup
						if (String.valueOf(item.get("pickup")) != null) {
							pstmt1.setString(12, (String) item.get("pickup"));
						} else {
							pstmt1.setString(12, "");
						}

						System.out.println("DetailStayInfoReservationLodging : " + (String) item.get("reservationlodging")); // reservationlodging
						if (String.valueOf(item.get("reservationlodging")) != null) {
							pstmt1.setString(13, (String) item.get("reservationlodging"));
						} else {
							pstmt1.setString(13, "");
						}

						System.out.println("DetailStayInfoReservationURL : " + (String) item.get("reservationurl")); // reservationurl
						if (String.valueOf(item.get("reservationurl")) != null) {
							pstmt1.setString(14, (String) item.get("reservationurl"));
						} else {
							pstmt1.setString(14, "");
						}

						System.out.println("DetailStayInfoRoomType : " + (String) item.get("roomtype")); // roomtype
						if (String.valueOf(item.get("roomtype")) != null) {
							pstmt1.setString(15, (String) item.get("roomtype"));
						} else {
							pstmt1.setString(15, "");
						}

						System.out.println("DetailStayInfoSubFacility : " + (String) item.get("subfacility")); // subfacility
						if (String.valueOf(item.get("subfacility")) != null) {
							pstmt1.setString(16, (String) item.get("subfacility"));
						} else {
							pstmt1.setString(16, "");
						}

						System.out.println("DetailStayInfoBarbecue : " + (String) item.get("barbecue")); // barbecue
						if (String.valueOf(item.get("barbecue")) != null) {
							pstmt1.setString(17, (String) item.get("barbecue"));
						} else {
							pstmt1.setString(17, "");
						}

						System.out.println("DetailStayInfoBeauty : " + (String) item.get("beauty")); // beauty
						if (String.valueOf(item.get("beauty")) != null) {
							pstmt1.setString(18, (String) item.get("beauty"));
						} else {
							pstmt1.setString(18, "");
						}

						System.out.println("DetailStayInfoBicycle : " + (String) item.get("bicycle")); // bicycle
						if (String.valueOf(item.get("bicycle")) != null) {
							pstmt1.setString(19, (String) item.get("bicycle"));
						} else {
							pstmt1.setString(19, "");
						}

						System.out.println("DetailStayInfoCampFire : " + (String) item.get("campfire")); // campfire
						if (String.valueOf(item.get("campfire")) != null) {
							pstmt1.setString(20, (String) item.get("campfire"));
						} else {
							pstmt1.setString(20, "");
						}

						System.out.println("DetailStayInfoFitness : " + (String) item.get("fitness")); // fitness
						if (String.valueOf(item.get("fitness")) != null) {
							pstmt1.setString(21, (String) item.get("fitness"));
						} else {
							pstmt1.setString(21, "");
						}

						System.out.println("DetailStayInfoKaraoke : " + (String) item.get("karaoke")); // karaoke
						if (String.valueOf(item.get("karaoke")) != null) {
							pstmt1.setString(22, (String) item.get("karaoke"));
						} else {
							pstmt1.setString(22, "");
						}

						System.out.println("DetailStayInfoPublicBath : " + (String) item.get("publicbath")); // publicbath
						if (String.valueOf(item.get("publicbath")) != null) {
							pstmt1.setString(23, (String) item.get("publicbath"));
						} else {
							pstmt1.setString(23, "");
						}

						System.out.println("DetailStayInfoPublicPC : " + (String) item.get("publicpc")); // publicpc
						if (String.valueOf(item.get("publicpc")) != null) {
							pstmt1.setString(24, (String) item.get("publicpc"));
						} else {
							pstmt1.setString(24, "");
						}

						System.out.println("DetailStayInfoSauna : " + (String) item.get("sauna")); // sauna
						if (String.valueOf(item.get("sauna")) != null) {
							pstmt1.setString(25, (String) item.get("sauna"));
						} else {
							pstmt1.setString(25, "");
						}

						System.out.println("DetailStayInfoSeminar : " + (String) item.get("seminar")); // seminar
						if (String.valueOf(item.get("seminar")) != null) {
							pstmt1.setString(26, (String) item.get("seminar"));
						} else {
							pstmt1.setString(26, "");
						}

						System.out.println("DetailStayInfoSports : " + (String) item.get("Sports")); // Sports
						if (String.valueOf(item.get("Sports")) != null) {
							pstmt1.setString(27, (String) item.get("Sports"));
						} else {
							pstmt1.setString(27, "");
						}

					}

					else if (rs.getInt(2) == 38) {
						String sql1 = "INSERT INTO DETAILCULTUREINFO(TourSiteContentID, DetailShoppingInfoChkBabyCarriageShopping, DetailShoppingInfoChkCreditCardShopping, DetailShoppingInfoChkPetShopping, DetailShoppingInfoFairDay, DetailShoppingInfoInfoCenterShopping, DetailShoppingInfoOpenDateShopping, DetailShoppingInfoOpenTime, DetailShoppingInfoParkingShopping, DetailShoppingInfoRestDateShopping, DetailShoppingInfoRestRoom, DetailShoppingInfoSaleItem, DetailShoppingInfoShopGuide) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
						pstmt1 = con.prepareStatement(sql1);

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("DetailShoppingInfoChkBabyCarriageShopping : " + (String) item.get("chkbabycarriageshopping")); // chkbabycarriageshopping
						if (String.valueOf(item.get("chkbabycarriageshopping")) != null) {
							pstmt1.setString(2, (String) item.get("chkbabycarriageshopping"));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("DetailShoppingInfoChkCreditCardShopping : " + (String) item.get("chkcreditcardshopping")); // chkcreditcardshopping
						if (String.valueOf(item.get("chkcreditcardshopping")) != null) {
							pstmt1.setString(3, (String) item.get("chkcreditcardshopping"));
						} else {
							pstmt1.setString(3, "");
						}

						System.out.println("DetailShoppingInfoChkPetShopping : " + (String) item.get("chkpetshopping")); // chkpetshopping
						if (String.valueOf(item.get("chkpetshopping")) != null) {
							pstmt1.setString(4, (String) item.get("chkpetshopping"));
						} else {
							pstmt1.setString(4, "");
						}

						System.out.println("DetailShoppingInfoFairDay : " + (String) item.get("fairday")); // fairday
						if (String.valueOf(item.get("fairday")) != null) {
							pstmt1.setString(5, (String) item.get("fairday"));
						} else {
							pstmt1.setString(5, "");
						}

						System.out.println("DetailShoppingInfoInfoCenterShopping : " + (String) item.get("infocentershopping")); // infocentershopping
						if (String.valueOf(item.get("infocentershopping")) != null) {
							pstmt1.setString(6, String.valueOf(item.get("infocentershopping")));
						} else {
							pstmt1.setString(6, "");
						}

						System.out.println("DetailShoppingInfoOpenDateShopping : " + (String) item.get("opendateshopping")); // opendateshopping
						if (String.valueOf(item.get("opendateshopping")) != null) {
							pstmt1.setString(7, (String) item.get("opendateshopping"));
						} else {
							pstmt1.setString(7, "");
						}

						System.out.println("DetailShoppingInfoOpenTime : " + item.get("opentime")); // opentime
						if (String.valueOf(item.get("opentime")) != null) {
							pstmt1.setString(8, String.valueOf(item.get("opentime")));
						} else {
							pstmt1.setString(8, "");
						}

						System.out.println("DetailShoppingInfoParkingShopping : " + (String) item.get("parkingshopping")); // parkingshopping
						if (String.valueOf(item.get("parkingshopping")) != null) {
							pstmt1.setString(9, (String) item.get("parkingshopping"));
						} else {
							pstmt1.setString(9, "");
						}

						System.out.println("DetailShoppingInfoRestDateShopping : " + (String) item.get("restdateshopping")); // restdateshopping
						if (String.valueOf(item.get("restdateshopping")) != null) {
							pstmt1.setString(10, (String) item.get("restdateshopping"));
						} else {
							pstmt1.setString(10, "");
						}

						System.out.println("DetailShoppingInfoRestRoom : " + (String) item.get("restroom")); // restroom
						if (String.valueOf(item.get("restroom")) != null) {
							pstmt1.setString(11, (String) item.get("restroom"));
						} else {
							pstmt1.setString(11, "");
						}

						System.out.println("DetailShoppingInfoSaleItem : " + (String) item.get("saleitemcost")); // saleitemcost
						if (String.valueOf(item.get("saleitemcost")) != null) {
							pstmt1.setString(12, (String) item.get("saleitemcost"));
						} else {
							pstmt1.setString(12, "");
						}

						System.out.println("DetailShoppingInfoShopGuide : " + (String) item.get("shopguide")); // shopguide
						if (String.valueOf(item.get("shopguide")) != null) {
							pstmt1.setString(13, (String) item.get("shopguide"));
						} else {
							pstmt1.setString(13, "");
						}
					}

					else if (rs.getInt(2) == 39) {
						String sql1 = "INSERT INTO DETAILFOODINFO(TourSiteContentID, DetailFoodInfoChkCreditCardFood, DetailFoodInfoDescountInfoFood, DetailFoodInfoFirstMenu, DetailFoodInfoInfoCenterFood, DetailFoodInfoKidsFacility, DetailFoodInfoOpenTimeFood, DetailFoodInfoPacking, DetailFoodInfoParkingFood, DetailFoodInfoReservationFood, DetailFoodInfoRestDateFood, DetailFoodInfoSmoking, DetailFoodInfoTreatMenu) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
						pstmt1 = con.prepareStatement(sql1);

						pstmt1.setInt(1, Integer.parseInt(String.valueOf(item.get("contentid"))));

						System.out.println("DetailFoodInfoChkCreditCardFood : " + (String) item.get("chkcreditcardfood")); // chkcreditcardfood
						if (String.valueOf(item.get("chkcreditcardfood")) != null) {
							pstmt1.setString(2, (String) item.get("chkcreditcardfood"));
						} else {
							pstmt1.setString(2, "");
						}

						System.out.println("DetailFoodInfoDescountInfoFood : " + (String) item.get("discountinfofood")); // discountinfofood
						if (String.valueOf(item.get("discountinfofood")) != null) {
							pstmt1.setString(3, (String) item.get("discountinfofood"));
						} else {
							pstmt1.setString(3, "");
						}

						System.out.println("DetailFoodInfoFirstMenu : " + (String) item.get("firstmenu")); // firstmenu
						if (String.valueOf(item.get("firstmenu")) != null) {
							pstmt1.setString(4, (String) item.get("firstmenu"));
						} else {
							pstmt1.setString(4, "");
						}

						System.out.println("DetailFoodInfoInfoCenterFood : " + (String) item.get("fairday")); // fairday
						if (String.valueOf(item.get("fairday")) != null) {
							pstmt1.setString(5, (String) item.get("fairday"));
						} else {
							pstmt1.setString(5, "");
						}

						System.out.println("DetailFoodInfoKidsFacility : " + (String) item.get("kidsfacility")); // kidsfacility
						if (String.valueOf(item.get("kidsfacility")) != null) {
							pstmt1.setString(6, String.valueOf(item.get("kidsfacility")));
						} else {
							pstmt1.setString(6, "");
						}

						System.out.println("DetailFoodInfoOpenTimeFood : " + (String) item.get("opentimefood")); // opentimefood
						if (String.valueOf(item.get("opentimefood")) != null) {
							pstmt1.setString(7, (String) item.get("opentimefood"));
						} else {
							pstmt1.setString(7, "");
						}

						System.out.println("DetailFoodInfoPacking : " + item.get("packing")); // packing
						if (String.valueOf(item.get("packing")) != null) {
							pstmt1.setString(8, String.valueOf(item.get("packing")));
						} else {
							pstmt1.setString(8, "");
						}

						System.out.println("DetailFoodInfoParkingFood : " + (String) item.get("parkingfood")); // parkingfood
						if (String.valueOf(item.get("parkingfood")) != null) {
							pstmt1.setString(9, (String) item.get("parkingfood"));
						} else {
							pstmt1.setString(9, "");
						}

						System.out.println("DetailFoodInfoReservationFood : " + (String) item.get("reservationfood")); // reservationfood
						if (String.valueOf(item.get("reservationfood")) != null) {
							pstmt1.setString(10, (String) item.get("reservationfood"));
						} else {
							pstmt1.setString(10, "");
						}

						System.out.println("DetailFoodInfoRestDateFood : " + (String) item.get("restdatefood")); // restdatefood
						if (String.valueOf(item.get("restdatefood")) != null) {
							pstmt1.setString(11, (String) item.get("restdatefood"));
						} else {
							pstmt1.setString(11, "");
						}

						System.out.println("DetailFoodInfoSmoking : " + (String) item.get("smoking")); // smoking
						if (String.valueOf(item.get("smoking")) != null) {
							pstmt1.setString(12, (String) item.get("smoking"));
						} else {
							pstmt1.setString(12, "");
						}

						System.out.println("DetailFoodInfoTreatMenu : " + (String) item.get("treatmenu")); // treatmenu
						if (String.valueOf(item.get("treatmenu")) != null) {
							pstmt1.setString(13, (String) item.get("treatmenu"));
						} else {
							pstmt1.setString(13, "");
						}
					}

					pstmt1.execute();
				} catch (ParseException e) {
					System.out.println();
					System.out.println("ParseException==================");
					e.printStackTrace();
				}
			}

		} catch (SQLException e) {
			System.out.println();
			System.out.println("SQLException==================");
			System.out.println();
			e.printStackTrace();
		} catch (Exception ex) {
			System.out.println();
			System.out.println("Exception==================");
			System.out.println();
			ex.printStackTrace();
		} finally {
			try { // 연결 해제(한정돼 있으므로)

				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException se2) {
				se2.printStackTrace();
			}
		}
	}
}