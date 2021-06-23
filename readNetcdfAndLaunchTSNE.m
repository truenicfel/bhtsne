% QC = ncread('E:\Dokumente\FAUBox\Semester4\Masterarbeit\climate-precipitation\lffd20080701000000.nc', "QC");
% %  reduce
% xMax = 1542/2;
% yMax = 1542/2;
% qcSmall = squeeze(QC(xMax:1542,yMax:1542,45));
% 
% tSneMatrix = zeros(xMax*yMax*1,3);
% 
% for  rlat = 1:yMax
%     for rlon = 1:xMax
%         rowIndex = level*rlat*rlon;
%         qcValue = qcSmall(rlon, rlat, level);
%         tSneMatrix(rowIndex, 1) = rlon;
%         tSneMatrix(rowIndex, 2) = rlat;
%         tSneMatrix(rowIndex, 3) = qcValue;
%     end
% end
% 
% 
% rng default % for reproducibility
% Y = tsne(tSneMatrix);
% scatter(Y(:,1),Y(:,2));