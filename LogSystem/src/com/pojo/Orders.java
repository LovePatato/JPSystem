package com.pojo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.github.miemiedev.mybatis.paginator.domain.Order;

public class Orders {
	
	private int id;
	
	private int outsetstationid;
	
	private int deststationid;
	
	public int getDeststationid() {
		return deststationid;
	}

	public void setDeststationid(int deststationid) {
		this.deststationid = deststationid;
	}

	private String orderstatus;
	
	@Override
	public String toString() {
		return "Orders [id=" + id + ", outsetstationid=" + outsetstationid
				+ ", deststationid=" + deststationid + ", orderstatus="
				+ orderstatus + ", vehicleid=" + vehicleid + ", receivedata="
				+ receivedata + ", goodsnumber=" + goodsnumber + ", goodsname="
				+ goodsname + ", goodstypeid=" + goodstypeid
				+ ", goodstotalweight=" + goodstotalweight
				+ ", goodstotalvolume=" + goodstotalvolume + ", totalfare="
				+ totalfare + ", sendername=" + sendername
				+ ", sendermobilephone=" + sendermobilephone
				+ ", senderaddress=" + senderaddress + ", senderzipcode="
				+ senderzipcode + ", addresseename=" + addresseename
				+ ", addresseeaddress=" + addresseeaddress
				+ ", addresseemobilephone=" + addresseemobilephone
				+ ", addresseezipcode=" + addresseezipcode + ", remark="
				+ remark + ", way_id=" + way_id + ", way=" + way + ", station="
				+ station + ", goods=" + goods + ", vehicle=" + vehicle + "]";
	}

	private int vehicleid;
	
	private String receivedata;
	
	private int goodsnumber;
	
	private String goodsname;
	
	private int goodstypeid;
	
	private int goodstotalweight;

	private int goodstotalvolume;
	
	private int totalfare;
	
	private String sendername;
	
	private String sendermobilephone;
	
	private String senderaddress;
	
	private String senderzipcode;
	
	private String addresseename;
	
	private String addresseeaddress;
	
	private String addresseemobilephone;
	
	private String addresseezipcode;
	
	private String remark;
	
	private String way_id;

	private Way way;
	
	private Station station;
	
	private Goods goods;
	
	private Vehicle vehicle;
	
	
	public Way getWay() {
		return way;
	}

	public void setWay(Way way) {
		this.way = way;
	}

	public Station getStation() {
		return station;
	}

	public void setStation(Station station) {
		this.station = station;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}

	public int getVehicleid() {
		return vehicleid;
	}

	public void setVehicleid(int vehicleid) {
		this.vehicleid = vehicleid;
	}

	/*public String getReceivedata() {
		return receivedata;
	}

	public void setReceivedata(String receivedata) {
		this.receivedata = receivedata;
	}*/

	public int getGoodsnumber() {
		return goodsnumber;
	}

	public String getReceivedata() {
		return receivedata;
	}

	public void setReceivedata(Date receivedata) {
		
		try {
			
			this.receivedata=(new SimpleDateFormat("yyyy-MM-dd")).format(receivedata);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void setReceivedata(String receivedata) {
		
		try {
			
			this.receivedata=receivedata;;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void setGoodsnumber(int goodsnumber) {
		this.goodsnumber = goodsnumber;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public int getGoodstypeid() {
		return goodstypeid;
	}

	public void setGoodstypeid(int goodstypeid) {
		this.goodstypeid = goodstypeid;
	}


	public int getGoodstotalweight() {
		return goodstotalweight;
	}

	public void setGoodstotalweight(int goodstotalweight) {
		this.goodstotalweight = goodstotalweight;
	}

	public int getGoodstotalvolume() {
		return goodstotalvolume;
	}

	public void setGoodstotalvolume(int goodstotalvolume) {
		this.goodstotalvolume = goodstotalvolume;
	}

	public int getTotalfare() {
		return totalfare;
	}

	public void setTotalfare(int totalfare) {
		this.totalfare = totalfare;
	}

	public String getSendername() {
		return sendername;
	}

	public void setSendername(String sendername) {
		this.sendername = sendername;
	}

	public String getSendermobilephone() {
		return sendermobilephone;
	}

	public void setSendermobilephone(String sendermobilephone) {
		this.sendermobilephone = sendermobilephone;
	}

	public String getSenderaddress() {
		return senderaddress;
	}

	public void setSenderaddress(String senderaddress) {
		this.senderaddress = senderaddress;
	}

	public String getSenderzipcode() {
		return senderzipcode;
	}

	public void setSenderzipcode(String senderzipcode) {
		this.senderzipcode = senderzipcode;
	}

	public String getAddresseename() {
		return addresseename;
	}

	public void setAddresseename(String addresseename) {
		this.addresseename = addresseename;
	}

	public String getAddresseeaddress() {
		return addresseeaddress;
	}

	public void setAddresseeaddress(String addresseeaddress) {
		this.addresseeaddress = addresseeaddress;
	}

	public String getAddresseemobilephone() {
		return addresseemobilephone;
	}

	public void setAddresseemobilephone(String addresseemobilephone) {
		this.addresseemobilephone = addresseemobilephone;
	}

	public String getAddresseezipcode() {
		return addresseezipcode;
	}

	public void setAddresseezipcode(String addresseezipcode) {
		this.addresseezipcode = addresseezipcode;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getWay_id() {
		return way_id;
	}

	public void setWay_id(String way_id) {
		this.way_id = way_id;
	}

	public static Order formString(String sortString) {
		// TODO Auto-generated method stub
		return null;
	}




/*	public String getOutsetstationid() {
		return outsetstationid;
	}




	public void setOutsetstationid(String outsetstationid) {
		this.outsetstationid = outsetstationid;
	}
*/



	/*public String getDeststationid() {
		return deststationid;
	}




	public void setDeststationid(String deststationid) {
		this.deststationid = deststationid;
	}*/

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOutsetstationid() {
		return outsetstationid;
	}

	public void setOutsetstationid(int outsetstationid) {
		this.outsetstationid = outsetstationid;
	}

	}
