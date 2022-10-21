.class final Lcom/vungle/warren/utility/ActivityManager$2;
.super Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/ActivityManager;->startWhenForeground(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$weakContext:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/vungle/warren/utility/ActivityManager$2;->val$weakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vungle/warren/utility/ActivityManager$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStart()V

    .line 121
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->access$500()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vungle/warren/utility/ActivityManager;->access$600(Lcom/vungle/warren/utility/ActivityManager;Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 122
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$2;->val$weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/vungle/warren/utility/ActivityManager$2;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->access$700(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
