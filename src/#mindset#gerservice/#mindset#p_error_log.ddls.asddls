@AbapCatalog.sqlViewName: '/MINDSET/PGWERLG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gateway error log'
@ClientHandling.type: #CLIENT_DEPENDENT
define view /MINDSET/P_ERROR_LOG
  as select from /iwfnd/su_errlog
{
  key opid            as OperationId,
  key subno           as SubNumber,
      username        as UserName,
      timestamp       as TimeStamp,
      error_count     as ErrorCount,
      first_tstmp     as FirstTimeStamp,
      expiry_date     as ExpiryDate,
      t100_msgid      as MessageId,
      t100_msgno      as MessageNumber,
      t100_msgv1      as MessageVariable1,
      t100_msgv2      as MessageVariable2,
      t100_msgv3      as MessageVariable3,
      t100_msgv4      as MessageVariable4,
      location        as Location,
      channel         as Channel,
      error_text      as ErrorText,
      error_component as ErrorComponent,
      error_package   as ErrorPackage,
      source_program  as SourceProgram,
      source_include  as SourceInclude,
      source_line     as SourceLine,
      namespace       as Namespace,
      service_name    as ServiceName,
      transaction_id  as TransactionId,
      root_context_id as RootContextId,
      connection_id   as ConnectionId,
      connection_cnt  as ConnectionCount,
      terminal_id     as TerminalId,
      remote_address  as RemoteAddress,
      destination     as Destination,
      request_uri     as RequestUri,
      balogno         as BasisLogNumber,
      context_size    as ContextSize,
      callstack_size  as CallStackSize,
      request_size    as RequestSize,
      response_size   as ResponseSize,
      error_context   as ErrorContext,
      html_page       as HtmlPage,
      icf_node        as IcfNode,
      request_id      as RequestId,
      service_version as ServiceVersion,
      log_level       as LogLevel,
      service_repo    as ServiceRepository,
      http_status     as HttpStatusCode,
      group_id        as ServiceGroupId
}
