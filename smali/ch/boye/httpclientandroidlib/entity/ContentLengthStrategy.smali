.class public interface abstract Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;
.super Ljava/lang/Object;
.source "ContentLengthStrategy.java"


# static fields
.field public static final CHUNKED:I = -0x2

.field public static final IDENTITY:I = -0x1


# virtual methods
.method public abstract determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation
.end method
