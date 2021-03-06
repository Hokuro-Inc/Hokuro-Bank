package es.uco.iw.utilidades;

import java.util.Random;
import java.util.UUID;

public class GeneradorID {

	/**
	 * Genera un IBAN aleatorio para una cuenta bancaria
	 * 
	 * @return IBAN para la cuenta bancaria
	 */
	public static String GenerarIBAN() {
		Random random = new Random();
		String iban = "ES";
		iban += random.nextInt(10);
		iban += random.nextInt(10);
		
		for (int  i = 0; i < 20; i++) {
			if (i % 4 == 0) {
				iban += " ";
			}
			
			iban += random.nextInt(10);
		}
		
		return iban;
	}
	
	/**
	 * Genera un numero de tarjeta aleatorio
	 * 
	 * @return Numero de tarjeta
	 */
	public static String GenerarNumTarjeta() {
		Random random = new Random();
		String numTarjeta = "" + random.nextInt(10);
		
		for (int  i = 1; i < 16; i++) {
			if (i % 4 == 0) {
				numTarjeta += " ";
			}
			
			numTarjeta += random.nextInt(10);
		}
		
		return numTarjeta;
	}
	
	/**
	 * Genera una id para una transacción bancaria
	 * 
	 * @return Id de la transacción bancaria
	 */
	public static String GenerarIdTransaccion() {
		return UUID.randomUUID().toString().replace("-", " ");
	}
	
}
