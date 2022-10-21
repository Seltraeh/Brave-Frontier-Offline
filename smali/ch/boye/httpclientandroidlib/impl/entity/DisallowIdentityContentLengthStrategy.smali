.class public Lch/boye/httpclientandroidlib/impl/entity/DisallowIdentityContentLengthStrategy;
.super Ljava/lang/Object;
.source "DisallowIdentityContentLengthStrategy.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final contentLengthStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/entity/DisallowIdentityContentLengthStrategy;->contentLengthStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    return-void
.end method


# virtual methods
.method public determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/entity/DisallowIdentityContentLengthStrategy;->contentLengthStrategy:Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;->determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-wide v0

    .line 55
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/ProtocolException;

    const-string v0, "Identity transfer encoding cannot be used"

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
