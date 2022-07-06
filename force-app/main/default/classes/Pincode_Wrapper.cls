public class Pincode_Wrapper {

	public String Message;
	public String Status;
	public List<PostOffice> PostOffice;

	public class PostOffice {
		public String Name;
		public Object Description;
		public String BranchType;
		public String DeliveryStatus;
		public String Circle;
		public String District;
		public String Division;
		public String Region;
		public String Block;
		public String State;
		public String Country;
		public String Pincode;
	}

	
	public static List<Pincode_Wrapper> parse(String json) {
		return (List<Pincode_Wrapper>) System.JSON.deserialize(json, List<Pincode_Wrapper>.class);
	}
}