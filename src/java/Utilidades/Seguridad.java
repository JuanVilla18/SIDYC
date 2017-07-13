
package Utilidades;

import java.net.Socket;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class Seguridad{

    private SecretKey key;
    private Cipher cipher;
    private String algoritmo = "AES";
    private int keysize=16;
    public final static String key_Priv = "`700/k_N=NmYk$o$6@5mF*4[*x*\"7>vvY/YVgw0KkZ2_;B6<U/20U~2X8&|8D/7";

    public void addKey(String value){
        byte[] valuebytes = value.getBytes();
        key = new SecretKeySpec(Arrays.copyOf(valuebytes, keysize), algoritmo);      
    }

    public String encriptar(String texto){
        String value="";
        
        return value;
    }

     /**
 * Metodo para desencriptar un texto
 * @param texto Texto encriptado
 * @return String texto desencriptado
 */
    public String desencriptar(String texto){
        String str="";        
        
        return str;
    }
    
    public boolean isUsernameOrPasswordValid(String $cadena) {
        char[] cadena = $cadena.toLowerCase().toCharArray();
        //Compruebo la longitud
        if (cadena.length <= 6) {
            return false;
        }
        for (int i = 0; i < cadena.length; i++) {
            //Compruebo que no existan caracteres especiales (solamento los que podrian ser usados para una inyeccion SQL o perjudicar en la consulta);
            if (cadena[i] == ' ' || cadena[i] == '=' || cadena[i] == '?' || cadena[i] == '+' || cadena[i] == '*' || cadena[i] == '-' || cadena[i] == '%' || cadena[i] == '/' || cadena[i] == '.'
            || cadena[i] == ',' || cadena[i] == ';' || cadena[i] == '!' || cadena[i] == '<' || cadena[i] == '>' || cadena[i] == ':') {
                return false;
            }
        }
        return true;
    }
    
    public static int portIsOpen(String host, int puerto){
        int resp = 0;
        try {
            Socket portSocket = new Socket(host,puerto);
            portSocket.getPort();
            if(portSocket.getPort() == puerto){
                resp = puerto;
            }
            int respuesta = portSocket.getPort();
            System.out.println(respuesta);
        } catch (Exception e) {
        }
        return resp;
    }
}