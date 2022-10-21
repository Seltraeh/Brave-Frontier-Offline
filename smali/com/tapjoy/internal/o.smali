.class public abstract Lcom/tapjoy/internal/o;
.super Lcom/tapjoy/internal/p;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/tapjoy/internal/q;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/q;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/tapjoy/internal/p;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/tapjoy/internal/o;->c:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    const/16 v1, 0xbb8

    invoke-interface {v0, p1, v1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;I)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string v0, "app"

    .line 278
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private b()Z
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/q;->f(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 86
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.google.android.gms"

    const/4 v1, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tapjoy/internal/y;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    const v3, 0x30345a

    if-lt v2, v3, :cond_0

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-static {p0, v2}, Lcom/tapjoy/internal/o;->b(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "sender"

    .line 213
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.google.android.gsf"

    const/4 v1, 0x0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tapjoy/internal/y;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-static {p0, v2}, Lcom/tapjoy/internal/o;->b(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "sender"

    .line 231
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->e(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->e(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/q;->d(Landroid/content/Context;)I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/internal/y;->a(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    .line 169
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->e(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/q;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->e(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_3
    invoke-direct {p0}, Lcom/tapjoy/internal/o;->b()Z

    move-result p1

    if-nez p1, :cond_4

    .line 183
    iget-object p1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;Z)V

    .line 195
    iget-boolean v0, p0, Lcom/tapjoy/internal/o;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/o;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/o;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_1
    return-void
.end method

.method private declared-synchronized f(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;Z)V

    .line 383
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/y;->a(Landroid/content/Context;)I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v3, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v3, v0}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;I)V

    .line 386
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Z)V

    .line 390
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/p;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 392
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tapjoy/internal/o;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/p;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 399
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1267
    aget-object p1, p1, v0

    .line 130
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 8

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.google.android.gcm.intent.RETRY"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const-string v0, "registration_id"

    .line 300
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregistered"

    .line 301
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "error"

    .line 302
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string p1, "|"

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v4

    .line 314
    :cond_0
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->f(Ljava/lang/String;)V

    return v4

    :cond_1
    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 318
    iget-boolean v0, p0, Lcom/tapjoy/internal/o;->c:Z

    if-nez v0, :cond_2

    .line 320
    iput-boolean v3, p0, Lcom/tapjoy/internal/o;->c:Z

    .line 321
    invoke-virtual {p0}, Lcom/tapjoy/internal/o;->a()Z

    return v3

    :cond_2
    if-eqz v1, :cond_3

    .line 1403
    iget-object p1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1406
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;)V

    .line 1407
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, v4}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Z)V

    .line 1408
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, v3}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;Z)V

    .line 1410
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/p;->a(Ljava/lang/String;)V

    return v4

    :cond_3
    if-eqz p1, :cond_7

    const-string v0, "SERVICE_NOT_AVAILABLE"

    .line 1417
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1418
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/p;->b(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 1419
    :cond_4
    iget-boolean v0, p0, Lcom/tapjoy/internal/o;->c:Z

    if-nez v0, :cond_5

    .line 1420
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/p;->b(Ljava/lang/String;)Z

    .line 1423
    iput-boolean v3, p0, Lcom/tapjoy/internal/o;->c:Z

    .line 1424
    invoke-virtual {p0}, Lcom/tapjoy/internal/o;->a()Z

    goto :goto_1

    .line 1429
    :cond_5
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/p;->c(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_6

    .line 1441
    iget-object p1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/tapjoy/internal/q;->g(Landroid/content/Context;)I

    move-result p1

    .line 1443
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1446
    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const-string v2, "alarm"

    .line 2043
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x3

    .line 1447
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const v0, 0x36ee80

    if-ge p1, v0, :cond_6

    .line 1452
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;I)V

    :cond_6
    :goto_1
    return v3

    :cond_7
    return v4

    :cond_8
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 340
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "message_type"

    .line 341
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "deleted_messages"

    .line 2363
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "total_deleted"

    .line 2364
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2367
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2369
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/p;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    return v4

    .line 3359
    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/p;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 350
    :cond_b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3458
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 3459
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    .line 3465
    :cond_c
    invoke-virtual {p0}, Lcom/tapjoy/internal/o;->a()Z

    return v3

    :cond_d
    :goto_2
    return v4
.end method
