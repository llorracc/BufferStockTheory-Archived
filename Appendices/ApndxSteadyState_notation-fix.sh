#!/bin/bash
cd /Volumes/Data/Papers/BufferStockTheory/BufferStockTheory-Latest/Appendices/ApndxSteadyState
/Volumes/Data/Tools/delete-Junk-Files-LaTeX.sh `realpath .`
rm *.dep *.pdf *.bib *.aux

rpl -f '\DistSetSprtFull' '\SetFullCnts'       *  # Full set continuous state spc
rpl -f '\DistSetSprtTrnc' '\SetTrncCnts'       *  # Truncated continuous space
rpl -f '\SetSub'          '\SetPartCnts'       *  # Any set in full set in continuous
rpl -f '\Pcurl'           '\PrbFullCnts'       *  # prob structure on full set
rpl -f '\Trns'            '\KrnSetNxtFmPntNow' *  # conditional stochastic kernel ...
rpl -f '\trns'            '\DnsPntNxtFmPntNow' *  # ... 'admits a density function'
rpl -f '\pContAprx'       '\DnsPntAprx'        *  # piecewise const approx density
rpl -f '\pDens'           '\DnsPnt'            *  # point density
rpl -f '\Pmeas'           '\PrbEvntSqnc'       *  # Sequence of events 
rpl -f '\StPls'           '\NumAprxStesPls'    *  # Number of approx states+1
rpl -f '\StNum'           '\NumAprxStes'       *  # Number of approximating states
rpl -f '\ptsLoop'         '\Loop'              *  # 
rpl -f '\pDistDscr'       '\PrbBinNxtFmPntNow' *  # Mass associated with discrete bins
rpl -f '\TrnsSetSprtTrnc' '\TnsTrncCnts'       *  # Transtion on truncated cont space
rpl -f '\PTrnsDscr'       '\TnsMrkv' * # Transtion on Markov chain
rpl -f '\PTrns'           '\TnsMrkv' * # Redundant 
rpl -f '\this'            '\thisBin' * #
rpl -f '\that'            '\thatBin' * #
rpl -f '\point'           '\pnt'     * #
