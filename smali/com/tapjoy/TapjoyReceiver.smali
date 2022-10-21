.class public Lcom/tapjoy/TapjoyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 32
    invoke-static {p1}, Lcom/tapjoy/internal/hf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hf;

    .line 1176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tapjoy.PUSH_CLICK"

    .line 1177
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v0, "com.tapjoy.PUSH_ID"

    .line 1178
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tapjoy.PUSH_PAYLOAD"

    .line 1179
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_7

    .line 1313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 1317
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1339
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.category.LAUNCHER"

    .line 1341
    invoke-virtual {v6, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    .line 1343
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1344
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    goto :goto_0

    .line 1348
    :cond_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v6, 0x10000000

    .line 1349
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1350
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_6

    if-eqz v3, :cond_3

    .line 1320
    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    :cond_3
    invoke-static {p1}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hd;

    move-result-object v2

    .line 1372
    iget-object v3, v2, Lcom/tapjoy/internal/hd;->f:Lcom/tapjoy/internal/hg;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/hg;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1373
    iget-object v2, v2, Lcom/tapjoy/internal/hd;->g:Lcom/tapjoy/internal/hc;

    .line 2222
    sget-object v3, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    const-string v4, "push_click"

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/fb;Ljava/lang/String;)Lcom/tapjoy/internal/ey$a;

    move-result-object v3

    .line 2223
    new-instance v4, Lcom/tapjoy/internal/ff;

    invoke-direct {v4, v1, v1, v0}, Lcom/tapjoy/internal/ff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/tapjoy/internal/ey$a;->s:Lcom/tapjoy/internal/ff;

    .line 2224
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/ey$a;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 1376
    invoke-static {v0, p2}, Lcom/tapjoy/internal/ho;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :cond_5
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const-string p1, "No intent that can be used to launch the main activity."

    .line 1326
    invoke-static {p1}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;)V

    .line 33
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    .line 34
    invoke-virtual {p0, p1, v1, v1}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    return-void
.end method
