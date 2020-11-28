import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';

import 'mark.dart';

List<String> _readers = [];


class MarkGenerator extends GeneratorForAnnotation<Mark> {
  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    String className = element.displayName;
    String path = buildStep.inputId.path;
    String name =annotation.peek('name').stringValue;
    _readers.add("//$className\n//$path\n//$name");
    String all = _readers.join(',\n');
    print("MarkGenerator \n $all");
    return null;
  }
}

class MarkGeneratorExport extends GeneratorForAnnotation<MarkExport> {
  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    String name = _readers.join(',\n');
    print("$name");
    return "//MarkGeneratorExport \n $name";
  }
}