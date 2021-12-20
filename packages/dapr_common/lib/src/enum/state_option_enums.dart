/// Consistency mode for Dapr State Api calls
///
/// https://docs.dapr.io/reference/api/state_api/#consistency
///
/// TODO: Check how to pass these options to Grpc calls.
enum Consistency { unspecified, eventual, strong }

/// Concurrency mode for Dapr State Api calls.
///
/// https://docs.dapr.io/developing-applications/building-blocks/state-management/state-management-overview/#concurrency
///
/// The name are derived based on the proto definitions.
///
/// TODO: Check how to convert and pass these options to Grpc calls.
enum Concurrency { unspecified, firstWrite, lastWrite }
