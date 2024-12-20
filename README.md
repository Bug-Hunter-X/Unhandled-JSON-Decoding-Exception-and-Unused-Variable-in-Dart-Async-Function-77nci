# Unhandled JSON Decoding Exception and Unused Variable in Dart

This repository demonstrates a common coding error in Dart asynchronous programming involving JSON handling. The code attempts to fetch data from an API, decode it as JSON, and extract a specific value. However, it lacks proper error handling for JSON decoding failures and contains an unused variable.

## Bug Description

The primary issue lies within the `fetchData` function. If the API response is not valid JSON or if the expected key ('someKey') is missing, `jsonDecode` throws an exception. The current error handling only prints a generic 'Error' message without providing details about the JSON decoding failure.  Additionally, a variable `someData` is declared but not utilized, potentially confusing maintainers.

## Solution

The provided solution improves error handling by catching the `FormatException` specifically thrown by `jsonDecode`. It then logs more informative details about the error, including the raw JSON response and the exception's message.  The unused variable is removed to improve code clarity.
