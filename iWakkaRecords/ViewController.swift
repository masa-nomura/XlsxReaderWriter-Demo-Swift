//
//  ViewController.swift
//  iWakkaRecords
//
//  Created by Masakazu on 2018/06/20.
//  Copyright © 2018 Masakazu. All rights reserved.
//
// ExcelファイルをSwiftで使うために
// 1. CocoaPodsでxlsx writer readerをインポート
//https://cocoapods.org/pods/XlsxReaderWriter
// 2. ただしuse_frameworksはコメントアウト
// 3. NewFile->CocoaTouch->Objective-C->BrigingHeaderも一緒に作成
// 4. #import "XlsxReaderWriter-swift-bridge.h"を書き加える．
// 5. 同じディレクトリにxlsxファイルをインポートする．
// 6. Build Phrases->Copy Bundle...->xlsxファイルを加える．

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path: String = Bundle.main.path(forResource: "test", ofType: "xlsx")!
        let spreadsheet: BRAOfficeDocumentPackage = BRAOfficeDocumentPackage.open(path)
//        let sheet: BRASheet = spreadsheet.workbook.sheets[1] as! BRASheet
        let worksheet: BRAWorksheet = spreadsheet.workbook.worksheets[0] as! BRAWorksheet
        guard let rows = worksheet.rows else { return }
        for row in rows {
            let row = row as! BRARow
            let cells = row.cells as! [BRACell]
            for cell in cells {
                print(cell.stringValue())
            }
        }
//        let cell: BRACell = worksheet.cell(forCellReference: "A1")
//        print(cell.stringValue().description)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

