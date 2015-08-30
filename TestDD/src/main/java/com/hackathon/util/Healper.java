package com.hackathon.util;

import com.hackathon.dataobject.UserComments;
import com.hackathon.mail.EmailServiceHelper;

public class Healper {

	public static boolean updateUserComments(UserComments userComments) throws Exception {
		
		try{
			if (isValidInput(userComments)) {
				DataSource updateCustomeComments = new DataSource();
				FeedbackAnalysis fb= new FeedbackAnalysis();
				EmailServiceHelper email = new EmailServiceHelper();
				userComments.setCustSentiments(fb.getSentiments(userComments.getComments()));
				System.out.println("userComments   "+userComments.toString());
				email.createJiraTicket(userComments);
				updateCustomeComments.updateCustomeComments(userComments);
			}
		}catch(Exception e){
			e.printStackTrace();
			throw e;
		}
		return true;
	}

	public static boolean isValidInput(UserComments userComments) throws Exception {
		boolean isValid = true;
		// TODO Auto-generated method stub
		if (userComments != null) {
			if (Util.isNull(userComments.getCategaroy())) {
				isValid = false;
			}
			if (Util.isNull(userComments.getComments())) {
				isValid = false;
			}
			if (Util.isNull(userComments.getModuleName())) {
				isValid = false;
			}
			if (Util.isNull(userComments.getTitle())) {
				isValid = false;
			}
		}
		return isValid;
	}

}
