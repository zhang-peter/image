import '../../image/image.dart';
import '../command.dart';

class ImageCmd extends Command {
  ImageCmd(Image image) {
    this.outputImage = image;
  }

  @override
  Future<void> executeCommand() async { }
}
