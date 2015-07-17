package com.java.springsecurity;

public class ByteConverter {


	
	
	public static void main(String[] args) {
		
		String SPI = "1496"; 

//		String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
//		String str = "가나라다마바사아자타카타파하";
//		String str = "5053478148A345FC6440D360A7C3472114E7A350";  // 카메라 아이디는 40byte로 구성
		String str = "1496";  // 카메라 아이디는 40byte로 구성
		
		System.out.println("Byte.MAX_VALUE : " + Byte.MAX_VALUE);
		System.out.println("Byte.MIN_VALUE : " + Byte.MIN_VALUE);		
		
		
		// 문자열 byte 변환 
		byte array1[] = str.getBytes();

		for (byte data : array1) {

			System.out.print(data + " ");
		}
		
		System.out.println();
		
		System.out.println(byteArrayToHex(array1).toUpperCase()); 
		
	}

	// hex to byte[]
	public static byte[] hexToByteArray(String hex) {
		if (hex == null || hex.length() == 0) {
			return null;
		}

		byte[] ba = new byte[hex.length() / 2];
		for (int i = 0; i < ba.length; i++) {
			ba[i] = (byte) Integer
					.parseInt(hex.substring(2 * i, 2 * i + 2), 16);
		}
		return ba;
	}

	// byte[] to hex
	public static String byteArrayToHex(byte[] ba) {
		if (ba == null || ba.length == 0) {
			return null;
		}

		StringBuffer sb = new StringBuffer(ba.length * 2);
		String hexNumber;
		for (int x = 0; x < ba.length; x++) {
			hexNumber = "0" + Integer.toHexString(0xff & ba[x]);

			sb.append(hexNumber.substring(hexNumber.length() - 2));
		}
		return sb.toString();
	}

}
