/**
 * This file is used fetching the latitude and longitude of the customer's location.
 * @author Gauri
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.maps.GeoApiContext;
import com.google.maps.GeocodingApi;
import com.google.maps.model.GeocodingResult;
/**
 * Servlet implementation class LocationServlet
 */
@WebServlet("/location")
public class Location extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String API_Key="AIzaSyBaUlpgU6hB_dU0rxr6Yi-s8IaSfdILKPI";
	GeocodingResult[] results;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Location() {
        super();
        // TODO Auto-generated constructor stub
    }


    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("In doGet method");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//HttpSession session = request.getSession();
		HttpSession session=request.getSession(true);  
	    String address=(String)session.getAttribute("streetaddr");
	    String city=(String)session.getAttribute("city");
	    String state=(String)session.getAttribute("state");
	    String zip=(String)session.getAttribute("zip");
	    
	    System.out.println(address+" "+city+" "+" "+state+" "+zip);
		GeoApiContext context = new GeoApiContext().setApiKey(API_Key);
		try {
			System.out.println(address+" "+city+" "+state+
					" "+zip);
			results = GeocodingApi.geocode(
					context,
					address+" "+city+", "+state+ " "+zip).await();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(results);
		System.out.println(results[0].geometry.location.lat);
		session.setAttribute("latitude", results[0].geometry.location.lat);
		session.setAttribute("longitude", results[0].geometry.location.lng);
	
	
		request.getRequestDispatcher("/ProcessCustomerDataRequest.jsp").forward(request, response);
		
	}

    
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	
}
