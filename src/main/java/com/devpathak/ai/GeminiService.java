package com.devpathak.ai;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;

public class GeminiService {

    // Replace with your NEW Gemini API Key
	private static final String API_KEY = System.getenv("GEMINI_API_KEY");

    private static final String API_URL =
            "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key="
                    + API_KEY;

    public static String askGemini(String question) {

        try {

            URL url = new URL(API_URL);

            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            conn.setRequestMethod("POST");

            conn.setRequestProperty("Content-Type", "application/json");

            conn.setDoOutput(true);

            JSONObject text = new JSONObject();
            text.put("text", question);

            JSONArray parts = new JSONArray();
            parts.put(text);

            JSONObject content = new JSONObject();
            content.put("parts", parts);

            JSONArray contents = new JSONArray();
            contents.put(content);

            JSONObject body = new JSONObject();
            body.put("contents", contents);

            OutputStream os = conn.getOutputStream();

            os.write(body.toString().getBytes());

            os.flush();

            os.close();

            BufferedReader br = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));

            String line;

            StringBuilder response = new StringBuilder();

            while ((line = br.readLine()) != null) {

                response.append(line);

            }

            br.close();

            JSONObject json = new JSONObject(response.toString());

            return json
                    .getJSONArray("candidates")
                    .getJSONObject(0)
                    .getJSONObject("content")
                    .getJSONArray("parts")
                    .getJSONObject(0)
                    .getString("text");

        } catch (Exception e) {

            e.printStackTrace();

            return "Unable to connect to Gemini AI.";

        }

    }

}