import 'package:activos_app/domain/domain.dart';
import 'package:gallery_saver/gallery_saver.dart';

class GallerySaverServiceImpl extends GallerySaverService {
  @override
  Future gallerySaver(String image, String plant) async {
    try {
      await GallerySaver.saveImage(image, albumName: plant);
    // ignore: empty_catches
    } catch (e) {
    }
  }
}
