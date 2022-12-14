package com.sist.mapper;
/*
 * /*
 * t4_s_all
 * 
 * Name        Null?    Type           
----------- -------- -------------- 
S_NO        NOT NULL NUMBER         
NAME        NOT NULL VARCHAR2(1000) 
PRICE                VARCHAR2(20)   
FIRST_PRICE NOT NULL VARCHAR2(20)   
POSTER      NOT NULL VARCHAR2(1000) 
C_NO                 VARCHAR2(10)   

 */

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sist.vo.StoreVO;

public interface StoreMapper {
	//리스트
		@Select("SELECT s_no,name,poster,price,first_price,c_no,img1,img2,img3,hit,num "
				+ "FROM (SELECT s_no,name,poster,price,first_price,c_no,img1,img2,img3,hit,rownum as num "
				+ "FROM (SELECT s_no,name,poster,price,first_price,c_no,img1,img2,img3,hit "
				+ "FROM t4_s_all WHERE c_no=#{c_no} "
				+ "ORDER BY s_no ASC)) "
				+ "WHERE s_no BETWEEN #{start} AND #{end} ")
		public List<StoreVO> storeListData(Map map);
	
		@Select("SELECT s_no,name,poster,price,first_price,c_no,img1,img2,img3,hit,num "
				+ "FROM (SELECT s_no,name,poster,price,first_price,c_no,img1,img2,img3,hit,rownum as num "
				+ "FROM (SELECT s_no,name,poster,price,first_price,c_no,img1,img2,img3,hit "
				+ "FROM t4_s_all "
				+ "ORDER BY s_no ASC)) "
				+ "WHERE s_no BETWEEN #{start} AND #{end} ")
		public List<StoreVO> storeaListData(Map map);
		
		
		//조회수별 정렬
	
		@Select("SELECT s_no,name,poster,first_price,c_no,hit,num "
				+ "FROM (SELECT s_no,name,poster,first_price,c_no,hit,rownum as num "
				+ "FROM (SELECT s_no,name,poster,first_price,c_no,hit "
				+ "FROM t4_s_all "
				+ "ORDER BY hit ASC)) "
				+ "WHERE s_no BETWEEN #{start} AND #{end} ")
		public List<StoreVO> storeA_Hit_ListData(Map map);
		
		
		// 총페이지
		@Select("SELECT CEIL(COUNT(*)/9.0) FROM t4_s_all "
				+ "WHERE c_no=#{c_no}")
		public int storeTotalPage(Map map);
		
		@Select("SELECT CEIL(COUNT(*)/9.0) FROM t4_s_all")
		public int storeaTotalPage(Map map);
		
		//디테일 
		  @Select("SELECT * FROM t4_s_all "
				  +"WHERE s_no=#{s_no}")
		   public StoreVO storeDetailData(Map map);
		  
		// 조회수
					@Update("UPDATE t4_s_all "
							+ "SET hit = hit + 1 "
							+ "WHERE s_no=#{s_no}")
					public void storeHitIncrement(Map map);
					
	//총 상품개수 
					@Select("SELECT COUNT * FROM t4_s_all "
							+ "WHERE c_no=#{c_no}")
					public int storeTotalProduct(Map map);
}





























































