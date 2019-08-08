package we;


import java.util.List;


public interface BDAO {
	public int add(Blog blog);
	public void update(Blog blog);
	public void delete(Blog blog);
	public Blog get(int blogId);
	public List<Blog> list(int userId);

}
