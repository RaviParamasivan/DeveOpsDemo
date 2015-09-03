package com.hackathon.jira;
import static org.junit.Assert.assertNotNull;

import java.io.IOException;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import org.junit.Test;

import com.hackathon.dataobject.UserComments;


public class JiraTest {
	
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
	public void updateJira_test() throws JsonParseException, JsonMappingException, IOException {
		
/*		UserComments input= getObj();
		Jira jira= new Jira();
		boolean isUpdates= jira.updateJira("11");
		assertNotNull(isUpdates);*/
		
	}

}
