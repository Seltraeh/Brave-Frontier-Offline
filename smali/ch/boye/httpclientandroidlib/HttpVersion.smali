.class public final Lch/boye/httpclientandroidlib/HttpVersion;
.super Lch/boye/httpclientandroidlib/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion;

.field public static final HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

.field public static final HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

.field private static final serialVersionUID:J = -0x514703574c384bf0L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V

    sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion;

    .line 60
    new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V

    sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    .line 63
    new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-direct {v0, v2, v2}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V

    sput-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const-string v0, "HTTP"

    .line 75
    invoke-direct {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public forVersion(II)Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1

    .line 90
    iget v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->major:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lch/boye/httpclientandroidlib/ProtocolVersion;->minor:I

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    .line 96
    sget-object p1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    return-object p1

    :cond_1
    if-ne p2, v0, :cond_2

    .line 99
    sget-object p1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    .line 103
    sget-object p1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_0_9:Lch/boye/httpclientandroidlib/HttpVersion;

    return-object p1

    .line 107
    :cond_3
    new-instance v0, Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/HttpVersion;-><init>(II)V

    return-object v0
.end method
