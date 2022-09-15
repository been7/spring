package ch05.dao;

import java.time.LocalDate;

import ch05.config.Configuration;
import ch05.dao.map.TodayMap;

public class TodayDaoImpl implements TodayDao {
	private TodayMap todayMap;
	
	public TodayDaoImpl() {
		this.todayMap = Configuration.getMapper(TodayMap.class);
	}
	
	@Override
	public LocalDate selectToday() {
		return todayMap.selectToday();
	}
}
//메인메소드에서 조립했었다. 지금은 그럴 수 없는 상황..
//서비스 쓰는 상황에서는 그럴 수 없다.
//지금은 각자 연결할거다..
//service는뭐엿지 dao/ servlet은 service하고?
//dao는 매퍼와.. 객체와객체 연결방법은 두가지