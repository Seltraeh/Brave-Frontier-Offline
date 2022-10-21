.class final Lcom/tapjoy/internal/ke$1;
.super Lcom/tapjoy/internal/kg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ke;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ke;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tapjoy/internal/ke$1;->a:Lcom/tapjoy/internal/ke;

    invoke-direct {p0}, Lcom/tapjoy/internal/kg;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/tapjoy/internal/ke$1;->a:Lcom/tapjoy/internal/ke;

    .line 1123
    new-instance v1, Lcom/tapjoy/internal/ke$2;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/ke$2;-><init>(Lcom/tapjoy/internal/ke;)V

    .line 43
    new-instance v0, Lcom/tapjoy/internal/ke$1$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ke$1$1;-><init>(Lcom/tapjoy/internal/ke$1;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tapjoy/internal/ke$1;->a:Lcom/tapjoy/internal/ke;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ke;->a()V

    return-void
.end method
