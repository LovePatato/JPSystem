package com.service;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;







import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;







import com.action.PageAction;
import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.mapper.OrdersMapper;
import com.pojo.Orders;
import com.pojo.Station;



@Service
public class OrdersServiceImpl implements OrdersService{
	
	@Autowired
	private OrdersMapper ordersMapper;

	public OrdersMapper getOrdersMapper() {
		return ordersMapper;
	}

	public void setOrdersMapper(OrdersMapper ordersMapper) {
		this.ordersMapper = ordersMapper;
	}
	
/*	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return ordersMapper.selCount();
	}*/
	
	//閸ユ崘銆�
	@Override
	public List<Orders> getAllOrders() {
		// TODO Auto-generated method stub
		//Order.setId(UUID.randomUUID().toString());
		return ordersMapper.selList();
		
	}
	//缂傛牞绶柅澶嬪閹稿鎸�
	@Override
	public List<Orders> getOrders(int id) {
		// TODO Auto-generated method stub
		return ordersMapper.selOne(id);
	}
	//閸掔娀娅�
	@Override
	public void del(int id) {
		// TODO Auto-generated method stub
		ordersMapper.del(id);
	}
	//濞ｈ濮�
	/*@Override
	public void addOrders(Orders orders) {
		// TODO Auto-generated method stub
		ordersMapper.add(orders);
	}*/
	//閺囧瓨鏌�
	@Override
	public void update(Orders orders) {
		// TODO Auto-generated method stub
		System.out.println("serviseimp:"+orders.toString());
		ordersMapper.update(orders);
	}

/*	@Override
	public List<Orders> getOneOrders(int id) {
		// TODO Auto-generated method stub
		return ordersMapper.selIndex(id);
	}*/

	@Override
	public int selCount() {
		// TODO Auto-generated method stub
		return ordersMapper.selCount();
	}
	//閸掑棝銆�
	/*@Override
	public List<Station> selList(int curPage) {
		// TODO Auto-generated method stub
		String sortString = "ID";
		
		PageBounds pageBounds = new PageBounds(curPage, PageAction.PER_PAGE , Order.formString(sortString));
		Map<String,Object> hm = new HashMap<String,Object>();
		return ordersMapper.selLists(pageBounds);
	}*/

	@Override
	public void addOrders(Orders orders) {
		// TODO Auto-generated method stub
		ordersMapper.add(orders);
	}
	//閸掑棝銆�
	@Override
	public List<Orders> selList(Orders orders, int curPage) {
		// TODO Auto-generated method stub
		String sortString = "ID";//婵″倹鐏夋担鐘冲厒閹烘帒绨惃鍕樈闁褰块崚鍡涙閸欘垯浜掗幒鎺戠碍婢舵艾鍨�
		//mybatis閸掑棝銆夌猾锟芥俊鍌涚亯娑撳秴鍨庢い纰夌礉娴ｈ法鏁ら弮鐘插棘閺嬪嫰锟介弬瑙勭《
		PageBounds pageBounds = new PageBounds(curPage, PageAction.PER_PAGE , Order.formString(sortString));
		Map<String,Object> hm = new HashMap<String,Object>();
		if(orders!=null){
		if(orders.getOrderstatus()!=null){
			hm.put("orderstatus", orders.getOrderstatus());
			}
		if(orders.getReceivedata()!=null){
			System.out.println(orders.getReceivedata());
			Calendar cal = Calendar.getInstance();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			try {
				
				cal.setTime(sdf.parse(orders.getReceivedata()));
				cal.add(Calendar.DATE, 1);
				System.out.println(sdf.format(cal.getTime()));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			hm.put("receivedata", orders.getReceivedata());
			hm.put("receivedata1", sdf.format(cal.getTime()));
			}
		}
		System.out.println("sellist");
		return ordersMapper.selLists(hm,pageBounds);
	}

	/*@Override
	public List<Orders> getOneOrders(int id) {
		// TODO Auto-generated method stub
		return null;
	}*/


	

	


	

	

}
