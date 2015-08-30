package com.hackathon.util;
import static org.junit.Assert.*;
import org.junit.Test;
public  class UtilTest {
	
	@Test
	public void isNull_test() {		
		boolean isNull= Util.isNull("Test");
		assertFalse("Not Null", isNull);
	}
	
	@Test
	public void isNull1_test() {		
		boolean isNull= Util.isNull("");
		assertTrue(isNull);
	}
	
	@Test
	public void isNull2_test() {		
		boolean isNull= Util.isNull(null);
		assertTrue(isNull);
	}
}
