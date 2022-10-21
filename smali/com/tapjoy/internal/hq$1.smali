.class final Lcom/tapjoy/internal/hq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hq;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hq;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tapjoy/internal/hq$1;->a:Lcom/tapjoy/internal/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/hq$1;->a:Lcom/tapjoy/internal/hq;

    .line 1015
    iget-object v0, v0, Lcom/tapjoy/internal/hq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "The session ended"

    .line 72
    invoke-static {v0}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tapjoy/internal/hq$1;->a:Lcom/tapjoy/internal/hq;

    .line 2015
    iget-object v0, v0, Lcom/tapjoy/internal/hq;->a:Lcom/tapjoy/internal/hc;

    .line 2102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tapjoy/internal/hc;->c:J

    sub-long/2addr v1, v3

    .line 2103
    iget-object v3, v0, Lcom/tapjoy/internal/hc;->a:Lcom/tapjoy/internal/hg;

    .line 2409
    monitor-enter v3

    .line 2410
    :try_start_0
    iget-object v4, v3, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    iget-object v4, v4, Lcom/tapjoy/internal/hn;->i:Lcom/tapjoy/internal/k;

    invoke-virtual {v4}, Lcom/tapjoy/internal/k;->a()J

    move-result-wide v4

    add-long/2addr v4, v1

    .line 2411
    iget-object v6, v3, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    iget-object v6, v6, Lcom/tapjoy/internal/hn;->i:Lcom/tapjoy/internal/k;

    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/internal/k;->a(J)V

    .line 2412
    iget-object v6, v3, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/fk$a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, Lcom/tapjoy/internal/fk$a;->i:Ljava/lang/Long;

    .line 2413
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2104
    sget-object v3, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    const-string v4, "session"

    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/fb;Ljava/lang/String;)Lcom/tapjoy/internal/ey$a;

    move-result-object v3

    .line 2105
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/tapjoy/internal/ey$a;->i:Ljava/lang/Long;

    .line 2106
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/ey$a;)V

    const-wide/16 v4, 0x0

    .line 2108
    iput-wide v4, v0, Lcom/tapjoy/internal/hc;->c:J

    .line 2109
    iget-object v4, v0, Lcom/tapjoy/internal/hc;->a:Lcom/tapjoy/internal/hg;

    iget-object v3, v3, Lcom/tapjoy/internal/ey$a;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2417
    monitor-enter v4

    .line 2418
    :try_start_1
    iget-object v3, v4, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    invoke-virtual {v3}, Lcom/tapjoy/internal/hn;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2419
    iget-object v7, v4, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    iget-object v7, v7, Lcom/tapjoy/internal/hn;->j:Lcom/tapjoy/internal/k;

    invoke-virtual {v7, v3, v5, v6}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 2420
    iget-object v7, v4, Lcom/tapjoy/internal/hg;->c:Lcom/tapjoy/internal/hn;

    iget-object v7, v7, Lcom/tapjoy/internal/hn;->k:Lcom/tapjoy/internal/k;

    invoke-virtual {v7, v3, v1, v2}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 2421
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2423
    iget-object v3, v4, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/fk$a;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/tapjoy/internal/fk$a;->j:Ljava/lang/Long;

    .line 2424
    iget-object v3, v4, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/fk$a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/tapjoy/internal/fk$a;->k:Ljava/lang/Long;

    .line 2425
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2110
    iget-object v0, v0, Lcom/tapjoy/internal/hc;->b:Lcom/tapjoy/internal/hb;

    .line 3199
    iget-object v1, v0, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/by;

    if-eqz v1, :cond_0

    .line 3200
    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->a()V

    .line 3201
    new-instance v1, Lcom/tapjoy/internal/hb$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/hb$1;-><init>(Lcom/tapjoy/internal/hb;)V

    .line 3206
    invoke-virtual {v1}, Lcom/tapjoy/internal/iq;->run()V

    .line 3209
    :cond_0
    iget-object v0, v0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hp;->flush()V

    .line 74
    sget-object v0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/fv$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fv$a;->notifyObservers()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2425
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 2413
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
