import com.huang.biz.impl.TblstudentDaoImpl;
import com.huang.entity.Tblstudent;
import org.junit.*;

import java.util.List;

/**
 * Created by Administrator on 2016/8/23.
 */
public class TblstudentText {
    TblstudentDaoImpl stu=new TblstudentDaoImpl();
    Tblstudent s=new Tblstudent();
    @Test
    public void findAll(){
        List<Tblstudent> list=stu.findAll();
        for(Tblstudent s:list){
            System.out.println(s.getStuId()+"\t"+s.getStuName()+"\t"+s.getStuAge()+"\t"+s.getStuSex());
        }
    }
    @Test
    public void chack(){
        Tblstudent st=stu.chack("1006");

        System.out.println(st.getStuId()+"\t"+st.getStuName()+"\t"+st.getStuAge()+"\t"+st.getStuSex());

    }
    @Test
    public void add() {
        s.setStuId(20011);
        s.setStuName("张三");
        s.setStuAge(20);
        s.setStuSex("男");
        stu.add(s);
        System.out.println(stu);
    }
    @Test
    public void delete(){
        stu.delete("1002");
    }
    @Test
    public void update() {
        s.setStuId(1002);
        s.setStuName("张三");
        s.setStuAge(20);
        s.setStuSex("男");
        int num = stu.update(s);
        System.out.println(num);
    }
}
