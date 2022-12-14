.class Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;
.super Ljava/lang/ref/PhantomReference;
.source "ResourceReference.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final resource:Lch/boye/httpclientandroidlib/client/cache/Resource;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 43
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resource may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;
    .locals 1

    .line 50
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResourceReference;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
