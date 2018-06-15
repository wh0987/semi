package data_source;

public class Board {

    private String list_index;
    private String id;
    private String title;
    private String contents;

    public Board() {
    }

    public String getList_index() {
        return list_index;
    }
    public void setList_index(String list_index) {
        this.list_index = list_index;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getContents() {
        return contents;
    }
    public void setContents(String contents) {
        this.contents = contents;
    }

}
