/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author DELL
 */
public class selection {
    
        public List select(){
        SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session s=sf.openSession();
            Transaction tr=s.beginTransaction();
            Query q=s.createQuery("from Hibersql");
            List<Hibersql> hibersqls=q.list();
            s.close();
            return hibersqls;
        
    }
        
     
    
}
