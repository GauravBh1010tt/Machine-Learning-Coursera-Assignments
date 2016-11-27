function [c]= imgconvert( im )
[row,column,t]= size(im);
b=uint8 (zeros(row,column));
for i=1:column
    for j=1:row
        if(im(j,i,1)-im(j,i,2)>20 && im(j,i,1)-im(j,i,3)>20)
            b(j,i)=128;
           
        else
            b(j,i,1)=255;
            
        end
    end
end
c=imresize(b,[20 20],'bilinear');

end

