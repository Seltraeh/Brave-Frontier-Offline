.class final Lcom/tapjoy/internal/fq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Thread;

.field private final c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Thread;Landroid/os/Looper;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tapjoy/internal/fq$a;->a:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/tapjoy/internal/fq$a;->b:Ljava/lang/Thread;

    .line 48
    iput-object p3, p0, Lcom/tapjoy/internal/fq$a;->c:Landroid/os/Looper;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fq$a;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tapjoy/internal/fq$a;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 53
    iget-object p1, p0, Lcom/tapjoy/internal/fq$a;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/tapjoy/internal/fq$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 61
    new-instance p1, Lcom/tapjoy/internal/fq$a$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/tapjoy/internal/fq$a$1;-><init>(Lcom/tapjoy/internal/fq$a;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/fq$a;->c:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/tapjoy/internal/fq$a;->c:Landroid/os/Looper;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fq$a;->b:Ljava/lang/Thread;

    invoke-static {}, Lcom/tapjoy/internal/gv;->b()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/av;

    .line 79
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 82
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    .line 86
    :cond_3
    iget-object p1, p0, Lcom/tapjoy/internal/fq$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "method not return void: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
