.class Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;
.super Ljava/lang/Object;
.source "BasicHttpCache.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

.field final synthetic val$entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

.field final synthetic val$req:Lch/boye/httpclientandroidlib/HttpRequest;

.field final synthetic val$variantURI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->val$req:Lch/boye/httpclientandroidlib/HttpRequest;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->val$entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->val$variantURI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->val$req:Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->val$entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->access$000(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;)Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    move-result-object v2

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->val$req:Lch/boye/httpclientandroidlib/HttpRequest;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->val$entry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {v2, v4, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;->val$variantURI:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->doGetUpdatedParentEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object p1

    return-object p1
.end method
