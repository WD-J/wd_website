part of 'animation_bloc.dart';

abstract class AnimationState extends Equatable {
  const AnimationState();
}

class AnimationInitial extends AnimationState {
  @override
  List<Object> get props => [];
}
