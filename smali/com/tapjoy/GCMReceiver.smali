.class public Lcom/tapjoy/GCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 58
    invoke-static {p1}, Lcom/tapjoy/internal/hf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hf;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/o;->a(Landroid/content/Intent;)Z

    move-result p1

    .line 59
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p2, v0, v0}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_0
    return-void
.end method
