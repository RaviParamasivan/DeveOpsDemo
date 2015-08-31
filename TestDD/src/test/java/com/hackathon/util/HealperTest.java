package com.hackathon.util;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.IOException;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.junit.Test;

import com.hackathon.dataobject.UserComments;
import com.hackathon.mail.EmailServiceHelper;

import mockit.Mock;
import mockit.MockUp;

public class HealperTest {

	public UserComments getObj() throws JsonParseException, JsonMappingException, IOException{
		UserComments om=new UserComments();
		om.setCategaroy("Billing");
		om.setComments("User Comd");
		om.setDevGroupId("xx@gmail.com");
		om.setModuleName("Issue");
		om.setTitle("User Cmd");
		om.setUserMailId("yy@gami.com");
		om.setSensitive(false);
		
		return om;
	}
	
	@Test
	public void isValid_Test() throws JsonParseException, JsonMappingException, IOException {
		UserComments feedback= getObj();
		System.out.println(feedback);
		assertNotNull(feedback);
	}
	
	@Test
	public void isValid1_Test() throws Exception {
		UserComments feedback= getObj();
		boolean isVal=Healper.isValidInput(feedback); 
		assertTrue(isVal);
	}	
	
	@Test
	public void updateUserComments_Test() throws Exception {
		UserComments feedback= getObj();
		/*new MockUp<DataSource>(){
			@Mock
			boolean updateCustomeComments(UserComments feedback)throws Exception{
				return true;
			}			
		};
		new MockUp<EmailServiceHelper>(){
			@Mock
			boolean createJiraTicket(UserComments feedback) throws Exception{
				return true;
			}			
		};	*/	
		
		//boolean isVal=Healper.updateUserComments(feedback); 
		//assertTrue(isVal);
	}
	
}
