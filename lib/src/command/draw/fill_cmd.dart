import '../../color/color.dart';
import '../../draw/fill.dart';
import '../command.dart';

class FillCmd extends Command {
  Color color;

  FillCmd(Command? input, this.color)
      : super(input);

  @override
  Future<void> executeCommand() async {
    await input?.execute();
    final img = input?.outputImage;
    outputImage = img != null ? fill(img, color) : null;
  }
}
