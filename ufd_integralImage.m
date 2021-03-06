function I=ufd_integralImage(X)
    % function I=ufd_integralImage(X)
    % Input: X is a matrix representing a gray-scale image
    % Output: I is the integral image of X

    % upcasting the matrix representing the image to double
    % to make sure we don't lose data 
    X = im2double(X);

    % first the cumulative sum of the columns than another cumulative
    % sum nested for the rows with the new values to calculate the 
    % integral image (or the summed area table)
    I = cumsum(cumsum(X, 2), 1);
    
    % if we where to use for loops
    % numcol = columns(X);
    % numrow = rows(X);
    % for row = 1:numrow
    %    for col = 1:numcol
    %        if row > 1 && col > 1
    %            I(row,col) = X(row,col) + I(row-1,col) + I(row,col-1) - I(row-1,col-1);
    %        elseif row > 1
    %            I(row,col) = X(row,col) + I(row-1,col);
    %        elseif col > 1
    %            I(row,col) = X(row,col) + I(row,col-1);
    %        else
    %            I(row,col) = X(row,col);
    %        endif
    %    endfor
    % endfor
    
endfunction