package com.example.zerobasemission1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import static java.sql.DriverManager.getConnection;
import static org.mariadb.jdbc.pool.Pools.close;

import com.jdbc.JDBCTemplate;
import com.example.zerobasemission1.WifiInformation;

public class WifiInfo_db extends JDBCTemplate {
    public int delete() {
        Connection con = getConnection();
        PreparedStatement pstm = null;
        int res = 0;

        String sql = " DELETE FROM wifi_table ";

        try {
            pstm = con.prepareStatement(sql);

            res = pstm.executeUpdate();

            if(res>0) {
                con.commit(con);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close(pstm);
            close(con);
        }
        return res;
    }

    public int insert(List<WifiInformation> wifiInformationList) {
        Connection con = getConnection();
        PreparedStatement pstm = null;
        int res = 0;

        String sql = " INSERT INTO wifi_table VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";

        try {
            pstm = con.prepareStatement(sql);

            for(int i=0; i<wifiInformationList.size(); i++) {
                WifiInformation wifi = wifiInformationList.get(i); 	//반복을 하면서 LibDto 인덱스 i에 해당하는 dto 하나씩 가져옴

                pstm.setString(1, wifi.getWifiMgrNo());
                pstm.setString(2, wifi.getWrdOfc());
                pstm.setString(3, wifi.getMainNm());
                pstm.setString(3, wifi.getAdres1());
                pstm.setString(3, wifi.getAdres2());
                pstm.setString(3, wifi.getInstlFloor());
                pstm.setString(3, wifi.getInstlTy());
                pstm.setString(3, wifi.getInstlMby());
                pstm.setString(3, wifi.getSvcSe());
                pstm.setString(3, wifi.getCmcwr());
                pstm.setString(3, wifi.getCnstcYear());
                pstm.setString(3, wifi.getInoutDoor());
                pstm.setString(3, wifi.getRemars3());
                pstm.setString(3, wifi.getLat());
                pstm.setString(3, wifi.getLnt());
                pstm.setString(3, wifi.getWorkDttm());

                pstm.addBatch();
            }
            int[] result = pstm.executeBatch();

            for(int i=0; i<result.length; i++) {
                if(result[i]==-2) {
                }
            }
            if(res==wifiInformationList.size()) {
                commit(con);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(pstm);
            close(con);
        }

        return res;
    }
}
}

