function newAntGrid = applySenseExtended(antGrid, pherGrid)

global EMPTY

n = length(antGrid) - 2;
newAntGrid = antGrid;
for i = 2:n+1
    for j = 2:n+1
        if (antGrid(i, j) ~= EMPTY)
            site = antGrid(i, j);
            Nant = antGrid(i-1, j);
            Eant = antGrid(i, j+1);
            NEant = antGrid(i-1,j+1);
            SEant = antGrid(i+1,j+1);
            Sant = antGrid(i+1, j);
            Want = antGrid(i, j-1);
            NWant = antGrid(i-1,j-1);
            SWant = antGrid(i+1,j-1);
            Npher = pherGrid(i-1, j);
            Epher = pherGrid(i, j+1);
            NEpher = pherGrid(i-1,j+1);
            SEpher = pherGrid(i+1,j+1);
            Spher = pherGrid(i+1, j);
            Wpher = pherGrid(i, j-1);
            NWpher = pherGrid(i-1,j-1);
            SWpher = pherGrid(i+1,j-1);
            newAntGrid(i, j) = sense(site, Nant, Eant, Sant, Want, NEant, NWant, SEant, SWant, Npher, Epher, Spher, Wpher, NEpher, NWpher, SEpher, SWpher);
        end
    end
end