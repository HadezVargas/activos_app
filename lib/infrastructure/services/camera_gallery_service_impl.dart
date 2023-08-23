import 'package:activos_app/domain/domain.dart';
import 'package:image_picker/image_picker.dart';

class CameraGalleryServiceImpl extends CameraGalleryService {
  final ImagePicker _picker = ImagePicker();
  @override
  Future<String?> pickImage() async{
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      preferredCameraDevice: CameraDevice.rear,
    );
    if (pickedFile == null) return null;
    return pickedFile.path;
  }

  @override
  Future<String?> takePhoto() async{
    final pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      preferredCameraDevice: CameraDevice.rear,
    );
    if (pickedFile == null) return null;
    return pickedFile.path;
  }
}
