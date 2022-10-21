.class public final Lcom/tapjoy/internal/gl;
.super Lcom/tapjoy/internal/gk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/hc;)V
    .locals 7

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gk;-><init>(Ljava/io/File;Lcom/tapjoy/internal/hc;)V

    .line 22
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl;J)V
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/gk;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 16
    invoke-super/range {p0 .. p5}, Lcom/tapjoy/internal/gk;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl;)V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/tapjoy/internal/gk;->a()V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl;)V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/tapjoy/internal/gk;->a()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 10

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/tapjoy/internal/gl$a;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gl$a;-><init>(Lcom/tapjoy/internal/gl;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected final a(J)V
    .locals 10

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/tapjoy/internal/gl$a;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gl$a;-><init>(Lcom/tapjoy/internal/gl;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected final a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/tapjoy/internal/gl$a;

    const/4 v3, 0x3

    if-eqz p5, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v8, v1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    move-object v8, p5

    :goto_0
    move-object v1, v9

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gl$a;-><init>(Lcom/tapjoy/internal/gl;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected final finalize()V
    .locals 4

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 30
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-super {p0}, Lcom/tapjoy/internal/gk;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/tapjoy/internal/gk;->finalize()V

    .line 33
    throw v0
.end method
