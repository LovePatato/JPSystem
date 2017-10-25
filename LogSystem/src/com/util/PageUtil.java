package com.util;


public class PageUtil {

	/**
	 * sqlserver2005∑÷“≥
	 * @param sql
	 * @param curPage
	 * @param pageSize
	 * @param order
	 * @param workMode
	 * @return
	 */
	public static String mkMSSQLPageSQL(String sql, int curPage, int pageSize,String order) {
		int endRowNum = pageSize * curPage;
		StringBuilder sqlSb = new StringBuilder(1024);

		sqlSb.append("select * from (select * ").append(
				",row_number() over(order by ").append(order).append(
				") as row_id from (").append(sql).append(") pg_vw1) pg_vw2")
				.append(" where row_id between ").append(
						((curPage - 1) * pageSize + 1)).append(" and ").append(
						curPage * pageSize);

	
		return sqlSb.toString();

	}
	
	/**
	 * oracle∑÷“≥
	 * @param sql
	 * @param curPage
	 * @param pageSize
	 * @param order
	 * @param workMode
	 * @return
	 */
    public  static String mkOraclePageSQL(String sql,int curPage,int pageSize,String order)
    {
        int endRowNum = pageSize * curPage;
        StringBuilder result = new  StringBuilder(512);
        //sb = new   StringBuilder(256);
        result.append("select rownum rowno,pd1.* from (");
        result.append("select * from (").append(sql).append(")")
                    .append(" order by ").append(order);

        result.append(" ) pd1 where rownum<=").append(endRowNum);
        String topSQL = result.toString();
        if(curPage==1)
        {
            return topSQL;
        }
        result.delete(0,result.length());
        result.append("select * from (").append(topSQL).append(") where rowno>=")
                .append( endRowNum - pageSize + 1);
        return result.toString();
    }
    
}
