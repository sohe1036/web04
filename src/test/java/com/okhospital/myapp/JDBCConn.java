package com.okhospital.myapp;

import static org.junit.jupiter.api.Assertions.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCConn {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	void testConnection() {
		try {
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe");
		logger.info("오라클연결성공");
		}catch(Exception e) {
			fail("Not yet implemented");
		}
	}

}
