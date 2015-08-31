package com.hackathon.util;

import static org.junit.Assert.assertNotNull;

import java.io.IOException;
import java.util.ArrayList;

import org.junit.Test;

public class HelperTest {

	@Test
	public void getScalar_Test() throws IOException {
		Helper helper = new Helper();
		Helper.initialize();
		double scalar = helper.getScalar("Test", 0.25, false);
		assertNotNull(scalar);

	}

	@Test
	public void getCounts_Test() throws IOException {

		int count = Helper.getCounts("Test , TEst", ",");
		assert(count>100);
	}

	@Test
	public void getWords_Test() throws IOException {
		ArrayList words = (ArrayList) Helper.getWords("This is the test String ");
		assertNotNull(words);
	}

	@Test
	public void getSentimentWords_Test() throws IOException {
		ArrayList words = (ArrayList) Helper.getSentimentWords("This is the test String ");
		assertNotNull(words);
	}

	@Test
	public void removeSingleWord_Test() throws IOException {
		ArrayList data = new ArrayList();
		data.add("Test");
		data.add("1");
		data.add("Order");
		ArrayList words = (ArrayList) Helper.removeSingleWord(data);
		assertNotNull(words);
	}

	@Test
	public void isUpper_Test() throws IOException {
		ArrayList data = new ArrayList();
		data.add("Test");
		data.add("1");
		data.add("Order");
		boolean words = Helper.isUpper(data);
		assertNotNull(words);
	}

}
