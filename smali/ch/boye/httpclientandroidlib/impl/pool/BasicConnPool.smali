.class public Lch/boye/httpclientandroidlib/impl/pool/BasicConnPool;
.super Lch/boye/httpclientandroidlib/pool/AbstractConnPool;
.source "BasicConnPool.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/pool/AbstractConnPool<",
        "Lch/boye/httpclientandroidlib/HttpHost;",
        "Lch/boye/httpclientandroidlib/HttpClientConnection;",
        "Lch/boye/httpclientandroidlib/impl/pool/BasicPoolEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/pool/BasicConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2

    .line 70
    new-instance v0, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/pool/BasicConnFactory;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    const/4 p1, 0x2

    const/16 v1, 0x14

    invoke-direct {p0, v0, p1, v1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;-><init>(Lch/boye/httpclientandroidlib/pool/ConnFactory;II)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/pool/ConnFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/pool/ConnFactory<",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/16 v1, 0x14

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/pool/AbstractConnPool;-><init>(Lch/boye/httpclientandroidlib/pool/ConnFactory;II)V

    return-void
.end method


# virtual methods
.method protected createEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpClientConnection;)Lch/boye/httpclientandroidlib/impl/pool/BasicPoolEntry;
    .locals 3

    .line 77
    new-instance v0, Lch/boye/httpclientandroidlib/impl/pool/BasicPoolEntry;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/pool/BasicConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/pool/BasicPoolEntry;-><init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpClientConnection;)V

    return-object v0
.end method

.method protected bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/pool/PoolEntry;
    .locals 0

    .line 60
    check-cast p1, Lch/boye/httpclientandroidlib/HttpHost;

    check-cast p2, Lch/boye/httpclientandroidlib/HttpClientConnection;

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/pool/BasicConnPool;->createEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpClientConnection;)Lch/boye/httpclientandroidlib/impl/pool/BasicPoolEntry;

    move-result-object p1

    return-object p1
.end method
