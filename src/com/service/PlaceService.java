package com.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.pojo.Degree;
import com.pojo.PlaceCity;
import com.pojo.PlaceProvince;
import com.pojo.PlaceTown;


//省、市、县三级数据库管理
@Service
public class PlaceService {
	private Logger logger = LogManager.getLogger(DegreeService.class);
	@Autowired
	BaseDao<PlaceProvince> placeProvinceDao;
	@Autowired
	BaseDao<PlaceCity> placeCityDao;
	@Autowired
	BaseDao<PlaceTown> placeTownDao;
	
	public List<PlaceProvince> queryAllProvince() {
		String hql = "from PlaceProvince";
		List<PlaceProvince> list = placeProvinceDao.queryList(hql, null);
		return list;
	}
	
	public int queryProvinceIdByName(String name){
		String hql = "from PlaceProvince pp where pp.province=?";
		List<PlaceProvince> list = placeProvinceDao.queryList(hql, new Object[]{name});
		int id = -1;
		if(!list.isEmpty()){
			id = list.get(0).getId();
		}
		return id;
	}
	public int queryCityIdByName(String cityName) {
		// TODO Auto-generated method stub
		String hql = "from PlaceCity pp where pp.city=?";
		List<PlaceCity> list = placeCityDao.queryList(hql, new Object[]{cityName});
		int id = -1;
		if(!list.isEmpty()){
			id = list.get(0).getId();
		}
		return id;
	}
	
	public List<PlaceCity> queryCityByProvinceId(int provinceId) {
		String hql = "from PlaceCity where province_id=?";
		List<PlaceCity> list = placeCityDao.queryList(hql, new Object[]{provinceId});
		return list;
	}
	
	public List<PlaceTown> queryTownByCityId(int cityId) {
		String hql = "from PlaceTown where city_id=?";
		List<PlaceTown> list = placeTownDao.queryList(hql, new Object[]{cityId});
		return list;
	}

	
}
