
function []=col_space(a)
    A=a
    arr=[-1 -1 -1]
    count=0
    disp('In func')
    disp('Performing Gaussian elimination')
    a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
    a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
    disp(a)
    a(3,:)=a(3,:)-(a(3,2)/a(2,2))*a(2,:)
    disp(a)
    for i=1:3
        for j=1:3
            if(a(i,j)<>0)
                disp('is a pivot column',j,'column')
                count=count+1
                //disp(arr(j))
                arr(j)=1;
                break
            end
        end
    end
    disp(count,'Number of pivots =' )
    disp(count,'Hence, rank of the matrix =')
    disp(count,'Dimension of column space = rank of the matrix = ')
    disp('The basis for the column space is as follows')
    for i=1:3
        if(arr(i)==1)
            temp=3*(i-1)+1
            disp(':',i,'Column vector')
            disp(A(temp))
            disp(A(temp+1))
            disp(A(temp+2))
            //for j=1:3
            //    disp(A(i)(j))
            //end
        end
    end
endfunction



function []=row_space(a)
    A=a
    arr=[-1 -1 -1]
    count=0
    disp('In func')
    disp('Performing Gaussian elimination')
    a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
    a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
    disp(a)
    a(3,:)=a(3,:)-(a(3,2)/a(2,2))*a(2,:)
    disp(a)
    for i=1:3
        for j=1:3
            if(a(i,j)<>0)
                disp('is a pivot row',i,'row')
                count=count+1
                //disp(arr(j))
                arr(j)=1;
                break
            end
        end
    end
    disp(count,'Number of pivots =' )
    disp(count,'Hence, rank of the matrix =')
    disp(count,'Dimension of row space = rank of the matrix = ')
    disp('The basis for the row space is as follows')
    for i=1:3
        if(arr(i)==1)
            temp=i
            disp(':',i,'Row vector')
            disp(A(temp))
            disp(A(temp+3))
            disp(A(temp+6))
            //for j=1:3
            //    disp(A(i)(j))
            //end
        end
    end
endfunction




A=input("Enter 3x3 coeffcient matrix: ");
col_space(A)
row_space(A)
null_space=kernel(A); //kernel computes the null space of the given matrix
disp(null_space,'Null Space=');
Left_Null_space=kernel(A');
disp(Left_Null_space,'Left Null Space=');
