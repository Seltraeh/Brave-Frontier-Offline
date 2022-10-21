.class public final Lcom/tapjoy/internal/kh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/kh$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tapjoy/internal/kh$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/tapjoy/internal/kh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/kh;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/tapjoy/internal/kh;->b:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/tapjoy/internal/kh;->c:Z

    return-void
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    .line 45
    sget-object v0, Lcom/tapjoy/internal/kh;->a:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/kh;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-boolean v1, p0, Lcom/tapjoy/internal/kh;->c:Z

    if-eqz v1, :cond_0

    .line 126
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/tapjoy/internal/kh;->c:Z

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/kh;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/kh;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/kh$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kh$a;->a()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 129
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
