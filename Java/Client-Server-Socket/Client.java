/** Java Web Socket Programming
 * Client Implementation
 * Define Client Class and Instantiate one
 */

import java.io.*;
import java.net.*;

public class Client {
    private Socket socket         = null;
    // private DataInputStream in = null;
    private BufferedReader in     = null;
    private DataOutputStream out  = null;

    /**
     * Client - TCP/IP Client using Web Socket Interface
     * @param host - Host Address of The Server
     * @param port - Port Address of The Server
     */
    public Client(String host, int port)
    {
        try {
            socket = new Socket(host, port);
            // in  = new DataInputStream(System.in);
            in     = new BufferedReader(new InputStreamReader(System.in));
            out    = new DataOutputStream(socket.getOutputStream());

            System.out.println("Client Connected: " + host + ":" + port);
        } catch(UnknownHostException e) {
            System.out.println("Host Error: Failed to Connect");
            System.err.println(e);
        } catch(IOException e) {
            System.out.println("IOException: Failed to Connect");
            System.err.println(e);
        }
    }

    /**
     * start - Fires up Client Application
     */
    public void start() {
        String line = "";

        while (! line.toLowerCase().equals("over")) {
            try {
                line = in.readLine();
                out.writeUTF(line);
            } catch(IOException e) {
                System.out.println("IOException: Failed to parse Input string.");
                System.err.println(e);
            }
        }
    }

    /**
     * close - Terminate Client Application
     */
    public void close() {
        try {
            in.close();
            out.close();
            socket.close();
        } catch(IOException e) {
            System.out.println("IOException: Failed to Close Connection");
            System.err.println(e);
        }
    }
}

class App {
    public static void main(String[] args) {
        Client client = new Client("127.0.0.1", 8080);
        client.start();
        client.close();
    }
}