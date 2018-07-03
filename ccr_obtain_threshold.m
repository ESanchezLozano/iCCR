function threshold = ccr_obtain_threshold( params , pts , model )

if strcmp( func2str(params.error_fun), 'detectLost_SVM' )
    threshold = 4;
    if size( pts , 1 ) > 1
        params_pts = shapeRegister( pts , model.shModel );
        
        if abs( params_pts(5) ) > 150
            threshold = 3;
        end;
    end
end

end


