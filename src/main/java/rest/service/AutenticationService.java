package rest.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Base64;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.io.FileUtils;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Path("auth")

public class AutenticationService {

	
	@POST
	@Path("/login")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getAutentication(@FormParam("pass") String pass,@FormParam("email") String email) {
		System.out.println("reached here password -> "+pass);
		System.out.println("reached here email -> "+email);
		URI targetURIForRedirection = null;
		try {
			targetURIForRedirection = new URI("http://www.java2s.com");
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    return Response.temporaryRedirect(targetURIForRedirection).build();
	}
	
	
	@POST
	@Path("/upload_file")
	@Produces(MediaType.APPLICATION_JSON)
	public String getAutentication1(@FormParam("data") String data) throws FileNotFoundException, IOException {
		//JSONObject jsonObject = new JSONObject(data);
		//System.out.println("reached here password -> "+jsonObject.get("file"));
		Gson gson = new Gson();
		JsonObject json = new JsonObject();
		json = gson.fromJson(data,JsonObject.class);
		for(String key: json.keySet()) {
			System.out.println("key "+json.get(key));
			
			if(key.contains("_file")) {
				String filter = json.get(key).toString().substring(json.get(key).toString().indexOf(",") + 1);
				System.out.print("filer "+filter);
				 byte[] decoded = Base64.getMimeDecoder().decode(filter);
			        FileUtils.writeByteArrayToFile(new File("C:\\Users\\ISTAR-SKILL\\"+key.replace("_file", "")), decoded);
			}
		}
/*		String filestring = new com.google.gson.JsonParser().parse(data).getAsJsonObject().get("file").getAsString();
		String filter = filestring.substring(filestring.indexOf(",") + 1);

        //Base64 Decoded
        byte[] decoded = Base64.getDecoder().decode(filter);
        FileUtils.writeByteArrayToFile(new File("C:\\Users\\ISTAR-SKILL\\ppf.pdf"), decoded);
*/
	    return data;
	}
}
