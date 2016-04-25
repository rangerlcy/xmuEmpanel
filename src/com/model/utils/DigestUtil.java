
package com.model.utils;

import java.security.MessageDigest;

/**
 * MD5加密, 有加盐
 * @author Ranger_Sky
 *
 */
public class DigestUtil {
	public static String encryptPWD(String sPassword) {
		byte cResult[] = new byte[16];
		String sResult = "";
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(("www.MD5.com.cn" + sPassword).getBytes());
			cResult = md.digest();

			for (int i = 0; i < cResult.length; i++) {
				if (cResult[i] < 0) {
					cResult[i] += 128;
				}
				String sTemp = Integer.toHexString(cResult[i]).toUpperCase();
				if (cResult[i] < 16) {
					sTemp = "0" + sTemp;
				}
				sResult += sTemp;
			}
		} catch (Exception e) {
			sResult = "";
		}
		return sResult;
	}
	
	
	public static void main(String[] args) {
		System.out.println(DigestUtil.encryptPWD("admin"));
	}
}

