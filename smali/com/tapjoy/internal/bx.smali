.class public final Lcom/tapjoy/internal/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/bv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bv<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tapjoy/internal/ca;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ca<",
            "TResult;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/tapjoy/internal/bv;Lcom/tapjoy/internal/ca;)V
    .locals 0
    .param p2    # Lcom/tapjoy/internal/ca;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/bv<",
            "TResult;>;",
            "Lcom/tapjoy/internal/ca<",
            "TResult;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bv;

    .line 23
    iput-object p2, p0, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/ca;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bv;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bv;->f()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v1, p0, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/ca;

    if-eqz v1, :cond_0

    .line 43
    instance-of v2, v1, Lcom/tapjoy/internal/cb;

    if-nez v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bv;

    invoke-interface {v1, v2, v0}, Lcom/tapjoy/internal/ca;->a(Lcom/tapjoy/internal/bv;Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    nop

    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/ca;

    if-eqz v0, :cond_1

    .line 34
    instance-of v1, v0, Lcom/tapjoy/internal/cb;

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bv;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/ca;->a(Lcom/tapjoy/internal/bv;)V

    :cond_1
    return-void
.end method
