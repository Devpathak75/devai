package com.devpathak.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.devpathak.ai.GeminiService;

@WebServlet("/chat")
public class ChatServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String question = request.getParameter("question");

        String answer = GeminiService.askGemini(question);

        request.setAttribute("question", question);

        request.setAttribute("answer", answer);

        request.getRequestDispatcher("chat.jsp")
                .forward(request, response);

    }

}