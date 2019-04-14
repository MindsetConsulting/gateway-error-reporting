@AbapCatalog.sqlViewName: '/MINDSET/IGWERLG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Gateway error log interface view'
define view /MINDSET/I_ERROR_LOG
  as select from /MINDSET/P_ERROR_LOG
{
  key OperationId,
  key SubNumber,
      UserName,
      TimeStamp,
      ErrorCount,
      FirstTimeStamp,
      ExpiryDate,
      MessageId,
      MessageNumber,
      MessageVariable1,
      MessageVariable2,
      MessageVariable3,
      MessageVariable4,
      Location,
      Channel,
      ErrorText,
      ErrorComponent,
      ErrorPackage,
      SourceProgram,
      SourceInclude,
      SourceLine,
      Namespace,
      ServiceName,
      TransactionId,
      RootContextId,
      ConnectionId,
      ConnectionCount,
      TerminalId,
      RemoteAddress,
      Destination,
      RequestUri,
      BasisLogNumber,
      ContextSize,
      CallStackSize,
      RequestSize,
      ResponseSize,
      ErrorContext,
      HtmlPage,
      IcfNode,
      RequestId,
      ServiceVersion,
      LogLevel,
      ServiceRepository,
      HttpStatusCode,
      ServiceGroupId
}
