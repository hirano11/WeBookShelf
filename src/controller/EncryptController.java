package controller;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

public class EncryptController {

	public SecretKey generateKey() throws NoSuchAlgorithmException {

        KeyGenerator keyGen = KeyGenerator.getInstance("AES");
        keyGen.init(128);

        return keyGen.generateKey();
    }

	public IvParameterSpec generateIV() {

        SecureRandom random = new SecureRandom();
        byte[] iv = new byte[16];
        random.nextBytes(iv);

        return new IvParameterSpec(iv);
    }

	public byte[] encrypto(String plainText, SecretKey key, IvParameterSpec iv) throws GeneralSecurityException {

        // 書式:"アルゴリズム/ブロックモード/パディング方式"
        Cipher encrypter = Cipher.getInstance("AES/CBC/PKCS5Padding");
        encrypter.init(Cipher.ENCRYPT_MODE, key, iv);

        return encrypter.doFinal(plainText.getBytes());
    }

	public String decrypto(byte[] cryptoText, SecretKey key, IvParameterSpec iv) throws GeneralSecurityException {

        // 書式:"アルゴリズム/ブロックモード/パディング方式"
        Cipher decrypter = Cipher.getInstance("AES/CBC/PKCS5Padding");
        decrypter.init(Cipher.DECRYPT_MODE, key, iv);

        return new String(decrypter.doFinal(cryptoText));
    }

}
