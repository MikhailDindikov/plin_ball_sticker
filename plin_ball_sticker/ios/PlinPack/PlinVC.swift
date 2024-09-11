import UIKit
import Messages

class PlinVC: MSStickerBrowserViewController {

    //create stickers array
    var mystickers = [MSSticker]()

    //load assets into stickers array
    func loadStickers() {
        var typepak = 0
        
        if let userDefaultspak = UserDefaults(suiteName: "group.plin.packs") {
                    if (userDefaultspak.value(forKey: "plin_pack_tag") != nil) {
                        typepak = userDefaultspak.integer(forKey: "plin_pack_tag")
                    }
                }
        if (typepak == 0) {
            createStickerpak(asset: "ball_a_1", localizedDescription: "1")
            createStickerpak(asset: "ball_a_2", localizedDescription: "2")
            createStickerpak(asset: "ball_a_3", localizedDescription: "3")
            createStickerpak(asset: "ball_a_4", localizedDescription: "4")
            createStickerpak(asset: "ball_a_5", localizedDescription: "5")
            createStickerpak(asset: "ball_a_6", localizedDescription: "6")
            createStickerpak(asset: "ball_a_7", localizedDescription: "7")
            createStickerpak(asset: "ball_a_8", localizedDescription: "8")
            createStickerpak(asset: "ball_a_9", localizedDescription: "9")
        } else if (typepak == 1) {
            createStickerpak(asset: "ball_b_1", localizedDescription: "1")
            createStickerpak(asset: "ball_b_2", localizedDescription: "2")
            createStickerpak(asset: "ball_b_3", localizedDescription: "3")
            createStickerpak(asset: "ball_b_4", localizedDescription: "4")
            createStickerpak(asset: "ball_b_5", localizedDescription: "5")
            createStickerpak(asset: "ball_b_6", localizedDescription: "6")
            createStickerpak(asset: "ball_b_7", localizedDescription: "7")
            createStickerpak(asset: "ball_b_8", localizedDescription: "8")
            createStickerpak(asset: "ball_b_9", localizedDescription: "9")
        } else if (typepak == 2) {
            createStickerpak(asset: "balloon_a_1", localizedDescription: "1")
            createStickerpak(asset: "balloon_a_2", localizedDescription: "2")
            createStickerpak(asset: "balloon_a_3", localizedDescription: "3")
            createStickerpak(asset: "balloon_a_4", localizedDescription: "4")
            createStickerpak(asset: "balloon_a_5", localizedDescription: "5")
            createStickerpak(asset: "balloon_a_6", localizedDescription: "6")
            createStickerpak(asset: "balloon_a_7", localizedDescription: "7")
            createStickerpak(asset: "balloon_a_8", localizedDescription: "8")
            createStickerpak(asset: "balloon_a_9", localizedDescription: "9")
        } else if (typepak == 3) {
            createStickerpak(asset: "balloon_b_1", localizedDescription: "1")
            createStickerpak(asset: "balloon_b_2", localizedDescription: "2")
            createStickerpak(asset: "balloon_b_3", localizedDescription: "3")
            createStickerpak(asset: "balloon_b_4", localizedDescription: "4")
            createStickerpak(asset: "balloon_b_5", localizedDescription: "5")
            createStickerpak(asset: "balloon_b_6", localizedDescription: "6")
            createStickerpak(asset: "balloon_b_7", localizedDescription: "7")
        } else if (typepak == 4) {
            createStickerpak(asset: "square_a_1", localizedDescription: "1")
            createStickerpak(asset: "square_a_2", localizedDescription: "2")
            createStickerpak(asset: "square_a_3", localizedDescription: "3")
            createStickerpak(asset: "square_a_4", localizedDescription: "4")
            createStickerpak(asset: "square_a_5", localizedDescription: "5")
            createStickerpak(asset: "square_a_6", localizedDescription: "6")
            createStickerpak(asset: "square_a_7", localizedDescription: "7")
            createStickerpak(asset: "square_a_8", localizedDescription: "8")
            createStickerpak(asset: "square_a_9", localizedDescription: "9")
        } else if (typepak == 5) {
            createStickerpak(asset: "square_b_1", localizedDescription: "1")
            createStickerpak(asset: "square_b_2", localizedDescription: "2")
            createStickerpak(asset: "square_b_3", localizedDescription: "3")
            createStickerpak(asset: "square_b_4", localizedDescription: "4")
            createStickerpak(asset: "square_b_5", localizedDescription: "5")
            createStickerpak(asset: "square_b_6", localizedDescription: "6")
            createStickerpak(asset: "square_b_7", localizedDescription: "7")
            createStickerpak(asset: "square_b_8", localizedDescription: "8")
            createStickerpak(asset: "square_b_9", localizedDescription: "9")
        } else if (typepak == 6) {
            createStickerpak(asset: "triangle_a_1", localizedDescription: "1")
            createStickerpak(asset: "triangle_a_2", localizedDescription: "2")
            createStickerpak(asset: "triangle_a_3", localizedDescription: "3")
            createStickerpak(asset: "triangle_a_4", localizedDescription: "4")
            createStickerpak(asset: "triangle_a_5", localizedDescription: "5")
            createStickerpak(asset: "triangle_a_6", localizedDescription: "6")
            createStickerpak(asset: "triangle_a_7", localizedDescription: "7")
            createStickerpak(asset: "triangle_a_8", localizedDescription: "8")
            createStickerpak(asset: "triangle_a_9", localizedDescription: "9")
        } else if (typepak == 7) {
            createStickerpak(asset: "triangle_b_1", localizedDescription: "1")
            createStickerpak(asset: "triangle_b_2", localizedDescription: "2")
            createStickerpak(asset: "triangle_b_3", localizedDescription: "3")
            createStickerpak(asset: "triangle_b_4", localizedDescription: "4")
            createStickerpak(asset: "triangle_b_5", localizedDescription: "5")
            createStickerpak(asset: "triangle_b_6", localizedDescription: "6")
        }
    }

    //func to create sticker
    func createStickerpak(asset: String, localizedDescription: String) {

        //create url from assets in main bundle
        guard let stickerpakPath = Bundle.main.path(forResource: asset, ofType: "png") else {
            return
        }
        let stickerpakURL = URL(fileURLWithPath: stickerpakPath)
        let stickerpak: MSSticker

        //create sticker from path(and localized description) and add to array
        do {
            try stickerpak = MSSticker(contentsOfFileURL: stickerpakURL,
                                 localizedDescription: localizedDescription)
            mystickers.append(stickerpak)
        } catch {
            print(error)
            return
        }
    }

    //datasource methods
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        return mystickers.count
    }
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView,
                                          stickerAt index: Int) -> MSSticker {
        return mystickers[index]
    }
}
