package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class dao 
{
    private Connection cn;

    public Connection getCn() {
        return cn;
    }

    public void setCn(Connection cn) {
        this.cn = cn;
    }
    
    public void Conectar() throws SQLException
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost/bdviajes","root","");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(dao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void Cerrar()
    {
        if (cn != null)
        {
            try {
                if (cn.isClosed() == false)
                {
                    cn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(dao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }  
    }
}