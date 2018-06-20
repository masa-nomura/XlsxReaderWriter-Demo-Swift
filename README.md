# XlsxReaderWriter-Demo-Swift
Swiftでエクセルファイルを読み込むためにする手順

情報をエクセルで読み込み，アプリで表示するために，
https://cocoapods.org/pods/XlsxReaderWriter
を利用しようとした時に，陥ったことをメモ．

XlsxReaderWriterはObjective-Cのファイルであり，読み込むのに手順を踏む必要があったが．
以下のように行えば，簡単にインポートできる．

// 1. CocoaPodsでxlsx writer readerをインポート
//https://cocoapods.org/pods/XlsxReaderWriter
// 2. ただしuse_frameworksはコメントアウト
// 3. NewFile->CocoaTouch->Objective-C->BrigingHeaderも一緒に作成
// 4. #import "XlsxReaderWriter-swift-bridge.h"を書き加える．
// 5. 同じディレクトリにxlsxファイルをインポートする．
// 6. Build Phrases->Copy Bundle...->xlsxファイルを加える．

参考になれば幸いです．

in English

This is a support information to import XlsxReaderWriter into your projects.
There is a process to import in //https://cocoapods.org/pods/XlsxReaderWriter.
But I found more simple process down belows.

// 1. import xlsx writer reader into CocoaPods
//https://cocoapods.org/pods/XlsxReaderWriter
// 2. [Caution] commentout use_frameworks
// 3. NewFile->CocoaTouch->Objective-C->create BrigingHeader
// 4. write #import "XlsxReaderWriter-swift-bridge.h" in BrigingHeader
// 5. import ....xlsx file to same project directory
// 6. add file path (Build Phrases->Copy Bundle...->xlsx)

I hope that this information is useful

Thanks to https://cocoapods.org/pods/XlsxReaderWriter
