.class public final Lcom/tapjoy/internal/hp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Flushable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/tapjoy/internal/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/as<",
            "Lcom/tapjoy/internal/ey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tapjoy/internal/hp;->a:Ljava/io/File;

    .line 29
    iput-object p0, p0, Lcom/tapjoy/internal/hp;->b:Ljava/lang/Object;

    .line 31
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/hp$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hp$1;-><init>(Lcom/tapjoy/internal/hp;)V

    .line 43
    new-instance v1, Lcom/tapjoy/internal/f;

    invoke-direct {v1, p1, v0}, Lcom/tapjoy/internal/f;-><init>(Ljava/io/File;Lcom/tapjoy/internal/ay;)V

    .line 44
    invoke-static {v1}, Lcom/tapjoy/internal/ap;->a(Lcom/tapjoy/internal/as;)Lcom/tapjoy/internal/ap;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 46
    :catch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hp;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 53
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/aq;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/aq;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 82
    :catch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hp;->c()V

    const/4 v1, 0x0

    .line 83
    monitor-exit v0

    return v1

    .line 85
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/as;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 104
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lcom/tapjoy/internal/hp;->c()V

    .line 106
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/tapjoy/internal/ey;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 126
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lcom/tapjoy/internal/hp;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :catch_1
    :goto_0
    :try_start_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final b(I)Lcom/tapjoy/internal/ey;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/as;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/ey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 115
    :catch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hp;->c()V

    const/4 p1, 0x0

    .line 116
    monitor-exit v0

    return-object p1

    .line 118
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 93
    :catch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hp;->c()V

    const/4 v1, 0x1

    .line 94
    monitor-exit v0

    return v1

    .line 96
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final flush()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    instance-of v1, v1, Ljava/io/Flushable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 69
    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/as;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/tapjoy/internal/hp;->c()V

    .line 74
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
