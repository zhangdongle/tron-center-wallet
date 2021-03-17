package com.dadsunion.tron.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * @Auther: little liu
 * @Date: 2020/09/03/16:03
 * @Description:
 */
public class TransformUtil {


	/**
	 * 长度不够前面补0
	 *
	 * @param str
	 * @param strLength
	 * @return
	 */
	public static String addZeroForNum(String str, int strLength) {


		int strLen = str.length();
		if (strLen < strLength) {


			while (strLen < strLength) {


				StringBuffer sb = new StringBuffer();
				sb.append("0").append(str);// 左补0
				// sb.append(str).append("0");//右补0
				str = sb.toString();
				strLen = str.length();
			}
		}
		return str;
	}

	public static String delZeroForNum(String str) {


		return str.replaceAll("^(0+)", "");
	}

	public static String getSeqNumByLong(Long l, int bitCount) {


		return String.format("%0" + bitCount + "d", l);
	}


	/**
	 * 字符串转换为16进制字符串
	 *
	 * @param s
	 * @return
	 */
	public static String stringToHexString(String s) {


		String str = "";
		for (int i = 0; i < s.length(); i++) {


			int ch = s.charAt(i);
			String s4 = Integer.toHexString(ch);
			str = str + s4;
		}
		return str;
	}

	/**
	 * 16进制字符串转换为字符串
	 *
	 * @param s
	 * @return
	 */
	public static String hexStringToString(String s) {


		if (s == null || s.equals("")) {


			return null;
		}
		s = s.replace(" ", "");
		byte[] baKeyword = new byte[s.length() / 2];
		for (int i = 0; i < baKeyword.length; i++) {


			try {


				baKeyword[i] = (byte) (0xff & Integer.parseInt(s.substring(i * 2, i * 2 + 2), 16));
			} catch (Exception e) {


				e.printStackTrace();
			}
		}
		try {


			s = new String(baKeyword, "gbk");
			new String();
		} catch (Exception e1) {


			e1.printStackTrace();
		}
		return s;
	}

	/**
	 * 16进制表示的字符串转换为字节数组
	 *
	 * @param s 16进制表示的字符串
	 * @return byte[] 字节数组
	 */
	public static byte[] hexStringToByteArray(String s) {


		int len = s.length();
		byte[] b = new byte[len / 2];
		for (int i = 0; i < len; i += 2) {


			// 两位一组，表示一个字节,把这样表示的16进制字符串，还原成一个字节
			b[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4) + Character.digit(s.charAt(i + 1), 16));
		}
		return b;
	}

	/**
	 * byte数组转16进制字符串
	 *
	 * @param bArray
	 * @return
	 */
	public static final String bytesToHexString(byte[] bArray) {


		StringBuffer sb = new StringBuffer(bArray.length);
		String sTemp;
		for (int i = 0; i < bArray.length; i++) {


			sTemp = Integer.toHexString(0xFF & bArray[i]);
			if (sTemp.length() < 2)
				sb.append(0);
			sb.append(sTemp.toUpperCase());
		}
		return sb.toString();
	}


	/**
	 * @param: [hex]
	 * @return: int
	 * @description: 按位计算，位值乘权重
	 */
	public static int hexToDecimal(String hex) {


		int outcome = 0;
		for (int i = 0; i < hex.length(); i++) {


			char hexChar = hex.charAt(i);
			outcome = outcome * 16 + charToDecimal(hexChar);
		}
		return outcome;
	}

	/**
	 * @param: [c]
	 * @return: int
	 * @description:将字符转化为数字
	 */
	public static int charToDecimal(char c) {


		if (c >= 'A' && c <= 'F')
			return 10 + c - 'A';
		else
			return c - '0';
	}


	/**
	 * 把原始字符串分割成指定长度的字符串列表
	 *
	 * @param inputString
	 *            原始字符串
	 * @param length
	 *            指定长度
	 * @return
	 */
	public static List<String> getStrList(String inputString, int length) {


		int size = inputString.length() / length;
		if (inputString.length() % length != 0) {


			size += 1;
		}
		return getStrList(inputString, length, size);
	}

	/**
	 * 把原始字符串分割成指定长度的字符串列表
	 *
	 * @param inputString
	 *            原始字符串
	 * @param length
	 *            指定长度
	 * @param size
	 *            指定列表大小
	 * @return
	 */
	public static List<String> getStrList(String inputString, int length, int size) {


		List<String> list = new ArrayList<String>();
		for (int index = 0; index < size; index++) {


			String childStr = substring(inputString, index * length, (index + 1) * length);
			list.add(childStr);
		}
		return list;
	}

	/**
	 * 分割字符串，如果开始位置大于字符串长度，返回空
	 *
	 * @param str
	 *            原始字符串
	 * @param f
	 *            开始位置
	 * @param t
	 *            结束位置
	 * @return
	 */
	public static String substring(String str, int f, int t) {


		if (f > str.length())
			return null;
		if (t > str.length()) {


			return str.substring(f, str.length());
		} else {


			return str.substring(f, t);
		}
	}

}