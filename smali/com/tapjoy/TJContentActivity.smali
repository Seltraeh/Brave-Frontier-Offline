.class public Lcom/tapjoy/TJContentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJContentActivity$AbstractContentProducer;,
        Lcom/tapjoy/TJContentActivity$ContentProducer;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tapjoy/TJContentActivity$ContentProducer;


# instance fields
.field private b:Lcom/tapjoy/TJContentActivity$ContentProducer;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "com.tapjoy.internal.content.producer.id"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    const-class v2, Lcom/tapjoy/TJContentActivity;

    monitor-enter v2

    .line 107
    :try_start_0
    sget-object v3, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-static {v3}, Lcom/tapjoy/TJContentActivity;->toIdentityString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    iput-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    const/4 v0, 0x0

    .line 109
    sput-object v0, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    .line 114
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "com.tapjoy.internal.content.fullscreen"

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {p1, p0}, Lcom/tapjoy/TJContentActivity$ContentProducer;->show(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_2
    :try_start_1
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    .line 114
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V
    .locals 3

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJContentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10810000

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.tapjoy.internal.content.producer.id"

    .line 46
    invoke-static {p1}, Lcom/tapjoy/TJContentActivity;->toIdentityString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.tapjoy.internal.content.fullscreen"

    .line 47
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    const-class p2, Lcom/tapjoy/TJContentActivity;

    monitor-enter p2

    .line 50
    :try_start_0
    sput-object p1, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static toIdentityString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tapjoy/TJContentActivity$ContentProducer;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tapjoy/TJContentActivity;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p0}, Lcom/tapjoy/TJContentActivity$ContentProducer;->dismiss(Landroid/app/Activity;)V

    .line 73
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 79
    invoke-static {}, Lcom/tapjoy/internal/hd;->a()Lcom/tapjoy/internal/hd;

    move-result-object v0

    .line 2017
    iget-boolean v0, v0, Lcom/tapjoy/internal/hd;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    .line 2183
    invoke-static {}, Lcom/tapjoy/internal/hd;->a()Lcom/tapjoy/internal/hd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hd;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    .line 2201
    invoke-static {}, Lcom/tapjoy/internal/hd;->a()Lcom/tapjoy/internal/hd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hd;->b(Landroid/app/Activity;)V

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
