package com.user.db;

import org.springframework.stereotype.Repository;

import com.user.bean.UserDetails;

@Repository("userDataDB")
public class UserDataDB extends AbstractDB<UserDetails>{

}
