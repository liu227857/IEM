function volume_rslt(T, V, S)
Vol = TetVolume(T, V);
VolS = TetVolume(T, S);
VolRatio = abs( VolS ./ Vol .*sum(Vol) ./ sum(VolS) );

Fidx = VolS < 0;
Fnum = min([nnz(Fidx), nnz(~Fidx)]);
fprintf('\n');
fprintf('>---------------------------<\n')
fprintf(' Folded tetrahedra: %4d\n', Fnum);
fprintf(' Volume distortion: %.2e\n', var(VolRatio));
fprintf('>---------------------------<\n')
end



function Vol = TetVolume(T, V)
a = V(T(:,1),:);
b = V(T(:,2),:);
c = V(T(:,3),:);
d = V(T(:,4),:);
Vol = -sum((a-d).*cross(b-d,c-d),2) ./6;
end