// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$stateAtom = Atom(name: 'HomeStoreBase.state', context: context);

  @override
  ValorantState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(ValorantState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$usernameAtom =
      Atom(name: 'HomeStoreBase.username', context: context);

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$taglineAtom =
      Atom(name: 'HomeStoreBase.tagline', context: context);

  @override
  String get tagline {
    _$taglineAtom.reportRead();
    return super.tagline;
  }

  @override
  set tagline(String value) {
    _$taglineAtom.reportWrite(value, super.tagline, () {
      super.tagline = value;
    });
  }

  late final _$detailStateAtom =
      Atom(name: 'HomeStoreBase.detailState', context: context);

  @override
  DetailValorantAgentState get detailState {
    _$detailStateAtom.reportRead();
    return super.detailState;
  }

  @override
  set detailState(DetailValorantAgentState value) {
    _$detailStateAtom.reportWrite(value, super.detailState, () {
      super.detailState = value;
    });
  }

  late final _$stateStatsAtom =
      Atom(name: 'HomeStoreBase.stateStats', context: context);

  @override
  StatsState get stateStats {
    _$stateStatsAtom.reportRead();
    return super.stateStats;
  }

  @override
  set stateStats(StatsState value) {
    _$stateStatsAtom.reportWrite(value, super.stateStats, () {
      super.stateStats = value;
    });
  }

  late final _$setUsernameAsyncAction =
      AsyncAction('HomeStoreBase.setUsername', context: context);

  @override
  Future<void> setUsername(String username) {
    return _$setUsernameAsyncAction.run(() => super.setUsername(username));
  }

  late final _$setTaglineAsyncAction =
      AsyncAction('HomeStoreBase.setTagline', context: context);

  @override
  Future<void> setTagline(String tagline) {
    return _$setTaglineAsyncAction.run(() => super.setTagline(tagline));
  }

  late final _$setStateAsyncAction =
      AsyncAction('HomeStoreBase.setState', context: context);

  @override
  Future<void> setState(ValorantState newState) {
    return _$setStateAsyncAction.run(() => super.setState(newState));
  }

  late final _$setStatsStateAsyncAction =
      AsyncAction('HomeStoreBase.setStatsState', context: context);

  @override
  Future<void> setStatsState(StatsState newState) {
    return _$setStatsStateAsyncAction.run(() => super.setStatsState(newState));
  }

  late final _$setDetailStateAsyncAction =
      AsyncAction('HomeStoreBase.setDetailState', context: context);

  @override
  Future<void> setDetailState(DetailValorantAgentState detailAgentsState) {
    return _$setDetailStateAsyncAction
        .run(() => super.setDetailState(detailAgentsState));
  }

  @override
  String toString() {
    return '''
state: ${state},
username: ${username},
tagline: ${tagline},
detailState: ${detailState},
stateStats: ${stateStats}
    ''';
  }
}
