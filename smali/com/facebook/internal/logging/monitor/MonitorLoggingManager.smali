.class public Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
.super Ljava/lang/Object;
.source "MonitorLoggingManager.java"

# interfaces
.implements Lcom/facebook/internal/logging/LoggingManager;


# static fields
.field private static final ENTRIES_KEY:Ljava/lang/String; = "entries"

.field private static final FLUSH_PERIOD:I = 0x5

.field private static final MAX_LOG_NUMBER_PER_REQUEST:Ljava/lang/Integer;

.field private static final MONITORING_ENDPOINT:Ljava/lang/String; = "monitorings"

.field private static deviceModel:Ljava/lang/String;

.field private static deviceOSVersion:Ljava/lang/String;

.field private static monitorLoggingManager:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;


# instance fields
.field private final flushRunnable:Ljava/lang/Runnable;

.field private flushTimer:Ljava/util/concurrent/ScheduledFuture;

.field private logQueue:Lcom/facebook/internal/logging/LoggingCache;

.field private logStore:Lcom/facebook/internal/logging/LoggingStore;

.field private final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->MAX_LOG_NUMBER_PER_REQUEST:Ljava/lang/Integer;

    .line 77
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->deviceOSVersion:Ljava/lang/String;

    .line 78
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/logging/LoggingCache;Lcom/facebook/internal/logging/LoggingStore;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    new-instance v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$1;-><init>(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)V

    iput-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushRunnable:Ljava/lang/Runnable;

    .line 92
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    if-nez v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logStore:Lcom/facebook/internal/logging/LoggingStore;

    if-nez p1, :cond_1

    .line 96
    iput-object p2, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logStore:Lcom/facebook/internal/logging/LoggingStore;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Lcom/facebook/internal/logging/LoggingCache;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushTimer:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$102(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushTimer:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static buildPostRequestFromLogs(Ljava/util/List;)Lcom/facebook/GraphRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;)",
            "Lcom/facebook/GraphRequest;"
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 178
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/logging/ExternalLog;

    .line 179
    invoke-interface {v2}, Lcom/facebook/internal/logging/ExternalLog;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    return-object v2

    .line 186
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "device_os_version"

    .line 188
    sget-object v4, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_model"

    .line 189
    sget-object v4, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->deviceModel:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "unique_application_identifier"

    .line 190
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "entries"

    .line 191
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 198
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "%s/monitorings"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v2, v0, p0, v2}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v2
.end method

.method static buildRequests(Lcom/facebook/internal/logging/LoggingCache;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/logging/LoggingCache;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 156
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/facebook/internal/logging/LoggingCache;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 160
    :goto_1
    sget-object v3, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->MAX_LOG_NUMBER_PER_REQUEST:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0}, Lcom/facebook/internal/logging/LoggingCache;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    invoke-interface {p0}, Lcom/facebook/internal/logging/LoggingCache;->fetchLog()Lcom/facebook/internal/logging/ExternalLog;

    move-result-object v3

    .line 162
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    :cond_1
    invoke-static {v1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->buildPostRequestFromLogs(Ljava/util/List;)Lcom/facebook/GraphRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/facebook/internal/logging/LoggingCache;Lcom/facebook/internal/logging/LoggingStore;)Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
    .locals 2

    const-class v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->monitorLoggingManager:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;-><init>(Lcom/facebook/internal/logging/LoggingCache;Lcom/facebook/internal/logging/LoggingStore;)V

    sput-object v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->monitorLoggingManager:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;

    .line 105
    :cond_0
    sget-object p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->monitorLoggingManager:Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addLog(Lcom/facebook/internal/logging/ExternalLog;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager$2;-><init>(Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;Lcom/facebook/internal/logging/ExternalLog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flushAndWait()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 127
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    invoke-static {v0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->buildRequests(Lcom/facebook/internal/logging/LoggingCache;)Ljava/util/List;

    move-result-object v0

    .line 133
    :try_start_0
    new-instance v1, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v1, v0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public flushLoggingStore()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logStore:Lcom/facebook/internal/logging/LoggingStore;

    invoke-interface {v0}, Lcom/facebook/internal/logging/LoggingStore;->readAndClearStore()Ljava/util/Collection;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->logQueue:Lcom/facebook/internal/logging/LoggingCache;

    invoke-interface {v1, v0}, Lcom/facebook/internal/logging/LoggingCache;->addLogs(Ljava/util/Collection;)Z

    .line 144
    invoke-virtual {p0}, Lcom/facebook/internal/logging/monitor/MonitorLoggingManager;->flushAndWait()V

    return-void
.end method
