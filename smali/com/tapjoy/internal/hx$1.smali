.class final Lcom/tapjoy/internal/hx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hx;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hx;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hx;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/tapjoy/internal/hx$1;->a:Lcom/tapjoy/internal/hx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tapjoy/internal/hx$1;->a:Lcom/tapjoy/internal/hx;

    invoke-static {v0}, Lcom/tapjoy/internal/hx;->a(Lcom/tapjoy/internal/hx;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hx$1;->a:Lcom/tapjoy/internal/hx;

    invoke-static {v0}, Lcom/tapjoy/internal/hx;->b(Lcom/tapjoy/internal/hx;)V

    return-void
.end method
