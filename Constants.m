#import "Constants.h"

#pragma mark -
#pragma mark Official app

#define _PRODUCTION_SERVER_
#ifdef _PRODUCTION_SERVER_
NSString * const APIServer = @"http://diana.snu.ac.kr:38080/app";
#else
NSString * const APIServer = @"http://noel.snu.ac.kr:33080/app";
#endif

NSString * timetablePath;

#pragma mark -
#pragma mark YellowPage API
NSString * const kPersonKey = @"person";
NSString * const kPersonIdKey = @"id";
NSString * const kPersonNameKey = @"name";
NSString * const kPersonEmailKey = @"email";
NSString * const kPersonRoomKey = @"room";
NSString * const kPersonPhoneKey = @"office_tel";
NSString * const kPersonCollegeIdKey = @"daehakc";
NSString * const kPersonDepartmentIdKey = @"hakgwa";
NSString * const kPersonBuildingIdKey = @"building";

NSString * const kDepartmentKey = @"hakgwa";
NSString * const kDepartmentIdKey = @"id";
NSString * const kDepartmentNameKey = @"hakgwanm";
NSString * const kDepartmentEnglishNameKey = @"hakgwaenm";
NSString * const kDepartmentCollegeIdKey = @"daehakc";

NSString * const kCollegeKey = @"daehak";
NSString * const kCollegeIdKey = @"id";
NSString * const kCollegeNameKey = @"daehakcnm";

NSString * const CollegeList = @"/daehak_list.do";
NSString * const DepartmentList = @"/search_hakgwa_list.do";
NSString * const DepartmentListAll = @"/hakgwa_list.do";
NSString * const StaffList = @"/search_staff_list_dir.do";
NSString * const StaffListAll = @"/search_staff_list_all.do";
NSString * const CollegeVersion = @"";

NSURL *getCollegeListURL(NSString *timestring)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?timestamp=%@", APIServer, CollegeList, timestring]];
}

NSURL *getAllDepartmentListURL(NSString *timestring)
{
	//http://noel.snu.ac.kr:33080/app/hakgwa_list.do?daehakc=f2d0ec0b8cae7dee724d61dd82d2cd8e&timestamp=0
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?timestamp=%@", APIServer, DepartmentListAll, timestring]];	
}

NSURL *getDepartmentListURL(NSString *collegeId, NSString *timestring)
{
	//http://noel.snu.ac.kr:33080/app/hakgwa_list.do?daehakc=f2d0ec0b8cae7dee724d61dd82d2cd8e&timestamp=0
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?daehakc=%@&timestamp=%@", APIServer, DepartmentList, collegeId, timestring]];
}


NSURL *getStaffListURL(NSString *did, NSString *timestring)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?hakgwa=%@&timestamp=%@", APIServer, StaffList, did, timestring]];
}

NSURL *getAllStaffListURL(NSString *timestring)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?timestamp=%@", APIServer, StaffListAll, timestring]];
}

NSURL *getOrganizationsURL(NSString *pdid)
{
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@/org_list_all_staff.do?deptid=%@", APIServer, pdid]];
}

#pragma mark -
#pragma mark SchoolAdmin API

NSString * const SemesterGrade = @"/view_sj_list_seongjeok.do";
NSString * const SemesterAverageGrade = @"/view_sj_list_pyungjeom.do";
NSString * const SemesterGradeAll = @"/view_sj_list_pyungjeom_all.do";
NSString * const ScheduleAll = @"/haksa_schedule_list.do";
NSString * const TimetableCurrent = @"/timetable_list.do";

NSURL *getSemesterAverageGradeURL()
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", APIServer, SemesterAverageGrade]];
}

NSURL *getSemesterGradeURL()
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", APIServer, SemesterGrade]];
}

NSURL *getAllSemesterGradeURL()
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", APIServer, SemesterGradeAll]];
}

NSURL *getAllCoursesGradeURL()
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/view_sj_list_seongjeok_all.do", APIServer]];
}


NSURL *getAllSchedulesOfYearURL(int year)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?timestamp=0&year=%d", APIServer, ScheduleAll, year]];
}

NSURL *getCurrentTimetableURL()
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", APIServer, TimetableCurrent]];
}

#pragma mark -
#pragma mark Map API

NSString * const BuildingAll = @"/building_list.do";

NSURL *getAllBuildings(NSString *timestring)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?timestamp=%@", APIServer, BuildingAll, timestring]];
}


#pragma mark -
#pragma mark FoodMenu API

NSString * const CafeteriaAll = @"/res_list.do";
NSString * const FoodMenuAll = @"/resmenu_list.do";

NSURL *getAllCafeterias(NSString *timestring)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?timestamp=%@", APIServer, CafeteriaAll, timestring]];
}

NSURL *getAllMenus(NSString *datestring)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?date=%@", APIServer, FoodMenuAll, datestring]];
}


#pragma mark -
#pragma mark AccountInfo API

NSString * const AccountInfo = @"/acct_info.do";

NSURL *getAccountInfoURL() {
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", APIServer, AccountInfo]];
}

#pragma mark - Board List API
NSURL *getBoardListURL() {
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@/board_list.do", APIServer]];
}

#pragma mark - Phone Numbers API
NSURL *getAllInstPhones()
{
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@/phone_list.do", APIServer]];
}

NSURL *getAllDeptPhones(NSString *timestring)
{
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@/phone_list_all.do?timestamp=%@", APIServer, timestring]];
}



#pragma mark -
#pragma mark Old Wafflestudio
#define _PRODUCTION_SERVER_
#ifdef _PRODUCTION_SERVER_
NSString * const SnuAppServer = @"http://snuapp.wafflestudio.com";
#else
NSString * const SnuAppServer = @"http://lab.drunkhacker.net:3000";
#endif

NSString * const CheckAppVersion = @"/versions/check";
NSString * const LibraryController = @"library";
NSString * const LibrarySearchAction = @"search";
NSString * const RoomListAction = @"rooms";
NSString * const RoomStatusAction = @"room_status";
NSString * const RoomInfoAction = @"room_info";
NSString * const LibraryDetailView = @"detail_info";

NSString * const GetMenu = @"getmenu";
NSString * const GetCafeteriaMenuAction = @"get_cafeteria_menu";
NSString * const EvaluateAction = @"eval";
NSString * const UploadPhoto = @"/cafeteria/photos";
NSString * const DetailPhotoAction = @"medium_photo";
NSString * const PhotoHistoryAction = @"get_medium_photos";
NSString * const GetFoodMenuPhotoTimestamp = @"food_menu_photo_timestamp";

NSString * const SnuevServer = @"http://snuev.com";
NSString * const SnuevUserController = @"user";
NSString * const SnuevGetTimetable = @"get_timetable_entries.json";
NSString * const SnuevLogin = @"validate";
NSString * const SnueviPhoneLogout = @"revoke_authenticate";
NSString * const SnuevCheckAuthenticated = @"check_authenticated";
NSString * const SnuevGetEvaluations = @"get_evaluations.json";

NSString * const SnuAppMapController = @"map";

NSString * const GetVertexGroup = @"getvertex_group";
NSString * const GetVertexTypes = @"/map/vertex_types";
NSString * const GetLatestVertexTypeVersion = @"version_check";
NSString * const CheckVertexUpdate = @"/map/version_check";
NSString * const kBuildingVertex = @"건물";
NSString * const kBusstopVertex = @"버스정류장";
NSString * const kCafeteriaVertex = @"식당";
NSString * const kLectureRoomVertex = @"강의실";

NSString * const SearchVertex = @"search_vertex";
NSString * const FindPath = @"find_path";
NSString * documentDirectory;

NSString * const FORMAT_JSON = @"json";
NSString * const FORMAT_XML = @"xml";

NSString * const TYPE_TITLE = @"title";
NSString * const TYPE_AUTHOR = @"author";
NSString * const TYPE_ISBN = @"isbn";

NSString * const kDecryptKeySuffix = @"waffle";

NSURL *getMenuOfCafeteriaURL(int vertexid, NSDate *d, NSString *format)
{
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"Y-MM-dd"];
	NSString *d_str = [formatter stringFromDate:d];
	[formatter release];

	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/cafeteria/%d/menu/%@.%@", SnuAppServer, vertexid, d_str, format]];
}

NSURL *checkAppVersionURL()
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/versions/check", SnuAppServer]];
}

NSURL *checkVertexUpdateURL()
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/map/version_check", SnuAppServer]];
}

NSURL *getVertexTypesURL(NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/map/vertex_types.%@", SnuAppServer, format]];
}

NSURL *getVerticesOfVertexTypeURL(int vertextypeid, NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/map/vertex_types/%d/vertices.%@", SnuAppServer, vertextypeid, format]];
}

NSURL *getRoomListURL(NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/library/rooms.%@", SnuAppServer, format]];	
}

NSURL *getRoomInfoURL(int roomid, NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/library/rooms/%d.%@", SnuAppServer, roomid, format]];	
}

NSURL *getRoomStatusURL(int roomid, NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/library/rooms/%d/status.%@", SnuAppServer, roomid, format]];	
}

NSURL *getRoomBackgroundURL(int roomid)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/library/rooms/%d/image", SnuAppServer, roomid]];	
}

NSURL *getBooksOfQueryURL(NSString *type, NSString *query, NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/library/books/search/%@/%@.%@", SnuAppServer, type, query, format]];		
}

NSURL *getBookDetailURL(int uid, int cid, NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/library/books/%d/%d.%@", SnuAppServer, uid, cid, format]];
}

NSURL *findPathURL(double st_la, double st_lo, double dest_la, double dest_lo, NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/map/find_path/%lf/%lf/%lf/%lf.%@", SnuAppServer, st_la, st_lo, dest_la, dest_lo, format]];
}

NSURL *getNoticesURL(int timestamp,NSString *format)
{
	return [NSURL URLWithString:[NSString stringWithFormat:@"%@/notices/check/%d.%@", SnuAppServer, timestamp, format]];
}
