.class public Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;
.super Ljava/lang/Object;
.source "MonitorLoggingQueue.java"

# interfaces
.implements Lcom/facebook/internal/logging/LoggingCache;


# static fields
.field private static final FLUSH_LIMIT:Ljava/lang/Integer;

.field private static monitorLoggingQueue:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;


# instance fields
.field private logQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->FLUSH_LIMIT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->logQueue:Ljava/util/Queue;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;
    .locals 2

    const-class v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->monitorLoggingQueue:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    invoke-direct {v1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;-><init>()V

    sput-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->monitorLoggingQueue:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

    .line 44
    :cond_0
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->monitorLoggingQueue:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasReachedFlushLimit()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->logQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->FLUSH_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addLog(Lcom/facebook/internal/logging/ExternalLog;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/internal/logging/ExternalLog;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->addLogs(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addLogs(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->logQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->hasReachedFlushLimit()Z

    move-result p1

    return p1
.end method

.method public fetchAllLogs()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->logQueue:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 92
    iget-object v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->logQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    return-object v0
.end method

.method public fetchLog()Lcom/facebook/internal/logging/ExternalLog;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->logQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/logging/ExternalLog;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->logQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method
