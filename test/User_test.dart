import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocking_eg1/User.dart';
import 'package:mockito/mockito.dart';

class MockDio extends Mock implements Dio {}

void main() {
  test(
      'Given User is given an age of 24 When birthday is called then user is old',
      () async {
    // TODO: Implement test
    //ARRANGE
    final mockDio = MockDio();
    when(mockDio.get(any)).thenAnswer((invocation) => Future.value(Response()));
    final user = User('someName', 24, mockDio);
    //ACT
    user.birthday();
    //ASSERT
    expect(user.age, 25);
  });
}
