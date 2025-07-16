import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/events/message events/new_message_event.dart';
import '../../data/models/get_messages_response.dart';
import '../../data/repos/chat_repo.dart';
import 'inner_chat_state.dart';

class InnerChatCubit extends Cubit<InnerChatState> {
  ScrollController scrollController = ScrollController();
  final ChatRepo _repo;
  StreamSubscription? _messageSubscription;

  InnerChatCubit(this._repo) : super(InnerChatInitial()) {
    _messageSubscription = eventBus.on<NewMessageEvent>().listen((event) {
      if (scrollController.hasClients) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          scrollController.animateTo(
            scrollController.position.minScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        });
        messageSeen(event.message.id);
      }
    });
  }

  void sendMessage(String messageText, BuildContext context) {
    emit(InnerChatSending());
    _repo.sendMessage(
      messageText,
      onSuccess: (data) {
        emit(InnerChatMessageSent());
      },
      onFailure: (error) => emit(InnerChatError(error)),
    );
  }

  void messageSeen(String messageId) {
    emit(InnerChatSeeningMessage());
    _repo.messageSeen(
      messageId,
      onSuccess: (data) {
        Map<String, dynamic> rawMessage = data["data"];
        Message mgs = Message.fromJson(rawMessage);
        emit(InnerChatMessageSeen());
        eventBus.fire(MessageUpdatedEvent(mgs));
      },
      onFailure: (error) => emit(InnerChatError(error)),
    );
  }

  void changeTypingState(String typingState) {
    emit(InnerChatTyping());
    _repo.typingState(
        //pass text or record
        typingState: typingState,
        onSuccess: (data) {
          emit(InnerChatTypingSuccess());
          //fire typing event
        },
        onFailure: (error) => emit(InnerChatError(error)));
  }

  void stopTyping() {
    emit(InnerChatStopTyping());
    _repo.stopTyping(
        onSuccess: (data) {
          emit(InnerChatStopTypingSuccess());
        },
        onFailure: (error) => emit(InnerChatError(error)));
  }

  @override
  Future<void> close() {
    _repo.dispose();
    scrollController.dispose();
    _messageSubscription?.cancel();
    return super.close();
  }
}
