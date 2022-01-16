package utils;

import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.security.InvalidKeyException;

public class RC6
{
	private final int ROUNDS =16, P = 0xB7E15163,Q = 0x9E3779B9;;
	byte[] in, out, key;

	int start=0;
	int[] S = new int[4*ROUNDS + 8];
	int[] t, R= new int[9];

	private int rotl(int val, int amount)
	{
		return (val << amount) | (val >>> (32-amount));
	}

	private int rotr(int val, int amount)
	{
		return (val >>> amount) | (val << (32-amount));
	}

	public void printFile(String fileName)throws Exception
	{
		try{
		FileInputStream fin = new FileInputStream(fileName);

		int ch;
		while((ch=fin.read()) != -1)
		{
			//System.out.print((char)ch);
		}
		fin.close();
		}
	catch(Exception e){}
	}




public byte[] checkpasswordTF(String buffer2)throws InvalidKeyException, Exception
{
	try{
	byte[] key =new byte[16];
	boolean f =false;
	for(int i=0;i<buffer2.length();i++)
	    key[i]=(byte)buffer2.charAt(i);
	if(key == null)
	   throw new InvalidKeyException("RAW bytes missing");
	else
 	      if(buffer2.length()<16)
		{
			for(int i=15;i>buffer2.length();i--)
				key[i]=0;
		}
            return key;
	}
	catch(Exception e){}
	return key;
}
//-----------------------------------------------------------------------

public final void generateSubKeys(byte p[])throws Exception,InvalidKeyException
{
	try{
	key=p;
	int len = key.length;
	int c   = len/4;
	int[] L = new int[c];
	for(int off=0, i=0; i<c; i++)
	L[i] = ((key[off++]&0xFF)      ) |
	((key[off++]&0xFF) <<  8) |
	((key[off++]&0xFF) << 16) |
	((key[off++]&0xFF) << 24);

	S[0] = P;
	for(int i=1; i<=(4*ROUNDS+7); i++)
		S[i] = S[i-1] + Q;

	int A=0, B=0, i=0, j=0, v=c>(4*ROUNDS+8)?3*c:3*(4*ROUNDS+8);
	for(int s=1; s<=v; s++)
        	{
		A = S[i] = rotl( S[i]+A+B, 3 );
		B = L[j] = rotl( L[j]+A+B, A+B );
		i = (i+1) % (4*ROUNDS+8);
		j = (j+1) % c;
	}
	}
	catch(Exception e){}
}


//-------------------------------------------------------------------------------

	public void readFile(String fileName)throws Exception,InvalidKeyException
	{
		try{
		FileInputStream fin = new FileInputStream(fileName);
		String buffer= new String();

		int ch;
		while((ch=fin.read()) != -1)
		{
			buffer = buffer+""+(char)ch;
		}
		fin.close();

		int size=buffer.length();
		boolean flag=false;
		if(size%32!=0)
		{
			size+=32-(size%32);
			flag= true;
		}
		//System.out.println("size of in array ="+size);
		in = new byte[size];
		for(int i=0;i<buffer.length();i++)
			in[i]=(byte)buffer.charAt(i);

		if(flag)
		for(int i=buffer.length();i<size; i++)
				in[i]=0;
		}
	catch(Exception e){}
	}
//-----------------------------------------------------------------------



public final void coreCrypt(String fname,byte[] pwd)throws Exception, FileNotFoundException,InvalidKeyException
	{
	     try{
		generateSubKeys(pwd);
		t= new int[in.length/4];
		int j= in.length/32;
		for(int i=0 ; i<j ; i++)
		{	Crypt(i*32,fname);

		}

		FileOutputStream fos = new FileOutputStream(fname);
		DataOutputStream dos = new DataOutputStream(fos);
		byte a1,a2,a3,a4;
		for(int i=0;i<start;i++)
		{
			//dos.writeInt(t[i]);

			a1=  (byte)(t[i]); 		dos.writeByte(a1);
			a2 = (byte)(t[i] >>>  8);	dos.writeByte(a2);
			a3= (byte)(t[i]>>> 16);	dos.writeByte(a3);
			a4 = (byte)(t[i]>>> 24);	dos.writeByte(a4);
		}
	     }
	catch(Exception e){}
	}


//-------------------------------------------------------------------------------


public final void Crypt(int inOffset,String fname)throws Exception, InvalidKeyException
	{

		try{
		R[1]= ((in[inOffset] & 0xFF)      ) |
		((in[++inOffset] & 0xFF) <<  8) |
		((in[++inOffset] & 0xFF) << 16) |
               		((in[++inOffset] ) << 24);

		for(int i=2;i<=8;i++)
		{
			R[i]= ((in[++inOffset] & 0xFF)) | ((in[++inOffset] & 0xFF) <<  8) |
			((in[++inOffset] & 0xFF) << 16) | ((in[++inOffset] ) << 24);
		}


		int k,l,m,n,temp;
		R[2] += S[0];
		R[4] += S[1];
		R[6]+= S[2];
		R[8]+= S[3];
		for(int i=1; i<=ROUNDS;i++)
		{
	 		k = rotl( R[2]*(2*R[2]+1), 5 );
	 	 	l = rotl( R[4]*(2*R[4]+1), 5 );
			m = rotl( R[6]*(2*R[6]+1), 5 );
			n = rotl( R[8]*(2*R[8]+1), 5 );
			R[1] = rotl( (R[1]^k), l) + S[4*i];
			R[3] = rotl( (R[3]^l), k ) + S[4*i +1];
			R[5] = rotl( (R[5]^m), n ) + S[4*i +2];
			R[7] = rotl( (R[7]^n),m) + S[4*i +3];
		 temp=R[1]; R[1]=R[2]; R[2]=R[3]; R[3]=R[4]; R[4]=R[5];R[5]=R[6];R[6]=R[7];R[7]=R[8];R[8]=temp;
		}
		R[1]+= S[4*ROUNDS+4];
		R[3]+= S[4*ROUNDS+5];
		R[5]+= S[4*ROUNDS+6];
		R[7]+= S[4*ROUNDS+7];

		for(int i=1; i<9 ; i++)
		{
			t[start++]=R[i];
		}
		}
	catch(Exception e){}
	}

//-------------------------------------------------------------------------------
		private long getFileSize(String filename)
	 {

		File file = new File(filename);

    		if (!file.exists() || !file.isFile())
		 {
			//System.out.println("File doesn\'t exist");
			return -1;
	    	}

   		//Here we get the actual size
   		return file.length();
 	}

//-------------------------------------------------------------------------------

	public final void coreDecrypt(String fileName,byte[] pwd,String decFile)throws Exception,InvalidKeyException
	{
		generateSubKeys(pwd);
		int p=(int)getFileSize(fileName);

		FileInputStream fin = new FileInputStream(fileName);
		String buffer= new String();
		int ch;
		while((ch=fin.read()) != -1)
		{
			buffer = buffer+""+(char)ch;
		}
		fin.close();

		int size=buffer.length();
		boolean flag=false;
		if(size%32!=0)
		{
			size+=32-(size%32);
			flag= true;
		}
		//System.out.println("size of tempByte array ="+size);
		byte[] tempByte =  new byte[size];
		for(int i=0;i<buffer.length();i++)
			tempByte[i]=(byte)buffer.charAt(i);

		out= new byte[size];
		if(flag)
		for(int i=buffer.length() ; i<size ;  i++)
				tempByte[i]=0;

		int x=-1,i,a=0;
		for(i=-1; i<size-1; )
		{
			for(int j=1;j<=8;j++)
				//R[j] = t[x];
			{

			R[j]= ((tempByte[++i] & 0xFF)) |
				((tempByte[++i] & 0xFF) <<  8) |
				((tempByte[++i] & 0xFF) << 16) |
               				((tempByte[++i] ) << 24);
			}
			//System.out.println("value of i = "+i) ;
			Decrypt(32*a);
			a++;
		}
		FileOutputStream fout = new FileOutputStream(decFile);
		BufferedOutputStream bout = new BufferedOutputStream(fout,1024*5);

		i=0;
		char chr;
		while( i< (size))
		{
			//chr=(char)
			bout.write(out[i++]);
		}
		bout.close();
	}


private final void Decrypt(int outOffset)throws Exception,InvalidKeyException
{
	try{
		int k,l,m,n,temp,len=outOffset;
	R[7] -= S[4*ROUNDS+7];
	R[5]-= S[4*ROUNDS+6];
	R[3]-= S[4*ROUNDS+5];
	R[1]-= S[4*ROUNDS+4];
	for(int i=ROUNDS; i>=1;i-- )
     	{
	temp = R[8]; R[8] = R[7]; R[7] =R[6]; R[6]=R[5];
	R[5] =R[4];R[4] =R[3]; R[3] =R[2]; R[2]=R[1];R[1] =temp;

	n = rotl( R[8]*(2*R[8]+1), 5 );
	m= rotl( R[6]*(2*R[6]+1), 5 );
	l= rotl( R[4]*(2*R[4]+1), 5 );
	k= rotl( R[2]*(2*R[2]+1), 5 );
	R[7] = rotr( R[7]-S[4*i+3], m) ^ n;
	R[5] = rotr( R[5]-S[4*i+2], n ) ^ m;
	R[3]= rotr( R[3]-S[4*i+1], k ) ^ l;
	R[1] = rotr( R[1]-S[4*i], l ) ^ k;
	}
	R[8] -= S[3];
	R[6]-= S[2];
	R[4]-= S[1];
	R[2]-= S[0];

	out[outOffset] = (byte)(R[1]);
	out[++outOffset] = (byte)(R[1] >>>  8);
	out[++outOffset] = (byte)(R[1]>>> 16);
	out[++outOffset] = (byte)(R[1]>>> 24);

	for(int i=2;i<9;i++)
	{
		out[++outOffset] = (byte)(R[i]       );
		out[++outOffset] = (byte)(R[i] >>>  8);
		out[++outOffset] = (byte)(R[i]>>> 16);
		out[++outOffset] = (byte)(R[i] >>> 24);
	}
	}
	catch(Exception e){}
}

}
