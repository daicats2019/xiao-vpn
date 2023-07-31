enum AppImage {
  logo('assets/images/logo.png'),
  ;

  final String imageAsset;
  const AppImage(this.imageAsset);
}

enum SvgPath {
  powerSide('assets/svg/power_sign.svg'),
  arrowRight('assets/svg/arrow-right.svg'),
  hello('assets/svg/hello-vpn.svg'),
  setting('assets/svg/setting.svg'),
  speed('assets/svg/speed.svg'),
  subtraction('assets/svg/subtraction.svg'),
  arrowUp('assets/svg/arrow-up.svg'),
  arrowDown('assets/svg/arrow-down.svg'),
  document('assets/svg/document.svg'),
  export('assets/svg/export.svg'),
  magicStar('assets/svg/magic-star.svg'),
  shieldTick('assets/svg/shield-tick.svg'),
  shield('assets/svg/shield.svg'),
  close('assets/svg/close-group.svg'),
  arrowLeft('assets/svg/arrow-left.svg'),
  crown('assets/svg/crown.svg'),
  unlock('assets/svg/unlock.svg'),
  sub3('assets/svg/sub3.svg'),
  languages('assets/svg/languages.svg'),
  ;

  final String path;
  const SvgPath(this.path);
}
