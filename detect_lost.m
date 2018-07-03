function distance = detect_lost( img , pts , params )

img = image_read( img );
if isempty( pts )
    distance = -1;
elseif pts(1) == -1
    distance = -1;
elseif ( ( max( pts(:,1) ) - min(pts(:,1) ) )*( max( pts(:,2) ) - min(pts(:,2) ) ) < 900 )
    distance = -1;
else
    distance = params.error_fun( params.lost_model , img , pts );
end

end