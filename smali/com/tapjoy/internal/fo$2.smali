.class final Lcom/tapjoy/internal/fo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/tapjoy/internal/fo;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fo;Ljava/util/HashSet;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/tapjoy/internal/fo$2;->b:Lcom/tapjoy/internal/fo;

    iput-object p2, p0, Lcom/tapjoy/internal/fo$2;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 134
    invoke-static {p1}, Lcom/tapjoy/internal/fo;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/tapjoy/internal/fo$2;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/tapjoy/internal/fo$2;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1213
    invoke-static {}, Lcom/tapjoy/internal/hd;->a()Lcom/tapjoy/internal/hd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hd;->f()V

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/tapjoy/internal/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 156
    invoke-static {p1}, Lcom/tapjoy/internal/fo;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/tapjoy/internal/fo$2;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 162
    iget-object p1, p0, Lcom/tapjoy/internal/fo$2;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 1220
    invoke-static {}, Lcom/tapjoy/internal/hd;->a()Lcom/tapjoy/internal/hd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/hd;->g()V

    :cond_0
    return-void
.end method
