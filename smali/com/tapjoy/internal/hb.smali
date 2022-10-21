.class public final Lcom/tapjoy/internal/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/tapjoy/internal/hp;

.field b:Lcom/tapjoy/internal/by;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Thread;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/tapjoy/internal/hp;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/hp;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    .line 65
    iput-object v0, p0, Lcom/tapjoy/internal/hb;->c:Ljava/lang/Object;

    .line 67
    invoke-virtual {v0}, Lcom/tapjoy/internal/hp;->a()I

    .line 68
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "5Rocks"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tapjoy/internal/hb;->d:Ljava/lang/Thread;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(J)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 147
    iget-object v1, p0, Lcom/tapjoy/internal/hb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iput-boolean v0, p0, Lcom/tapjoy/internal/hb;->e:Z

    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 152
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 155
    :try_start_1
    iput-boolean v0, p0, Lcom/tapjoy/internal/hb;->e:Z

    .line 156
    iget-object p2, p0, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/by;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {p2}, Lcom/tapjoy/internal/hp;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 162
    :cond_1
    iget-object p2, p0, Lcom/tapjoy/internal/hb;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 165
    :cond_2
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hp;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/hb;->a(Z)V

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iput-boolean p1, p0, Lcom/tapjoy/internal/hb;->e:Z

    .line 172
    iget-object p1, p0, Lcom/tapjoy/internal/hb;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final run()V
    .locals 11

    :goto_0
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 79
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/by;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v4}, Lcom/tapjoy/internal/hp;->a()I

    move-result v4

    if-lez v4, :cond_7

    cmp-long v4, v2, v0

    if-gtz v4, :cond_7

    .line 80
    iget-object v4, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v4}, Lcom/tapjoy/internal/hp;->a()I

    move-result v4

    const/16 v5, 0x2710

    if-le v4, v5, :cond_0

    .line 81
    iget-object v4, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    iget-object v6, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v6}, Lcom/tapjoy/internal/hp;->a()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4, v6}, Lcom/tapjoy/internal/hp;->a(I)V

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/hp;->b(I)Lcom/tapjoy/internal/ey;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 89
    iget-object v2, v4, Lcom/tapjoy/internal/ey;->w:Lcom/tapjoy/internal/fk;

    const-wide/16 v5, 0x3

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, v2, Lcom/tapjoy/internal/fk;->G:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 91
    sget-object v2, Lcom/tapjoy/internal/hr;->c:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 94
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/u;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    sget-object v2, Lcom/tapjoy/internal/hr;->b:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 98
    :cond_2
    iget-boolean v2, p0, Lcom/tapjoy/internal/hb;->e:Z

    const/16 v3, 0x64

    if-nez v2, :cond_4

    iget-object v2, v4, Lcom/tapjoy/internal/ey;->n:Lcom/tapjoy/internal/fb;

    sget-object v5, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    .line 99
    invoke-virtual {v2}, Lcom/tapjoy/internal/hp;->a()I

    move-result v2

    if-ge v2, v3, :cond_4

    iget-object v2, v4, Lcom/tapjoy/internal/ey;->p:Ljava/lang/Long;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    goto :goto_2

    .line 103
    :cond_3
    iget-object v2, v4, Lcom/tapjoy/internal/ey;->p:Ljava/lang/Long;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v5, v9

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 104
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_3

    :cond_4
    :goto_2
    move-wide v5, v0

    :goto_3
    cmp-long v2, v5, v0

    if-gtz v2, :cond_6

    .line 110
    new-instance v2, Lcom/tapjoy/internal/io;

    invoke-direct {v2}, Lcom/tapjoy/internal/io;-><init>()V

    .line 111
    invoke-virtual {v2, v4}, Lcom/tapjoy/internal/io;->a(Lcom/tapjoy/internal/ey;)Z

    const/4 v4, 0x1

    :goto_4
    if-ge v4, v3, :cond_5

    .line 113
    iget-object v7, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v7}, Lcom/tapjoy/internal/hp;->a()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 114
    iget-object v7, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v7, v4}, Lcom/tapjoy/internal/hp;->b(I)Lcom/tapjoy/internal/ey;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 115
    invoke-virtual {v2, v7}, Lcom/tapjoy/internal/io;->a(Lcom/tapjoy/internal/ey;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 123
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Lcom/tapjoy/internal/io;->g()I

    .line 124
    iget-object v3, p0, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/by;

    invoke-interface {v3, v2}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;)Ljava/lang/Object;

    .line 125
    iget-object v3, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v2}, Lcom/tapjoy/internal/io;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/hp;->a(I)V

    .line 127
    invoke-virtual {v2}, Lcom/tapjoy/internal/io;->g()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    move-wide v2, v5

    goto/16 :goto_1

    .line 129
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Lcom/tapjoy/internal/io;->g()I

    const-wide/32 v2, 0x493e0

    goto/16 :goto_1

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/hp;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hp;->flush()V

    .line 136
    invoke-direct {p0, v2, v3}, Lcom/tapjoy/internal/hb;->a(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    return-void
.end method
