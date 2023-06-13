/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/icon_add.svg
  SvgGenImage get iconAdd => const SvgGenImage('assets/icons/icon_add.svg');

  /// File path: assets/icons/icon_arrow.svg
  SvgGenImage get iconArrow => const SvgGenImage('assets/icons/icon_arrow.svg');

  /// File path: assets/icons/icon_chat.svg
  SvgGenImage get iconChat => const SvgGenImage('assets/icons/icon_chat.svg');

  /// File path: assets/icons/icon_community.svg
  SvgGenImage get iconCommunity =>
      const SvgGenImage('assets/icons/icon_community.svg');

  /// File path: assets/icons/icon_correct.svg
  SvgGenImage get iconCorrect =>
      const SvgGenImage('assets/icons/icon_correct.svg');

  /// File path: assets/icons/icon_crypto_news.svg
  SvgGenImage get iconCryptoNews =>
      const SvgGenImage('assets/icons/icon_crypto_news.svg');

  /// File path: assets/icons/icon_dot.svg
  SvgGenImage get iconDot => const SvgGenImage('assets/icons/icon_dot.svg');

  /// File path: assets/icons/icon_dropdown.svg
  SvgGenImage get iconDropdown =>
      const SvgGenImage('assets/icons/icon_dropdown.svg');

  /// File path: assets/icons/icon_find.svg
  SvgGenImage get iconFind => const SvgGenImage('assets/icons/icon_find.svg');

  /// File path: assets/icons/icon_like.svg
  SvgGenImage get iconLike => const SvgGenImage('assets/icons/icon_like.svg');

  /// File path: assets/icons/icon_like_on.svg
  SvgGenImage get iconLikeOn =>
      const SvgGenImage('assets/icons/icon_like_on.svg');

  /// File path: assets/icons/icon_market.svg
  SvgGenImage get iconMarket =>
      const SvgGenImage('assets/icons/icon_market.svg');

  /// File path: assets/icons/icon_menu.svg
  SvgGenImage get iconMenu => const SvgGenImage('assets/icons/icon_menu.svg');

  /// File path: assets/icons/icon_more.svg
  SvgGenImage get iconMore => const SvgGenImage('assets/icons/icon_more.svg');

  /// File path: assets/icons/icon_notifications.svg
  SvgGenImage get iconNotifications =>
      const SvgGenImage('assets/icons/icon_notifications.svg');

  /// File path: assets/icons/icon_online.svg
  SvgGenImage get iconOnline =>
      const SvgGenImage('assets/icons/icon_online.svg');

  /// File path: assets/icons/icon_world.svg
  SvgGenImage get iconWorld => const SvgGenImage('assets/icons/icon_world.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        iconAdd,
        iconArrow,
        iconChat,
        iconCommunity,
        iconCorrect,
        iconCryptoNews,
        iconDot,
        iconDropdown,
        iconFind,
        iconLike,
        iconLikeOn,
        iconMarket,
        iconMenu,
        iconMore,
        iconNotifications,
        iconOnline,
        iconWorld,
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Avatar_38x38.jpg
  AssetGenImage get avatar38x38 =>
      const AssetGenImage('assets/images/Avatar_38x38.jpg');

  /// File path: assets/images/Avatar_40x40.jpg
  AssetGenImage get avatar40x40 =>
      const AssetGenImage('assets/images/Avatar_40x40.jpg');

  /// File path: assets/images/Image_post_1.jpg
  AssetGenImage get imagePost1 =>
      const AssetGenImage('assets/images/Image_post_1.jpg');

  /// File path: assets/images/Image_post_2.jpg
  AssetGenImage get imagePost2 =>
      const AssetGenImage('assets/images/Image_post_2.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        avatar38x38,
        avatar40x40,
        imagePost1,
        imagePost2,
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
