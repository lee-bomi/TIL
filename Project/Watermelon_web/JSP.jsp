package green;

import java.io.File;
import java.net.URI;

public class FileExample {

  public static void main(String[] args) throws Exception {
    File dir = new File("C:/Temp/Dir");
    File file1 = new File("C:/Temp/file1.txt");
    File file2 = new File("C:/Temp/file2.txt");
    File file3 = new File("C:/Temp/file3.txt");

    if(dir.exists() === false) {dir.mkdir();}                 // 디렉토리생성
    if(file1.exists() === false) {file1.createNewFile();}     // 파일생성    => 둘이 명령어 다름 주의
    if(file2.exists() === false) {file2.createNewFile();}
    if(file3.exists() === false) {file3.createNewFile();}


    File temp = new File("C:/Temp");
    File[] contents = temp.listFiles();                                          //listFiles() : dir혹은 포함된 파일 및 서브디렉토리 전부를 file배열로 리턴
    System.out.println("날짜         시간         형태        크기     이름");
    System.out.println("----------------------------------------------------");
    SimpleDataFormat sdf = new SimpleDataFormat("yyyy-MM-DD a HH:mm");            // 새 정보들을 가져와 넣을 객체생성
    for(File file : contents){                                                    // advanced for문(File형 자료형에 contents배열의 엘리먼트를 받아와서 file값에 저장)
      System.out.println("sdf.format(new Date(file.lastModified());               // lastModified() : 마지막 수정날짜 및 시간을 리턴 (long타입리턴)
                                                                                  // 정수타입을 날짜객체타입으로 바꿔준다
                                                                                  // .format : 원하는 모양으로 출력한다(괄호안을 파라미터로 준다.)
    
      if(file.isDirectory()) {
        System.out.println("dir이 존재합니다. <DIR>의 이름은" + file.getName());
      } else {
        System.out.println("dir이 없습니다. 파일의 길이는" + file.length() + "파일의 이름은" +  file.getName);
      }                                                                        
        
      }
  }
}

----------------------------------------------------
# FileInputStream

package green;

import java.io.File;
import java.net.URI;

public class FileExample {

  // 파일로부터 바이트단위로 "읽어들일떄"(그림,오디오,비디오,텍스트등 모든종류 가능)

  // 객체생성방법
   FileInputStream fis = new FileInputStream("C:/Temp/image.gif");        // 첫번째 방법
   
   File file = new File("C:/Temp/image.gif");
   FileInputStream fis = new FileInputStream(file);                       // 두번째 방법
  

                    // FileInputStream이 생성되면 파일과 직접연결되므로, 파일이없으면 fileNotFoundException에러난다
                    // 그러므로 try-catch문을 반드시 써줘야함. 
   
                    
  // try-catch문 사용
    try {
      FileInputStream fis = new FileInputStream("C:/Temp/image.gif");
      int data;
      while((data = fis.read()) != -1) {
        System.out.write(data);
      }
      fis.close();
    }catch(Exception e) {
      e.printStackTrace();                               // 가장 자세한 예외정보 제공
    } finally {
      // finally는 보통 해당함수를 닫는 명령을 넣는다
    }



    ----------------------------------------------------
    # FileOutputStream

    package green;

    import java.io.File;
    import java.net.URI;

    public class FileExample {
      // 객체생성방법은 FileInputStream과 동일하지만
      //FileInputStream은 데이터 읽어들일때, FileOutputStream은 데이터를 저장할때 사용
      // 저장하고자하는 파일이 이미 존재할경우 데이터출력하게되면 파일을 덮어쓰므로, 기존데이터 끝에 데이터추가할경우
      FileOutputStream fis = new FileOutputStream("C:/Temp/image.gif", true);
      FileOutputStream fis = new FileOutputStream(file, true);                   // 기존값을 true처리하면서 남기는건가봄
      
    }