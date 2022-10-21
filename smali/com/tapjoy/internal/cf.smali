.class public final Lcom/tapjoy/internal/cf;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tapjoy/internal/dd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/dd;

    invoke-direct {v0}, Lcom/tapjoy/internal/dd;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/cf;->a:Lcom/tapjoy/internal/dd;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.16-tapjoy"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/tapjoy/internal/cf;->a:Lcom/tapjoy/internal/dd;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "Application Context cannot be null"

    .line 2000
    invoke-static {p0, v1}, Lcom/tapjoy/internal/dr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-boolean v1, v0, Lcom/tapjoy/internal/dd;->a:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 4000
    iput-boolean v1, v0, Lcom/tapjoy/internal/dd;->a:Z

    .line 1000
    invoke-static {}, Lcom/tapjoy/internal/dj;->a()Lcom/tapjoy/internal/dj;

    move-result-object v0

    .line 6000
    new-instance v1, Lcom/tapjoy/internal/ch;

    invoke-direct {v1}, Lcom/tapjoy/internal/ch;-><init>()V

    .line 5000
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 7000
    new-instance v3, Lcom/tapjoy/internal/ck;

    invoke-direct {v3, v2, p0, v1, v0}, Lcom/tapjoy/internal/ck;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/tapjoy/internal/ch;Lcom/tapjoy/internal/cj;)V

    .line 5000
    iput-object v3, v0, Lcom/tapjoy/internal/dj;->b:Lcom/tapjoy/internal/ck;

    .line 1000
    invoke-static {}, Lcom/tapjoy/internal/df;->a()Lcom/tapjoy/internal/df;

    move-result-object v0

    .line 8000
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1000
    :cond_0
    invoke-static {p0}, Lcom/tapjoy/internal/dp;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 9000
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v0, Lcom/tapjoy/internal/dh;->a:Landroid/content/Context;

    :cond_2
    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/cf;->a:Lcom/tapjoy/internal/dd;

    .line 11000
    iget-boolean v0, v0, Lcom/tapjoy/internal/dd;->a:Z

    return v0
.end method
