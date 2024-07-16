package www.silver.vo;

public class CommentsVO {

	private int c_no;
	private String c_writer;
	private String c_contents;
	@Override
	public String toString() {
		return "CommentsVO [c_no=" + c_no + ", c_writer=" + c_writer + ", c_contents=" + c_contents + "]";
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public String getC_writer() {
		return c_writer;
	}
	public void setC_writer(String c_writer) {
		this.c_writer = c_writer;
	}
	public String getC_contents() {
		return c_contents;
	}
	public void setC_contents(String c_contents) {
		this.c_contents = c_contents;
	}
	
	
	
}
