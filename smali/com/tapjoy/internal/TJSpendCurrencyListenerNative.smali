.class public Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJSpendCurrencyListener;


# annotations
.annotation build Lcom/tapjoy/internal/fw;
.end annotation


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 14
    iput-wide p1, p0, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->a:J

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static create(J)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/tapjoy/internal/fw;
    .end annotation

    .line 30
    new-instance v0, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onSpendCurrencyResponseFailureNative(JLjava/lang/String;)V
    .annotation build Lcom/tapjoy/internal/fw;
    .end annotation
.end method

.method private static native onSpendCurrencyResponseNative(JLjava/lang/String;I)V
    .annotation build Lcom/tapjoy/internal/fw;
    .end annotation
.end method


# virtual methods
.method public onSpendCurrencyResponse(Ljava/lang/String;I)V
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->onSpendCurrencyResponseNative(JLjava/lang/String;I)V

    return-void
.end method

.method public onSpendCurrencyResponseFailure(Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJSpendCurrencyListenerNative;->onSpendCurrencyResponseFailureNative(JLjava/lang/String;)V

    return-void
.end method
