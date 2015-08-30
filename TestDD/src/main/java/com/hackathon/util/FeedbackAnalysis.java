package com.hackathon.util;

public class FeedbackAnalysis {

	public String getSentiments(String feedback) {
		// TODO Auto-generated method stub
		String result = "";
		try {

			Helper helper = new Helper();
			Double weight = 0.0;
			weight = helper.getSentimentDetails(feedback);

			if (weight <= -0.30) {
				result = "Negative";
			} else if (weight > -0.40 && weight < 0.50) {
				result = "Neutral";
			} else {
				result = "Positive";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
