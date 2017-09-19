package org.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by trembleguy on 2017/9/10.
 */
public class User {
    private String username;
    private String password;

    public String getUsername() {
        return this.username;
    }
    public String getPassword() {
        return this.password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
