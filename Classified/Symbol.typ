#[
    #import "symm.typ":*
    #set page(
        paper:"a4",
        margin: (
            top:2mm,
            bottom:2mm,
            left:2mm,
            right:2mm
        ),
        numbering: none,
        header: none,
    )

    #set text(size:18pt)  
    
    #set box(baseline:40%,fill:luma(230),height: 1.6em,inset:0.5em,outset:2pt,radius:5pt)


    #let arr=()
    #for (ii,i) in symm.keys().enumerate() [
        #if type(symm.at(i)) == "dictionary" {
            for (jj,j) in symm.at(i).keys().enumerate() [
                #if type(symm.at(i).at(j)) == "dictionary" {
                    for (kk,k) in symm.at(i).at(j).keys().enumerate() [
                        #if type(symm.at(i).at(j).at(k))=="dictionary" {
                            for (mm,m) in symm.at(i).at(j).at(k).keys().enumerate() [
                                #if type(symm.at(i).at(j).at(k).at(m))=="dictionary" {
                                    for (nn,n) in symm.at(i).at(j).at(k).at(m).keys().enumerate() [
                                        #if  symm.at(i).at(j).at(k).at(m).keys().at(nn) == "o" [
                                            #arr.push(align(center+horizon)[#box[#symm.at(i).at(j).at(k).at(m).at(n)] \ #text(size:10pt)[#symm.keys().at(ii)\.#symm.at(i).keys().at(jj)\.#symm.at(i).at(j).keys().at(kk)\.#symm.at(i).at(j).at(k).keys().at(mm)]])
                                        ] else [
                                            #arr.push(align(center+horizon)[#box[#symm.at(i).at(j).at(k).at(m).at(n)] \ #text(size:10pt)[#symm.keys().at(ii)\.#symm.at(i).keys().at(jj)\.#symm.at(i).at(j).keys().at(kk)\.#symm.at(i).at(j).at(k).keys().at(mm)\.#symm.at(i).at(j).at(k).at(m).keys().at(nn)]])
                                        ]   
                                    ]
                                } else [
                                    #if symm.at(i).at(j).at(k).keys().at(mm) == "o" [
                                        #arr.push(align(center+horizon)[#box[#symm.at(i).at(j).at(k).at(m)] \ #text(size:10pt)[#symm.keys().at(ii)\.#symm.at(i).keys().at(jj)\.#symm.at(i).at(j).keys().at(kk)]])
                                    ] else [
                                        #arr.push(align(center+horizon)[#box[#symm.at(i).at(j).at(k).at(m)] \ #text(size:10pt)[#symm.keys().at(ii)\.#symm.at(i).keys().at(jj)\.#symm.at(i).at(j).keys().at(kk)\.#symm.at(i).at(j).at(k).keys().at(mm)]])
                                    ]
                                ]
                            ] 
                        } else [
                            #if  symm.at(i).at(j).keys().at(kk) == "o" [
                                #arr.push(align(center+horizon)[#box[#symm.at(i).at(j).at(k)] \ #text(size:10pt)[#symm.keys().at(ii)\.#symm.at(i).keys().at(jj)]])
                            ] else [
                                #arr.push(align(center+horizon)[#box[#symm.at(i).at(j).at(k)] \ #text(size:10pt)[#symm.keys().at(ii)\.#symm.at(i).keys().at(jj)\.#symm.at(i).at(j).keys().at(kk)]])
                            ]     
                        ]
                    ] 
                } else  [
                    #if symm.at(i).keys().at(jj) == "o" [
                        #arr.push(align(center+horizon)[#box[#symm.at(i).at(j)] \ #text(size:10pt)[#symm.keys().at(ii)]])
                    ] else [
                        #arr.push(align(center+horizon)[#box[#symm.at(i).at(j)] \ #text(size:10pt)[#symm.keys().at(ii)\.#symm.at(i).keys().at(jj)]])
                    ]
                ]
            ]
        } else [
            #arr.push(align(center+horizon)[#box[#symm.at(i)] \ #text(size:10pt)[#symm.keys().at(ii)]])
        ]
    ]

    #table(
        columns: (1fr,1fr,1fr,1fr,1fr,1fr),
        stroke:gray+1.0pt,
        align:horizon,
        ..arr
    )
]






