:Class index : MiPageTemplate
     ∇Compose
  :access public

   dp←'dp'Add _.ejDatePicker(3↑⎕TS)'dd-MM-yyyy'
   dp.On'change' 'SetCalcDate'('newdate' 'argument' 'value')
   'message'Add _.div
   
   Add _.h2 'Collateral legal agreements'   
   
      VALUES←1 4 ⍴ 'CITY' 'CSA' 41234.45 'USD'
      VALUES⍪←1 4 ⍴ 'BNP-AS' 'GMRA' 6234.45 'EUR'
      COLTITLES ← 'Collateral legal agreement ID' 'Type' 'Suggested margin' 'Currency' 
      COLNAMES  ← 'pCLAID' 'pCLATYPE' 'pMARGSUG' 'pCUR' 
      CELLWIDTHS← 10 5 4 3
      CELLALIGN ← 'left' 'right' 'right' 'center'
      FORMATS   ← '' '{0:n1}' '{0:n0}' '{0:c0}' 
   
      mygrid←Add _.ejGrid (VALUES COLTITLES CELLWIDTHS)
      mygrid.CellFormats←FORMATS
      mygrid.ColNames   ←COLNAMES
      mygrid.CellAlign  ←CELLALIGN
      'allowPaging' 'allowSorting' 'allowResizing' mygrid.Set¨ _true
      
      captions←'Collateral positions' 'Market positions' 'Available positions'
      contents←⊂'/Data/coll-pos.txt' ⍝ First one
      contents,←⊂'/Data/mark-pos.txt' ⍝ First one
      contents,←⊂'/Data/avail-pos.txt' ⍝ First one
      tab←Add #._SF.ejTab(captions contents)
      'headerPosition'tab.Set'top'
      tab.IsURL←1 1  ⍝ Let it know which are URLs
      
   
     ∇

    ∇ r←SetCalcDate;date
      :Access Public
      r←'#message'Replace'Calculation date: ','No date returned'Get'newdate'
    ∇

:EndClass