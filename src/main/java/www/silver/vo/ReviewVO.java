package www.silver.vo;

public class ReviewVO {
	
	private int no;
	private String name;
	private String region;
	private String contents;
	private int star;
	private String writer;
	private String pw;
	private String up_date;
	
	@Override
	public String toString() {
		return "ReveiwVO [no=" + no + ", name=" + name + ", region=" + region + ", contents=" + contents + ", star="
				+ star + ", writer=" + writer + ", pw=" + pw + ", up_date=" + up_date + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getUp_date() {
		return up_date;
	}

	public void setUp_date(String up_date) {
		this.up_date = up_date;
	}
	
	
	

}
