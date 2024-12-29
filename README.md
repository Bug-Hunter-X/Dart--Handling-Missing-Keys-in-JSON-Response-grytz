# Dart: Handling Missing Keys in JSON Response

This repository demonstrates a common error in Dart when handling JSON responses and provides a solution.

The `bug.dart` file contains code that attempts to access a 'name' key from a JSON response without checking for its existence. This can lead to runtime errors if the key is missing.

The `bugSolution.dart` file shows how to properly handle missing keys using null checks or conditional access.