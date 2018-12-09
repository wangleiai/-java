package jdbcUtils;

public class Cate {

	private String cateId;
	private String cateName;
	private String cateDec;

	public Cate(String cateId, String cateName, String cateDec) {
		this.cateId = cateId;
		this.cateName = cateName;
		this.cateDec = cateDec;
	}

	public String getCateDec() {
		return cateDec;
	}

	public void setCateDec(String cateDec) {
		this.cateDec = cateDec;
	}

	public String getCateId() {
		return cateId;
	}

	public void setCateId(String cateId) {
		this.cateId = cateId;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	@Override
	public String toString() {
		return "Cate [cateId=" + cateId + ", cateName=" + cateName + ", cateDec=" + cateDec + "]";
	}
	
}
