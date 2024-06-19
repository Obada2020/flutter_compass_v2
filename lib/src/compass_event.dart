class CompassEvent {
  /// The heading, in degrees, of the device around its Z
  /// axis, or where the top of the device is pointing.
  final double? heading;

  /// The heading, in degrees, of the device around its X axis, or
  /// where the back of the device is pointing.
  final double? headingForCameraMode;
  final String? errorMessage;
  /// The deviation error, in degrees, plus or minus from the heading.
  /// NOTE: for iOS this is computed by the platform and is reliable. For
  /// Android several values are hard-coded, and the true error could be more
  /// or less than the value here.
  final double? accuracy;

  CompassEvent.fromList(dynamic data)
      : heading = data.runtimeType != String? (data?[0] ?? null) : null,
        headingForCameraMode = data.runtimeType != String? (data?[1] ?? null) : null,
        accuracy = data.runtimeType != String? ((data == null) || (data[2] == -1) ? null : data[2]): null  , 
        errorMessage = data.runtimeType == String ? data : null
        ;

  @override
  String toString() {
    return 'heading: $heading\nheadingForCameraMode: $headingForCameraMode\naccuracy: $accuracy';
  }
}
