:Class index : MiPageTemplate
    ∇ Compose
      :Access public
     
      dp←'dp'Add _.ejDatePicker(3↑⎕TS)'dd-MM-yyyy'
      dp.On'change' 'SetCalcDate'('newdate' 'argument' 'value')
      'message'Add _.div
     
      Add _.h2'Collateral legal agreements'
     
      VALUES←1 5⍴'CITY' 'CSA' 'Deliver' ¯41234.24 'USD'
      VALUES⍪←1 5⍴'BNP-AS' 'GMRA' 'Deliver' ¯6234.15 'EUR'
      VALUES⍪←1 5⍴'CGF-AS' 'CSA' 'Receive' 234.49 'EUR'
      VALUES⍪←1 5⍴'ASTRA' 'GMRA' 'Receive' 34.65 'EUR'
      VALUES⍪←1 5⍴'FINN' 'CSA' 'Receive' 82394.4 'EUR'
      VALUES⍪←1 5⍴'UA-CB-NBU' 'GMRA' 'Receive' 0.45 'EUR'
      COLTITLES←'Legal agreement ID' 'Type' 'Margin call action' 'Suggested margin' 'Currency'
      COLNAMES←'pCLAID' 'pCLATYPE' 'pMARGCALLACT' 'pMARGSUG' 'pCUR'
      CELLWIDTHS←5 5 5 4 3
      CELLALIGN←'left' 'center' 'center' 'right' 'center'
      FORMATS←'' '{0:n1}' '' '{0:n2}' '{0:c0}'
     
      mygrid←Add _.ejGrid(VALUES COLTITLES CELLWIDTHS)
      mygrid.CellFormats←FORMATS
      mygrid.ColNames←COLNAMES
      mygrid.CellAlign←CELLALIGN
      'allowPaging' 'allowSorting' 'allowResizing'mygrid.Set _false _true _true
     
      'allowScrolling' 'scrollSettings'mygrid.Set _false ('{ width: 886, height: 300 }')
     
      Add _.h2'Positions inventory'
      captions←'Collateral positions' 'Market positions' 'Available positions'
      
      VALUES←1 4⍴'IBM' 'Equity' 41234.45 'USD'
      VALUES⍪←1 4⍴'FR-GOV-5Y' 'Bond' 6234.45 'EUR'
      VALUES⍪←1 4⍴'GB-CGF-AS' 'Bond' 234.5 'EUR'
      VALUES⍪←1 4⍴'ASTRA-BND-7Y' 'MBA' 34.34 'EUR'
      VALUES⍪←1 4⍴'FINN-AIR' 'Equity' 82394.47 'EUR'
      VALUES⍪←1 4⍴'UA-UKRTELECOM' 'Equity' 69234.24 'EUR'
      COLTITLES←'Security ID' 'Type' 'Dirty value QC' 'Quotation Currency'
      COLNAMES←'pSECSHORT' 'pINSTYPE' 'pDIRTYPC' 'fpQUOCUR'
      CELLWIDTHS←10 5 4 4
      CELLALIGN←'left' 'center' 'right' 'center'
      FORMATS←'' '{0:n1}' '{0:n2}' '{0:c0}'
     
      coll_pos←New _.ejGrid(VALUES COLTITLES CELLWIDTHS)
      coll_pos.CellFormats←FORMATS
      coll_pos.ColNames←COLNAMES
      coll_pos.CellAlign←CELLALIGN
     
      VALUES←1 4⍴'UA-DEPO' 'Deposit' 410875234.45 'USD'
      VALUES⍪←1 4⍴'FR-GOV-DEPO' 'Deposit' 6907654234.34 'EUR'
     
      mark_pos←New _.ejGrid(VALUES COLTITLES CELLWIDTHS)
      mark_pos.CellFormats←FORMATS
      mark_pos.ColNames←COLNAMES
      mark_pos.CellAlign←CELLALIGN
     
      VALUES←1 4⍴'UA-GOV-BND-5Y' 'Bond' 4875234.74 'USD'
      VALUES⍪←1 4⍴'AIR-FRANCE' 'Equity' 74234.83 'EUR'
      VALUES⍪←1 4⍴'FINN-AIR' 'Equity' 74234.68 'EUR'
      VALUES⍪←1 4⍴'ALITALIA-AIR' 'Equity' 174234.42 'EUR'
     
      avail_pos←New _.ejGrid(VALUES COLTITLES CELLWIDTHS)
      avail_pos.CellFormats←FORMATS
      avail_pos.ColNames←COLNAMES
      avail_pos.CellAlign←CELLALIGN

      tab←Add #._SF.ejTab(captions(coll_pos mark_pos avail_pos))
      'headerPosition'tab.Set'top'
     ⍝ tab.IsURL←1 1 1 ⍝ Let it know which are URLs
     
    ∇

    ∇ r←SetCalcDate;date
      :Access Public
      r←'#message'Replace'Calculation date: ','No date returned'Get'newdate'
    ∇

:EndClass