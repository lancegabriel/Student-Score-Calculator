package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Student;

/**
 * Servlet implementation class HomeServlet
 */

@WebServlet("/homeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		List<Student> studentList = generateStudents();
		request.setAttribute("studentList", studentList);
		request.getRequestDispatcher("/home.jsp").forward(request, response);

		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private List<Student> generateStudents() {
		List<Student> studentList = new ArrayList<Student>();
		studentList.add(new Student("S1", "Lance", "Department of Science", 35));
		studentList.add(new Student("S2", "Gabriel", "Department of Science", 70));
		studentList.add(new Student("S3", "Charles", "Department of Science", 60));
		studentList.add(new Student("S4", "Emma", "Department of Science", 90));
		studentList.add(new Student("S5", "Watsons", "Department of Computing", 30));
		studentList.add(new Student("S6", "Harry", "Department of Business", 32));
		studentList.add(new Student("S7", "Potter", "Department of Business", 70));
		studentList.add(new Student("S8", "Voldemort", "Department of Business", 20));

		studentList.sort(Comparator.comparing(a -> a.getDepartment()));

		return studentList;
	}


}
