package com.okhospital.myapp;

import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.okhospital.myapp.mapper.TimeMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MybatisTest {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private TimeMapper timeMapper;
	
	@Test
	void test() {
		log.info(timeMapper.getClass().getName());
		log.info(timeMapper.getTime1());
		//fail("Not yet implemented");
	}
}