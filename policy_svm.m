function [ val , counter ] = policy_svm( distance , i , counter )

val = 0;

d_last = distance( i , end );

t_m = max( 1 , i - 10 );


%if i > 50 
% if i > 3 
%     if d_last <  median( distance( i-1:-1:max(1,i-20) , end ) ) && d_last < 2
%         if counter > 3
%             val = 1; counter = 1;
%         else
%             counter = counter + 1;
%         end;
%     end;
%     
% end

if d_last > 8
    if counter > 3
        val = 1; counter = 1;
    else
        counter = counter + 1;
    end
end