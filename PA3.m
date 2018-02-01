% Jalil (Rohana) Aalab #100995788 P/A 3

% 2D Laplace Solver by Iteration

nx = 100;
ny = 100;
V = zeros([nx,ny]); % 100 x 100 matrix

r = 1; % This parameter corresponds to the row of V
c = 1; % This parameter corresponds to the column of V

% The values on four sides around a node are now set to zero
Side_1 = 0; 
Side_2 = 0;
Side_3 = 0;
Side_4 = 0;

for i = 1 : 1 : 100
   for x = 1 : 1 : 100
       V(x, 100) = 1;
       V(x, 1) = 0;
   end
    
    % Going through all rows, one column at a time
    for column = 1 : 1 : 100
        % Staying in one column and moving through all of its rows
        for row = 1 : 1 : 100
            if (r + 1) < 100
                Side_1 = V(r + 1, c);
            end
            
            if (r - 1) > 0
                Side_2 = V(r - 1, c);
            end
            
            if (c + 1) < 100
                Side_3 = V(r , c + 1);
            end 
            
            if (c - 1) > 0
                Side_4 = V(r , c - 1);
            end

            V(r,c) = (Side_1 + Side_2 + Side_3 + Side_4) / 4;
            
        end
    end
    
    surf(V);        % This makes a surface plot of the values
    pause(0.1);
    
    
end


        
