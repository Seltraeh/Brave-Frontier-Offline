.class Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;
.super Ljava/lang/Object;
.source "MonitorLoggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->addLog(Lcom/facebook/internal/logging/ExternalLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

.field final synthetic val$log:Lcom/facebook/internal/logging/ExternalLog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;Lcom/facebook/internal/logging/ExternalLog;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    iput-object p2, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->val$log:Lcom/facebook/internal/logging/ExternalLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    invoke-static {v0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->access$000(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Lcom/facebook/internal/logging/LoggingCache;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->val$log:Lcom/facebook/internal/logging/ExternalLog;

    invoke-interface {v0, v1}, Lcom/facebook/internal/logging/LoggingCache;->addLog(Lcom/facebook/internal/logging/ExternalLog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    invoke-virtual {v0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushAndWait()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    invoke-static {v0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->access$100(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    iget-object v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    .line 118
    invoke-static {v1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->access$300(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;->this$0:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    invoke-static {v2}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->access$200(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->access$102(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 120
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
