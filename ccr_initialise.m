function [ model , data ] = ccr_initialise( model , obj , video )


model.sigma_inv = inv( diag( model.shModel.L_shape(1:20) ));
sigma = blkdiag( 10*eye(4) , diag( model.shModel.L_shape(1:20) ) / max( model.shModel.L_shape ) );
mu = zeros( 24 , 1 );


for r = 1 : 3
    model.regressor{r}.A = [ mu  mu*mu' + ( sigma )];
    model.regressor{r}.B_inv = inv( [1 mu'; model.regressor{r}.A]);
end

np = size( model.shModel.s0 , 1 );
if ~isempty( video )
    data.tracked_pts = zeros(np,2,obj.NumberOfFrames);
    data.lost = zeros(1,obj.NumberOfFrames);
else
    data.tracked_pts = zeros(np,2,5000);
    data.lost = zeros(1,5000);
end;

if ~isempty( video )
    data.distance = zeros(obj.NumberOfFrames,1);
else
    data.distance = zeros( 5000 , 1);
end;
data.counter = 1;
data.disp = [];
 
   


