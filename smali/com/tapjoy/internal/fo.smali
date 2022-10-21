.class public final Lcom/tapjoy/internal/fo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/fo;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/tapjoy/internal/fo;

    invoke-direct {v0}, Lcom/tapjoy/internal/fo;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fo;->a:Lcom/tapjoy/internal/fo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fo;->d:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fo;Landroid/app/Application;)Landroid/app/Application;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tapjoy/internal/fo;->b:Landroid/app/Application;

    return-object p1
.end method

.method static synthetic a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/tapjoy/internal/fo;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 3

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    return-void

    .line 2029
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fo;->a:Lcom/tapjoy/internal/fo;

    .line 2084
    iget-object v1, v0, Lcom/tapjoy/internal/fo;->b:Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 2087
    monitor-enter v0

    .line 2088
    :try_start_0
    iget-object v1, v0, Lcom/tapjoy/internal/fo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v1, :cond_1

    .line 2089
    iget-object v1, v0, Lcom/tapjoy/internal/fo;->b:Landroid/app/Application;

    iget-object v2, v0, Lcom/tapjoy/internal/fo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v1, 0x0

    .line 2090
    iput-object v1, v0, Lcom/tapjoy/internal/fo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2095
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 1029
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/fo;->a:Lcom/tapjoy/internal/fo;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1053
    iget-object v1, v0, Lcom/tapjoy/internal/fo;->b:Landroid/app/Application;

    if-nez v1, :cond_4

    .line 1099
    :try_start_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 1101
    check-cast p0, Landroid/app/Application;

    iput-object p0, v0, Lcom/tapjoy/internal/fo;->b:Landroid/app/Application;

    goto :goto_0

    .line 1104
    :cond_2
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1106
    new-instance v1, Lcom/tapjoy/internal/fo$1;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/fo$1;-><init>(Lcom/tapjoy/internal/fo;Ljava/util/concurrent/CountDownLatch;)V

    .line 1119
    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1120
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Tapjoy.ActivityTracker"

    .line 1057
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :goto_0
    iget-object p0, v0, Lcom/tapjoy/internal/fo;->b:Landroid/app/Application;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 1064
    :cond_4
    :goto_1
    monitor-enter v0

    .line 1065
    :try_start_1
    iget-object p0, v0, Lcom/tapjoy/internal/fo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p0, :cond_6

    .line 1066
    invoke-static {}, Lcom/tapjoy/internal/b;->c()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1068
    iget-object v1, v0, Lcom/tapjoy/internal/fo;->d:Ljava/util/HashSet;

    invoke-static {p0}, Lcom/tapjoy/internal/fo;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_5
    iget-object p0, v0, Lcom/tapjoy/internal/fo;->d:Ljava/util/HashSet;

    .line 1126
    new-instance v1, Lcom/tapjoy/internal/fo$2;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/fo$2;-><init>(Lcom/tapjoy/internal/fo;Ljava/util/HashSet;)V

    .line 1071
    iput-object v1, v0, Lcom/tapjoy/internal/fo;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1072
    iget-object p0, v0, Lcom/tapjoy/internal/fo;->b:Landroid/app/Application;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1213
    invoke-static {}, Lcom/tapjoy/internal/hd;->a()Lcom/tapjoy/internal/hd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/internal/hd;->f()V

    .line 1079
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic b()Landroid/app/Application;
    .locals 3

    const-string v0, "android.app.ActivityThread"

    .line 2179
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "currentApplication"

    .line 2180
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method private static b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
