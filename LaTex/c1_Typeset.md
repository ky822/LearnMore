# 第一章：排版流程
### LaTex排版流程
在使用LaTeX进行排版时，从输入文本到最后在打印机上得到输出结果，通常需要经过如图所示的几个步骤。  
![LaTex排版流程](http://www.ibm.com/developerworks/cn/linux/l-latex/images/image001.jpg)  

* 编辑   

	用编辑器编写文稿（源文件），同时插入排版命令。需要注意的是，源文件必须是纯文本格式的，并且通常以.tex作为其扩展名（如hello.tex）。在Linux下建议使用XEmacs或者VIM编辑器，它们都能够识别LaTeX语法并且可以高亮显示LaTeX命令中的关键字。
	
* 编译  
 
	生成的LaTeX源文件中如果没有语法错误，那么就可以使用latex命令进行编译，生成DVI文件： 

		[xiaowp@xpcdev latex]$ latex hello.tex

	在处理过程中LaTeX会显示页号以及可能会有的错误和警告信息，如果在该过程中出现错误，则表明源文件中的某些排版命令有误，此时应该重新对源文件进行修改。当LaTeX成功结束这一处理过程后，将生成一个名为hello.dvi的文件，该文件是与设备无关的，它由格式化后的文本以及所需要的字体信息组成，但是与要使用的打印机的特征无关，该文件通常也称为元文件（metafile）。
	
* 查看  
 
	在正式打印输出或者照排制版之前，可以先在计算机屏幕上显示DVI文件，察看文件内容或者排版结果是否合乎要求，如果有不满意之外，则应重新对LaTeX源文件进行修改。在Linux下有许多软件可以用来查看DVI文件，其中最常用的是X-Window环境下的xdvi，下面的命令可以用来查看hello.dvi： 
	
		[xiaowp@xpcdev latex]$ xdvi hello.dvi 
	由于DVI文件是与设备无关的，因而用xdvi在屏幕上看到的结果是不会受到输出设备、操作系统、硬件环境等因素影响的。
	
* 打印  
 
	DVI元文件中的信息最终要被转化成可以在特定打印机上输出的形式，该过程是由一个称为打印驱动程序来完成的，它是与具体打印机相关的。例如，在Linux下可以用下面的命令将hello.dvi送到惠普激光打印机上打印：
		
		[xiaowp@xpcdev latex]$ dvihp hello.dvi

* 输出   

	在很多场合下，使用latex得到的DVI文件并不总是需要打印出来，而是要转化成更加便于阅读的格式，如PDF（Portable Document Format）或者PS（PostScript），LaTeX系统提供了相应的工具在这些格式之间进行转换。要将hello.dvi转化成hello.pdf和hello.ps，可以分别使用如下的命令：
	
		[xiaowp@xpcdev latex]$ dvipdf hello.dvi 
		[xiaowp@xpcdev latex]$ dvips hello.dvi -o
