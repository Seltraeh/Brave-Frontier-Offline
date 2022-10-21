.class public Lcom/tapjoy/internal/he;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gs;


# static fields
.field private static final a:Lcom/tapjoy/internal/he;


# instance fields
.field private final b:Lcom/tapjoy/internal/gs;

.field private final c:Lcom/tapjoy/internal/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/tapjoy/internal/he$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/he$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/he;->a:Lcom/tapjoy/internal/he;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/gs;

    .line 61
    iput-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tapjoy/internal/he;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/gs;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/gs;

    .line 2038
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2048
    invoke-static {p1}, Lcom/tapjoy/internal/jt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/os/Handler;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 68
    invoke-static {p1}, Lcom/tapjoy/internal/t;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/av;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    .line 69
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    return-void

    .line 70
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Lcom/tapjoy/internal/gv;->b()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 71
    sget-object p1, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/av;

    iput-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    return-void

    .line 74
    :cond_3
    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/t;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/av;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/he;)Lcom/tapjoy/internal/gs;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/gs;

    return-object p0
.end method

.method public static a(Lcom/tapjoy/internal/gs;)Lcom/tapjoy/internal/he;
    .locals 1

    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lcom/tapjoy/internal/he;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/he;-><init>(Lcom/tapjoy/internal/gs;)V

    return-object v0

    .line 52
    :cond_0
    sget-object p0, Lcom/tapjoy/internal/he;->a:Lcom/tapjoy/internal/he;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/he$2;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/he$2;-><init>(Lcom/tapjoy/internal/he;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tapjoy/internal/gp;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/he$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/he$6;-><init>(Lcom/tapjoy/internal/he;Ljava/lang/String;Lcom/tapjoy/internal/gp;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gp;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/he$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/he$7;-><init>(Lcom/tapjoy/internal/he;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gp;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/he$3;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/he$3;-><init>(Lcom/tapjoy/internal/he;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/he$4;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/he$4;-><init>(Lcom/tapjoy/internal/he;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/he$5;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/he$5;-><init>(Lcom/tapjoy/internal/he;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
