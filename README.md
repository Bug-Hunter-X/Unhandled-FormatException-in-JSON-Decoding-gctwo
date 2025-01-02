# Unhandled FormatException in JSON Decoding

This repository demonstrates a common error in Dart when handling JSON responses:  the `FormatException` thrown by `jsonDecode` when the input is not valid JSON.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

**Problem:**
The original code fails to handle the `FormatException` that can occur if the server returns invalid JSON (e.g., an empty string, or malformed JSON).  This results in an unhandled exception and application crash.

**Solution:**
The solution demonstrates how to catch the `FormatException` specifically and handle it gracefully, preventing crashes and providing more informative error messages.
