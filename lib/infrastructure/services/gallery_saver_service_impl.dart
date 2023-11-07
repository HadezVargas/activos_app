import 'package:activos_app/domain/domain.dart';
import 'package:gallery_saver/gallery_saver.dart';

class GallerySaverServiceImpl extends GallerySaverService {
  @override
  Future gallerySaver(List<String> images, String plant) async {
    for (var image in images) {
      await GallerySaver.saveImage(image, albumName: plant);
    }
    throw UnimplementedError();
  }
}
