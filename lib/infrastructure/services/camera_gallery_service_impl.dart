import 'package:activos_app/domain/domain.dart';
import 'package:image_picker/image_picker.dart';

class CameraGalleryServiceImpl extends CameraGalleryService {
  final ImagePicker _picker = ImagePicker();
  @override
  Future<String?> pickImage() {
    final XFile? image = _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      preferredCameraDevice: CameraDevice.rear,
    ) as XFile?;

    if (image == null) return Future.value(null);

    return Future.value(image.path);
  }

  @override
  Future<String?> takePhoto() {
    final XFile? image = _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      preferredCameraDevice: CameraDevice.rear,
    ) as XFile?;

    if (image == null) return Future.value(null);

    return Future.value(image.path);
  }
}
