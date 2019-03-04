%%
% 1. M文件；

%{
        一、命令文件；

        二、函数文件；

    命令文件没有输入，没有返回；

    命令文件结果返回工作空间，而函数文件为局部变量，执行完毕被清除；

    命令文件可以直接运行，函数文件需要调用形式的运行；

}%


%%
% 2. 顺序结构；

%{

        输入函数：   input

       A = input（“输入数字”）；


        输出    :    disp
       disp（’this is a MATLAB‘）
       disp(A) [ 不含没有意义的空格 ]


        暂停函数：   pause (n)  N秒钟；

}%



%%
% 3. 分支结构；

%{
        一、if分支语句:

        A = input('输入A');
            if A > 10
                disp(A)
            end
        
        二、双分段的if 分段函数：

            x = [0:0.1:10];
            y = cos(x(find(x<10)));

        或者：
            a = input('a')
        if a>10;
            y = log(a)
        else(if a<10) 
            y = cos(a);
        end
    

         二、switch 语句：[ 不需要break ]

        switch 表达式
            case 表达式1
                    语句一
            case 表达式2
                    语句二
            case 表达式3
                    语句三
                …………
            otherwise 
                    语句N
         end

            
}%

%%
% 3. 试探结构；

%{
        try 分支 ；
       试探性的分支语句；若语句执行错误，不执行，或执行其他语句；

            try
                语句组；
            catcg
                语句组；
            end

}%

