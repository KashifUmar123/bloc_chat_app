// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Message {
  String? messageId;
  final String message;
  final String senderId;
  final String receiverId;
  final DateTime timestamp;
  final bool isRead;

  Message({
    this.messageId,
    required this.message,
    required this.senderId,
    required this.receiverId,
    required this.timestamp,
    required this.isRead,
  });

  Message copyWith({
    String? messageId,
    String? message,
    String? senderId,
    String? receiverId,
    DateTime? timestamp,
    bool? isRead,
  }) {
    return Message(
      messageId: messageId ?? this.messageId,
      message: message ?? this.message,
      senderId: senderId ?? this.senderId,
      receiverId: receiverId ?? this.receiverId,
      timestamp: timestamp ?? this.timestamp,
      isRead: isRead ?? this.isRead,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageId': messageId,
      'message': message,
      'senderId': senderId,
      'receiverId': receiverId,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'isRead': isRead,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      messageId: map['messageId'] != null ? map['messageId'] as String : null,
      message: map['message'] as String,
      senderId: map['senderId'] as String,
      receiverId: map['receiverId'] as String,
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] as int),
      isRead: map['isRead'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Message(messageId: $messageId, message: $message, senderId: $senderId, receiverId: $receiverId, timestamp: $timestamp, isRead: $isRead)';
  }

  @override
  bool operator ==(covariant Message other) {
    if (identical(this, other)) return true;

    return other.messageId == messageId &&
        other.message == message &&
        other.senderId == senderId &&
        other.receiverId == receiverId &&
        other.timestamp == timestamp &&
        other.isRead == isRead;
  }

  @override
  int get hashCode {
    return messageId.hashCode ^
        message.hashCode ^
        senderId.hashCode ^
        receiverId.hashCode ^
        timestamp.hashCode ^
        isRead.hashCode;
  }
}
