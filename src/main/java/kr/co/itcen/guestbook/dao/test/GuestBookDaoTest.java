package kr.co.itcen.guestbook.dao.test;

import java.util.List;
import kr.co.itcen.guestbook.dao.GuestBookDao;
import kr.co.itcen.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		insertTest();
		getListTest();
		
		deleteAll();

	}
	private static void deleteAll() {
		//new GuestBookDao().delete();
	}
	
	private static void insertTest() {
		GuestBookVo vo = new GuestBookVo();
		
		vo.setName("이제구");
		vo.setText("바보야");
		vo.setPassword("4321");
		vo.setDateTime("2019-september-11 02:44:22");
		
		new GuestBookDao().insert(vo);
	}

	private static void getListTest() {
		List<GuestBookVo> list = new GuestBookDao().getList();
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}
}
