.class final Lcom/tapjoy/internal/gf$b$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gf$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gf$b;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gf$b;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/tapjoy/internal/gf$b$2;->a:Lcom/tapjoy/internal/gf$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 345
    iget-object p1, p0, Lcom/tapjoy/internal/gf$b$2;->a:Lcom/tapjoy/internal/gf$b;

    iget-object p1, p1, Lcom/tapjoy/internal/gf$b;->a:Lcom/tapjoy/internal/gf;

    invoke-virtual {p1}, Lcom/tapjoy/internal/gf;->b()V

    return-void
.end method
