package ch05.service;

import java.time.LocalDate;

import ch05.dao.TodayDao;
import ch05.dao.TodayDaoImpl;

public class TodayServiceImpl implements TodayService {
	private TodayDao todayDao; //서비스의 디펜던시는 dao
	
	public TodayServiceImpl() {
		this.todayDao = new TodayDaoImpl();
	}
	
	@Override
	public LocalDate getToday() {
		return todayDao.selectToday();
	}
}
