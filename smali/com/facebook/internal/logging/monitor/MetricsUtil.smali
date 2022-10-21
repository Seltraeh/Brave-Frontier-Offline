.class public Lcom/facebook/internal/logging/monitor/MetricsUtil;
.super Ljava/lang/Object;
.source "MetricsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;,
        Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "com.facebook.internal.logging.monitor.MetricsUtil"

.field protected static final INVALID_TIME:I = -0x1

.field private static metricsUtil:Lcom/facebook/internal/logging/monitor/MetricsUtil;


# instance fields
.field private final metricsDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;",
            "Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsDataMap:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/internal/logging/monitor/MetricsUtil;
    .locals 3

    const-class v0, Lcom/facebook/internal/logging/monitor/MetricsUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 67
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsUtil:Lcom/facebook/internal/logging/monitor/MetricsUtil;

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Lcom/facebook/internal/logging/monitor/MetricsUtil;

    invoke-direct {v1}, Lcom/facebook/internal/logging/monitor/MetricsUtil;-><init>()V

    sput-object v1, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsUtil:Lcom/facebook/internal/logging/monitor/MetricsUtil;

    .line 70
    :cond_1
    sget-object v1, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsUtil:Lcom/facebook/internal/logging/monitor/MetricsUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method removeTempMetricsDataFor(Lcom/facebook/internal/logging/monitor/PerformanceEventName;J)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;-><init>(Lcom/facebook/internal/logging/monitor/PerformanceEventName;J)V

    .line 139
    iget-object p1, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsDataMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 140
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method startMeasureFor(Lcom/facebook/internal/logging/monitor/PerformanceEventName;J)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;-><init>(Lcom/facebook/internal/logging/monitor/PerformanceEventName;J)V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 87
    new-instance p3, Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;

    invoke-direct {p3, p1, p2}, Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;-><init>(J)V

    .line 88
    iget-object p1, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsDataMap:Ljava/util/Map;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 89
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method stopMeasureFor(Lcom/facebook/internal/logging/monitor/PerformanceEventName;J)Lcom/facebook/internal/logging/monitor/MonitorLog;
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 103
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 104
    new-instance v0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;-><init>(Lcom/facebook/internal/logging/monitor/PerformanceEventName;J)V

    .line 105
    new-instance p2, Lcom/facebook/internal/logging/LogEvent;

    invoke-virtual {p1}, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v4, Lcom/facebook/internal/logging/LogCategory;->PERFORMANCE:Lcom/facebook/internal/logging/LogCategory;

    invoke-direct {p2, p3, v4}, Lcom/facebook/internal/logging/LogEvent;-><init>(Ljava/lang/String;Lcom/facebook/internal/logging/LogCategory;)V

    .line 106
    new-instance p3, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;

    invoke-direct {p3, p2}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;-><init>(Lcom/facebook/internal/logging/LogEvent;)V

    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeSpent(I)Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->build()Lcom/facebook/internal/logging/monitor/MonitorLog;

    move-result-object p3

    .line 107
    iget-object v4, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsDataMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t measure for "

    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", startMeasureFor hasn\'t been called before."

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    sget-object p1, Lcom/facebook/internal/logging/monitor/MetricsUtil;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsDataMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;

    if-eqz p1, :cond_2

    .line 119
    invoke-static {p1}, Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;->access$000(Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int p1, v2

    .line 121
    new-instance p3, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;

    invoke-direct {p3, p2}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;-><init>(Lcom/facebook/internal/logging/LogEvent;)V

    invoke-virtual {p3, p1}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->timeSpent(I)Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/internal/logging/monitor/MonitorLog$LogBuilder;->build()Lcom/facebook/internal/logging/monitor/MonitorLog;

    move-result-object p3

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil;->metricsDataMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p3

    :catchall_0
    move-exception p1

    .line 125
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
