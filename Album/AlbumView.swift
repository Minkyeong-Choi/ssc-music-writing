//
//  AlbumView.swift
//  MusicWriting
//
//  Created by Choi Minkyeong on 2/4/25.
//

// how to import recorded file?
/*
 func loadRecording(fileName: String) -> URL? {
     let fileURL = getDocumentsDirectory().appendingPathComponent(fileName)
     return FileManager.default.fileExists(atPath: fileURL.path) ? fileURL : nil
 }

 func deleteRecording(fileName: String, modelContext: ModelContext, recording: Recording) {
     let fileURL = getDocumentsDirectory().appendingPathComponent(fileName)
     do {
         try FileManager.default.removeItem(at: fileURL)
         modelContext.delete(recording)
         try? modelContext.save()
     } catch {
         print("Failed to delete audio file: \(error)")
     }
 }

 */
