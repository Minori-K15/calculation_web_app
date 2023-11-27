package	controller;

import	java.io.IOException;

import	jakarta.servlet.ServletException;
import	jakarta.servlet.annotation.WebServlet;
import	jakarta.servlet.http.HttpServlet;
import	jakarta.servlet.http.HttpServletRequest;
import	jakarta.servlet.http.HttpServletResponse;

/**
	*	Servlet	implementation	class	CalculationController
	*/
@WebServlet("/calculation")
public class CalculationController extends HttpServlet	{
	private static final long serialVersionUID = 1L;
	private static final String view = "/WEB-INF/views/calculation.jsp";
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse	response)
			throws ServletException, IOException	{
		
		// メッセージの表示
		if (request.getAttribute("display")	==	null)	{
			//	nullの場合のメッセージ
			request.setAttribute("message",	"計算式を入力してください");
			request.setAttribute("display",	"0");
		}
		request.getRequestDispatcher(view).forward(request,	response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException	{
		
		// パラメータの値を定義
		String dentaku = request.getParameter("dentaku");
		String operator = request.getParameter("operator");
		String equal = request.getParameter("operator_eq");
		String clear = request.getParameter("clear");
		String display =request.getParameter("display");
		String message =request.getParameter("message");
		
		// テスト
		if(request.getParameter("dentaku") == null) {
			message = "[ERROR] 数字を入力してください";
		} else {
			if(operator != null) {
				if (operator == "+") {
				message = Integer.toString(Integer.parseInt(dentaku) + Integer.parseInt(dentaku));
				}
			} else {
			message = "[ERROR] 演算子が入っていません";
			}
		}
		
		// ディスプレイ表示
		request.setAttribute("display",	dentaku);
		request.setAttribute("message",	message);
		
		// 計算処理メソッド
		String calculation = calculation (operator, dentaku);
		
		// フォワード
		request.getRequestDispatcher(view).forward(request,	response);
	}
	
	// 計算処理
	protected static String calculation(String operator, String num) {
		int numbers = Integer.parseInt(num);
		
		if(operator != null) {
			switch (operator) {
			case "+":
				int calculation = numbers + numbers;
				return Integer.toString(calculation);
			case "-":
				calculation = numbers - numbers;
				return Integer.toString(calculation);
			case "×":
				calculation = numbers * numbers;
				return Integer.toString(calculation);
			case "÷":
				if(numbers % numbers == 0) {
					calculation = numbers /= numbers;
					return Integer.toString(calculation);
				} else {
					return "割り切れませんでした";
				}
			default:
				return "Error: Invalid operator.";
			}
		}
		return operator;
	}
}
