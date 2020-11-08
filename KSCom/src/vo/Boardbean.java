package vo;

import java.util.Date;

public class Boardbean {
	private int num;
	private String name;
	private String subject;
	private String content;
	private String file;
	private int re_ref; //원글 번호
	private int re_lev; //답변 레벨
	private int re_seq; //글 번호
	private int readcount;
	private Date date;
	
	
	
	public Boardbean(int num, String name, String subject, String content, String file) {
		this.num=num;
		this.name=name;
		this.subject=subject;
		this.content =content;
		this.file=file;
	}
	public Boardbean(int num, String name, String subject, String content, String file, int re_ref, int re_lev,
			int re_seq, int readcount, Date date) {
		this.num=num;
		this.name=name;
		this.subject=subject;
		this.content =content;
		this.file=file;
		this.re_ref=re_ref;
		this.re_lev=re_lev;
		this.re_seq=re_seq;
		this.readcount=readcount;
		this.date=date;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public int getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}
	public int getRe_lev() {
		return re_lev;
	}
	public void setRe_lev(int re_lev) {
		this.re_lev = re_lev;
	}
	public int getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
