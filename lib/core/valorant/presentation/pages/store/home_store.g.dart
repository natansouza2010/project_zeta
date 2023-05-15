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

  late final _$setStateAsyncAction =
      AsyncAction('HomeStoreBase.setState', context: context);

  @override
  Future<void> setState(ValorantState newState) {
    return _$setStateAsyncAction.run(() => super.setState(newState));
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
detailState: ${detailState}
    ''';
  }
}
