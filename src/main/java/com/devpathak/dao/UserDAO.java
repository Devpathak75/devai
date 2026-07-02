package com.devpathak.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.devpathak.model.User;
import com.devpathak.util.DBConnection;

public class UserDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // Register User
    public boolean registerUser(User user) {

        boolean status = false;

        try {

            con = DBConnection.getConnection();

            String sql = "INSERT INTO users(name,email,password) VALUES(?,?,?)";

            ps = con.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());

            int i = ps.executeUpdate();

            if (i > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // Login User
    public User loginUser(String email, String password) {

        User user = null;

        try {

            con = DBConnection.getConnection();

            String sql = "SELECT * FROM users WHERE email=? AND password=?";

            ps = con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            rs = ps.executeQuery();

            if (rs.next()) {

                user = new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

}