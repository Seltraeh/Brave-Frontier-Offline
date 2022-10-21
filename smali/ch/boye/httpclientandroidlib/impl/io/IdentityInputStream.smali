.class public Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private closed:Z

.field private final in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session input buffer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v1, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 97
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result p1

    return p1
.end method
