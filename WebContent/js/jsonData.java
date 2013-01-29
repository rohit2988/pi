import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import net.sf.json.*;

import org.json.JSONArray;



public class jsonData {
	public static void main(String args[]){
		JSONObject object = new JSONObject();
		JSONObject object2 = new JSONObject();
		JSONObject object3 = new JSONObject();
		
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		String formattedDate = df.format(new Date()); 
		/*for(int i=1;i<=30;i++){
			int random = (int) ((Math.random()*i)*10000);
			int currency = (int) ((Math.random()*i)*10000);
			object2.put("id", i);
			object.put("chk","<input type='checkbox' name='chk[]' id='chk1' value='1'>");
			object.put("account", "A.C.Networks"+i);
			object.put("deal_request",random);
			object.put("deal", "lmpoffer"+i);
			object.put("deal_name", "lmpoffer");
			object.put("deal_type", "One time pricing discount");
			object.put("status", "Approved");
			object.put("item_category", "Toy Trains");
			object.put("currency_value", currency);
			object.put("effective_start_date", formattedDate);
			object.put("effective_end_date", formattedDate);
			object.put("date_submitted", formattedDate);
			object.put("submitted_by", "Rbates");
			object.put("approver", "Alan");
			object.put("total_accured_amt", currency);
			object.put("total_earned_amt", currency);
			object.put("total_paid_amt", currency);
			object.put("total_claimed_amt", currency);
			object.put("total_remaining_amt", currency);
			object.put("budget", currency);
			object.put("total_budget_amt", currency);
			object.put("total_budget_reamaining_amt", currency);
			object2.put("cell", object);
			object3.put("rows", object2);
			System.out.println(object2);
		}*/
		
		 JSONArray arrayObj = new JSONArray();
//		 arrayObj.put("name :");
//		 arrayObj.put("Amit Kumar");
//		 arrayObj.put("Max.Marks :");
//		 arrayObj.put(new Integer(100));
//		 arrayObj.put("Min.Marks");
//		 arrayObj.put(new Double(40));
//		 arrayObj.put("Scored");
//		 arrayObj.put(new Double(66.67));
//		 System.out.println(arrayObj);
		 
		 for(int i=1;i<=10;i++){
				int random = (int) ((Math.random()*i)*10000);
				int currency = (int) ((Math.random()*i)*10000);
				arrayObj.put("account:");
				arrayObj.put("A.C.Networks");
				arrayObj.put("deal_request:");
				arrayObj.put(10000);
				arrayObj.put("deal:");
				arrayObj.put("lmpoffer");
				arrayObj.put("deal_name:");
				arrayObj.put("lmpoffer");
				arrayObj.put("deal_type:");
				arrayObj.put("One time pricing discount");
				arrayObj.put("status:");
				arrayObj.put("Approved");
				arrayObj.put("currency_value:");
				arrayObj.put(1000);
				arrayObj.put("effective_start_date:");
				arrayObj.put("30-Oct-11");
				arrayObj.put("effective_end_date:");
				arrayObj.put("30-Oct-11");
				arrayObj.put("date_submitted:");
				arrayObj.put("1-Dec-10");
				arrayObj.put("submitted_by:");
				arrayObj.put("Rbates");
				arrayObj.put("approver:");
				arrayObj.put("Alan");
				arrayObj.put("total_accured_amt:");
				arrayObj.put(currency);
				arrayObj.put("total_earned_amt:");
				arrayObj.put(currency);
				arrayObj.put("total_paid_amt:");
				arrayObj.put(currency);
				arrayObj.put("total_claimed_amt:");
				arrayObj.put(currency);
				arrayObj.put("total_remaining_amt:");
				arrayObj.put(currency);
				arrayObj.put("budget:");
				arrayObj.put(currency);
				arrayObj.put("total_budget_amt:");
				arrayObj.put(currency);
				arrayObj.put("total_budget_reamaining_amt:");
				arrayObj.put(currency);
				System.out.println(arrayObj);
			}
	}
}
