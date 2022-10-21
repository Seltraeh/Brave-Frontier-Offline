.class final Lcom/tapjoy/internal/kg$a;
.super Lcom/tapjoy/internal/kf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/kf<",
        "Lcom/tapjoy/internal/kj$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/kg;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/kg;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/tapjoy/internal/kg$a;->a:Lcom/tapjoy/internal/kg;

    invoke-direct {p0}, Lcom/tapjoy/internal/kf;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/kg;B)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/kg$a;-><init>(Lcom/tapjoy/internal/kg;)V

    return-void
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)Lcom/tapjoy/internal/kj$a;
    .locals 0

    .line 250
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/tapjoy/internal/kf;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/kj$a;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 252
    :catch_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    iget-object p2, p0, Lcom/tapjoy/internal/kg$a;->a:Lcom/tapjoy/internal/kg;

    invoke-virtual {p2}, Lcom/tapjoy/internal/kg;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/tapjoy/internal/kg$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/tapjoy/internal/kj$a;

    move-result-object p1

    return-object p1
.end method
