function out = imageBlur(in, radius)
% This function takes a uint8 matrix "in" and applies blur of radius "radius."
% The output is the uint8 matrix with the blur applied.

[yDim, xDim, zDim] = size(in);

out = zeros(yDim, xDim, zDim);

for z=1:zDim
    
    for y=1:yDim
       
        for x=1:xDim
            
            if y <= radius
                
                if x <= radius
                    
                    out(y,x,z) = sum(in(1:y+radius, 1:x+radius, z), 'all')/(length(1:y+radius)*length(1:x+radius));
                    
                elseif x >= xDim - radius
                    
                    out(y,x,z) = sum(in(1:y+radius, x-radius:xDim, z), 'all')/(length(1:y+radius)*length(x-radius:xDim));
                    
                else
                    
                    out(y,x,z) = sum(in(1:y+radius, x-radius:x+radius, z), 'all')/(length(1:y+radius)*length(x-radius:x+radius));
                    
                end
                
            elseif y >= yDim - radius
                
                if x <= radius
                    
                    out(y,x,z) = sum(in(y-radius:yDim, 1:x+radius, z), 'all')/(length(y-radius:yDim)*length(1:x+radius));
                    
                elseif x >= xDim - radius
                    
                    out(y,x,z) = sum(in(y-radius:yDim, x-radius:xDim, z), 'all')/(length(y-radius:yDim)*length(x-radius:xDim));
                    
                else
                    
                    out(y,x,z) = sum(in(y-radius:yDim, x-radius:x+radius, z), 'all')/(length(y-radius:yDim)*length(x-radius:x+radius));
                    
                end
                
            else
                
                if x <= radius
                    
                    out(y,x,z) = sum(in(y-radius:y+radius, 1:x+radius, z), 'all')/(length(y-radius:y+radius)*length(1:x+radius));
                    
                elseif x >= xDim - radius
                    
                    out(y,x,z) = sum(in(y-radius:y+radius, x-radius:xDim, z), 'all')/(length(y-radius:y+radius)*length(x-radius:xDim));
                    
                else
                    
                    out(y,x,z) = sum(in(y-radius:y+radius, x-radius:x+radius, z), 'all')/(length(y-radius:y+radius)*length(x-radius:x+radius));
                    
                end
                    
            end
            
        end
        
    end
    
end

out = uint8(out);

end