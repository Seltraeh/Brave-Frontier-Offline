.class public Lch/boye/httpclientandroidlib/client/cache/InputLimit;
.super Ljava/lang/Object;
.source "InputLimit.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private reached:Z

.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->value:J

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->value:J

    return-wide v0
.end method

.method public isReached()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    return v0
.end method

.method public reached()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->reached:Z

    return-void
.end method
