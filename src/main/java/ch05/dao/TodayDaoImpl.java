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
//���θ޼ҵ忡�� �����߾���. ������ �׷� �� ���� ��Ȳ..
//���� ���� ��Ȳ������ �׷� �� ����.
//������ ���� �����ҰŴ�..
//service�¹����� dao/ servlet�� service�ϰ�?
//dao�� ���ۿ�.. ��ü�Ͱ�ü �������� �ΰ���