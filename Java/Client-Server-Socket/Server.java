/** Java Web Socket Programming
 * Server Implementation
 * Define Server Class and Instantiate one
 */

import java.io.*;
import java.net.*;

public class Server {
    private Socket socket         = null;
    private ServerSocket server   = null;
    private BufferedReader in     = null;

    /**
     * Server - TCP/IP Server using Web Socket Interface
     * @param port - Port Address of The Server
     */
    public Server(int port)
    {
        try {
            server = new ServerSocket(port);
            System.out.println("Server Started at " + port);
            
            socket = server.accept();
            in     = new BufferedReader(new InputStreamReader(socket.getInputStream()));
            System.out.println("Connected with Client");
        } catch(UnknownHostException e) {
            System.out.println("Host Error: Failed to Start");
            System.err.println(e);
        } catch(IOException e) {
            System.out.println("IOException: Failed to Start");
            System.err.println(e);
        }
    }

    /**
     * start - Fires up Server Application
     */
    public void start() {
        try {
            String line = in.readLine();
            while (line != null && ! line.toLowerCase().equals("over")) {
                System.out.println(line);
                line = in.readLine();
            }
        } catch(IOException e) {
            System.out.println("IOException: Failed to parse Input string.");
            System.err.println(e);
        }
    }

    /**
     * close - Terminate Server Application
     */
    public void close() {
        try {
            in.close();
            socket.close();
        } catch(IOException e) {
            System.out.println("IOException: Failed to Close Connection");
            System.err.println(e);
        }
    }
}

class App {
    public static void main(String[] args) {
        Server server = new Server(8080);
        server.start();
        server.close();
    }
}