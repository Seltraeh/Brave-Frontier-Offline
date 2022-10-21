.class public Lcom/google/ads/conversiontracking/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:J

.field private static final b:J

.field private static c:Ljava/lang/Object;

.field private static d:Lcom/google/ads/conversiontracking/c;


# instance fields
.field private final e:J

.field private final f:J

.field private final g:Lcom/google/ads/conversiontracking/b;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/content/SharedPreferences;

.field private n:J

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/conversiontracking/c;->a:J

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/conversiontracking/c;->b:J

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/conversiontracking/c;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;JJLcom/google/ads/conversiontracking/b;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    .line 98
    iput-wide p2, p0, Lcom/google/ads/conversiontracking/c;->f:J

    .line 99
    iput-wide p4, p0, Lcom/google/ads/conversiontracking/c;->e:J

    .line 100
    iput-object p6, p0, Lcom/google/ads/conversiontracking/c;->g:Lcom/google/ads/conversiontracking/b;

    .line 102
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    .line 103
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/ads/conversiontracking/c;->k:Ljava/util/Set;

    .line 105
    iget-object p1, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    const-string p2, "google_auto_usage"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/conversiontracking/c;->m:Landroid/content/SharedPreferences;

    .line 106
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->d()V

    .line 108
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Google Conversion SDK"

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/ads/conversiontracking/c;->i:Landroid/os/HandlerThread;

    .line 109
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/ads/conversiontracking/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/ads/conversiontracking/c;->o:Landroid/os/Handler;

    .line 111
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/c;
    .locals 9

    .line 64
    sget-object v0, Lcom/google/ads/conversiontracking/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/google/ads/conversiontracking/c;->d:Lcom/google/ads/conversiontracking/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 67
    :try_start_1
    new-instance v1, Lcom/google/ads/conversiontracking/c;

    sget-wide v4, Lcom/google/ads/conversiontracking/c;->a:J

    sget-wide v6, Lcom/google/ads/conversiontracking/c;->b:J

    new-instance v8, Lcom/google/ads/conversiontracking/b;

    invoke-direct {v8, p0}, Lcom/google/ads/conversiontracking/b;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/ads/conversiontracking/c;-><init>(Landroid/content/Context;JJLcom/google/ads/conversiontracking/b;)V

    sput-object v1, Lcom/google/ads/conversiontracking/c;->d:Lcom/google/ads/conversiontracking/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Error starting automated usage thread"

    .line 73
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    sget-object p0, Lcom/google/ads/conversiontracking/c;->d:Lcom/google/ads/conversiontracking/c;

    return-object p0

    :catchall_0
    move-exception p0

    .line 76
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private b()J
    .locals 6

    .line 205
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v0

    .line 207
    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->n:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sub-long/2addr v0, v2

    .line 208
    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->f:J

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 210
    :goto_0
    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->n:J

    iget-wide v4, p0, Lcom/google/ads/conversiontracking/c;->f:J

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private b(J)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "end_of_interval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    iput-wide p1, p0, Lcom/google/ads/conversiontracking/c;->n:J

    return-void
.end method

.method private c()V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->b()J

    move-result-wide v1

    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 216
    invoke-virtual {p0, v1, v2}, Lcom/google/ads/conversiontracking/c;->a(J)V

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 5

    .line 230
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/c;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 231
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->f:J

    add-long/2addr v0, v2

    .line 232
    iget-object v2, p0, Lcom/google/ads/conversiontracking/c;->m:Landroid/content/SharedPreferences;

    const-string v3, "end_of_interval"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/conversiontracking/c;->n:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(J)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->o:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->o:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->o:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->k:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/ads/conversiontracking/c;->c(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 121
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected a()Z
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    const-string v1, "activity"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 248
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    const-string v2, "keyguard"

    .line 249
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 250
    iget-object v2, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    const-string v3, "power"

    .line 251
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 253
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 254
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_0

    .line 255
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 258
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->k:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->k:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    .line 143
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->g:Lcom/google/ads/conversiontracking/b;

    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->n:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/ads/conversiontracking/b;->a(Ljava/lang/String;J)V

    .line 148
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v0

    return-void

    .line 144
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 9

    .line 178
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/c;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/conversiontracking/c;->a(J)V

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 188
    iget-wide v6, p0, Lcom/google/ads/conversiontracking/c;->n:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 189
    iget-wide v4, p0, Lcom/google/ads/conversiontracking/c;->n:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Lcom/google/ads/conversiontracking/c;->g:Lcom/google/ads/conversiontracking/b;

    iget-wide v4, p0, Lcom/google/ads/conversiontracking/c;->n:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/ads/conversiontracking/b;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 193
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->c()V

    .line 196
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/conversiontracking/c;->b(J)V

    return-void

    :catchall_0
    move-exception v1

    .line 193
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
